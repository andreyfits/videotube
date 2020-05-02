<?php


class VideoProcessor
{
	private $con;
	private $sizeLimit = 500000000;

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

		echo $tempFilePath;
	}

	private function processData($videoData, $filePath)
	{
		$videoType = pathinfo($filePath, PATHINFO_EXTENSION);

		if (!$this->isValidSize($videoData)) {
			echo "File too large. Can't be more than " . $this->sizeLimit . " bytes";
			return false;
		}
	}

	private function isValidSize($data)
	{
		return $data["size"] <= $this->sizeLimit;
	}
}