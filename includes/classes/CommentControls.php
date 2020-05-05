<?php
require_once("ButtonProvider.php");

class CommentControls
{
	private $con, $comment, $userLoggedInObj;

	public function __construct($con, $comment, $userLoggedInObj)
	{
		$this->con = $con;
		$this->comment = $comment;
		$this->userLoggedInObj = $userLoggedInObj;
	}

	public function create()
	{
		$replyButton = $this->createReplyButton();
		$likesCount = $this->createLikesCount();
		$likeButton = $this->createLikeButton();
		$dislikeButton = $this->createDislikeButton();
		$replySection = $this->createReplySection();

		return "<div class='controls'>
                    $replyButton
                    $likesCount
                    $likeButton
                    $dislikeButton
                </div>
                $replySection";
	}

	private function createReplyButton()
	{
		$text = "REPLY";
		$action = "toggleReply(this)";

		return ButtonProvider::createButton($text, null, $action, null);

	}

	private function createLikesCount()
	{
		$text = $this->comment->getLikes();

		if ($text == 0) $text = "";

		return "<span class='likesCount'>$text</span>";
	}

	private function createLikeButton()
	{
		return "";
	}

	private function createDislikeButton()
	{
		return "";
	}

	private function createReplySection()
	{
		return "";
	}
}