<?php


class VideoDetailsFormProvider
{
	private $con;

	public function __construct($con)
	{
		$this->con = $con;
	}

	public function createUploadForm()
	{
		$fileInput = $this->createFileInput();
		$titleInput = $this->createTitleInput();
		$descriptionInput = $this->createDescriptionInput();
		$categoriesInput = $this->createCategoriesInput();
		$privacyInput = $this->createPrivacyInput();
		return "<form action='processing.php' method='post'> 
					$fileInput
					$titleInput
					$descriptionInput
					$categoriesInput
					$privacyInput
				</form>";
	}

	private function createFileInput()
	{
		return "<div class='form-group'>
					<label for='exampleFormControlFile1'>Your file</label>
					<input type='file' class='form-control-file' id='exampleFormControlFile1' name='fileInput' required>
				</div>";
	}

	private function createTitleInput()
	{
		return "<div class='form-group'>
					<input class='form-control' type='text' placeholder='Title' name='titleInput'>
				</div>";
	}

	private function createDescriptionInput()
	{
		return "<div class='form-group'>
					<textarea class='form-control' placeholder='Description' name='descriptionInput' rows='3'></textarea>
				</div>";
	}

	private function createPrivacyInput()
	{
		return "<div class='form-group'>
					<select class='form-control' name='privacyInput'>
						<option value='0'>Private</option>
						<option value='1'>Public</option>
					</select>
				</div>";
	}

	private function createCategoriesInput()
	{
		$query = $this->con->prepare("SELECT * FROM categories");
		$query->execute();

		while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
			echo $row["name"] . "<br>";
		}
	}
}