extends Control

var CPF_REGEX : RegEx

func _ready():
	CPF_REGEX = RegEx.new()
	CPF_REGEX.compile("^\\d{3}\\.\\d{3}\\.\\d{3}\\-\\d{2}$")

	$LoginButton.connect("pressed", self, "_on_login_button_pressed")

func _on_login_button_pressed():
	var cpf = $CPFLineEdit.text
	var senha = $SenhaLineEdit.text

	 
	if not CPF_REGEX.search(cpf):
		$ErrorLabel.text = "CPF inválido! Use o formato xxx.xxx.xxx-xx"
		return
	
	 
	if senha == "123456":
	 
		get_tree().change_scene("res://login/scene/MainScene.tscn")
	else:
		 
		$ErrorLabel.text = "CPF ou senha incorretos!"
