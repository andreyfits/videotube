<?php


class VideoProcessor
{
	private $con;
	private $sizeLimit = 500000000;
	private $allowedTypes = array("mp4", "flv", "webm", "mkv", "vob", "ogv", "ogg", "avi", "wmv", "mov", "mpeg", "mpg");

	public function __construct($con)
	{
		$this->con = $con;
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
				echo "Insert query falied";
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

	}
}