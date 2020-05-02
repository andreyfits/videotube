<?php


class VideoProcessor
{
	private $con;

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

		echo $tempFilePath;
	}
}