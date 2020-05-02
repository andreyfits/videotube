<?php


class VideoProcessor
{
	private $con;
	private $sizeLimit = 500000000;
	private $allowedTypes = array("mp4", "flv", "webm", "mkv", "vob", "ogv", "ogg", "avi", "wmv", "mov", "mpeg", "mpg");

	// *** UNCOMMENT ONE OF THESE DEPENDING ON YOUR COMPUTER ***
	//private $ffmpegPath = "ffmpeg/mac/ffmpeg"; // *** MAC (UNCOMMENT CODE IN CONSTRUCTOR) ***
	//private $ffmpegPath = "ffmpeg/linux/ffmpeg"; // *** LINUX (UNCOMMENT CODE IN CONSTRUCTOR) ***
	private $ffmpegPath; //  *** WINDOWS (UNCOMMENT CODE IN CONSTRUCTOR) ***

	// *** ALSO UNCOMMENT ONE OF THESE DEPENDING ON YOUR COMPUTER ***
	//private $ffprobePath = "ffmpeg/mac/ffprobe"; // *** MAC (UNCOMMENT CODE IN CONSTRUCTOR) ***
	//private $ffprobePath = "ffmpeg/linux/ffprobe"; // *** LINUX (UNCOMMENT CODE IN CONSTRUCTOR) ***
	private $ffprobePath; //  *** WINDOWS (UNCOMMENT CODE IN CONSTRUCTOR) ***

	public function __construct($con)
	{
		$this->con = $con;

		// *** UNCOMMENT IF USING MAC ***
		//$this->ffmpegPath = realpath("ffmpeg/mac/ffmpeg");
		//$this->ffprobePath = realpath("ffmpeg/mac/ffprobe");

		// *** UNCOMMENT IF USING LINUX ***
		//$this->ffmpegPath = realpath("ffmpeg/linux/ffmpeg");
		//$this->ffprobePath = realpath("ffmpeg/linux/ffprobe");

		// *** UNCOMMENT IF USING WINDOWS ***
		$this->ffmpegPath = realpath("ffmpeg/windows/ffmpeg.exe");
		$this->ffprobePath = realpath("ffmpeg/windows/ffprobe.exe");
	}

	public function upload($videoUploadData)
	{
		$targetDir = "uploads/videos/";
		$videoData = $videoUploadData->videoDataArray;

		$tempFilePath = $targetDir . uniqid() . basename($videoData["name"]);
		//upload/videos/5ead4de6c92dedog_playing.flv

		$tempFilePath = str_replace(" ", "", $tempFilePath);

		$isValidData = $this->processData($videoData, $tempFilePath);

		if (!$isValidData) {
			return false;
		}

		if (move_uploaded_file($videoData["tmp_name"], $tempFilePath)) {

			$finalFilePath = $targetDir . uniqid() . ".mp4";

			if (!$this->insertVideoData($videoUploadData, $finalFilePath)) {
				echo "Insert query failed";
				return false;
			}

			if (!$this->convertVideoToMp4($tempFilePath, $finalFilePath)) {
				echo "Upload failed\n";
				return false;
			}
		}
	}

	private function processData($videoData, $filePath)
	{
		$videoType = pathinfo($filePath, PATHINFO_EXTENSION);

		if (!$this->isValidSize($videoData)) {
			echo "File too large. Can't be more than " . $this->sizeLimit . " bytes";
			return false;
		} elseif (!$this->isValidType($videoType)) {
			echo "Invalid file type";
			return false;
		} elseif ($this->hasError($videoData)) {
			echo "Error code: " . $videoData["error"];
			return false;
		}

		return true;
	}

	private function isValidSize($data)
	{
		return $data["size"] <= $this->sizeLimit;
	}

	private function isValidType($type)
	{
		$lowercased = strtolower($type);
		return in_array($lowercased, $this->allowedTypes);
	}

	private function hasError($data)
	{
		return $data["error"] != 0;
	}

	private function insertVideoData($uploadData, $filePath)
	{
		$query = $this->con->prepare("INSERT INTO videos(title, uploadedBy, description, privacy, category, filePath)
										VALUES(:title, :uploadedBy, :description, :privacy, :category, :filePath)");

		$query->bindParam(":title", $uploadData->title);
		$query->bindParam(":uploadedBy", $uploadData->uploadedBy);
		$query->bindParam(":description", $uploadData->description);
		$query->bindParam(":privacy", $uploadData->privacy);
		$query->bindParam(":category", $uploadData->category);
		$query->bindParam(":filePath", $filePath);

		return $query->execute();
	}

	public function convertVideoToMp4($tempFilePath, $finalFilePath)
	{
		$cmd = "$this->ffmpegPath -i $tempFilePath $finalFilePath 2>&1";

		$outputLog = array();
		exec($cmd, $outputLog, $returnCode);

		if ($returnCode != 0) {
			//Command failed
			foreach ($outputLog as $line) {
				echo $line . "<br>";
			}
			return false;
		}

		return true;
	}
}