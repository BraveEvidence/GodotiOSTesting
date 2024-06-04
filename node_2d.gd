extends Node2D

@onready var label_3: Label = $Label3

var arithematic = null


func _ready() -> void:
	if Engine.has_singleton("Arithematic"):
		arithematic = Engine.get_singleton("Arithematic")
		arithematic.connect("auth_result",_get_result)
	if not arithematic:
		return
	
	
	
func _get_result(result):
	label_3.text = "LabelThree "+ str(result)



func _on_button_pressed() -> void:
	arithematic.signup()

func _on_button_2_pressed() -> void:
	arithematic.login("test@example.com","testpassword123")
