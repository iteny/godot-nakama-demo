extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ServerConnection.save_email("iteny@gmail.com")
	var email = ServerConnection.get_last_email()
	print(email)
	# 创建UI系统
	var ui = UICanvas.new()
	add_child(ui)
	# 添加主菜单
	var main_menu = preload("res://src/ui/MainMenu.tscn").instantiate()
	ui.add_ui(main_menu)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
## 创建UI系统
#var ui = UICanvas.new()
#add_child(ui)
#
## 添加主菜单
#var main_menu = preload("res://ui/main_menu.tscn").instantiate()
#ui.add_ui(main_menu)

# 显示设置弹窗
#func _on_settings_pressed():
	#var settings = preload("res://ui/settings.tscn")
	#ui.switch_ui(settings, UICanvas.UI_LAYER.POPUP, UICanvas.TRANSITION_TYPE.FADE)
#
## 显示提示
#func _on_item_collected():
	#ui.show_toast("金币+10!", 1.5)
#
## 返回主菜单
#func _on_back_pressed():
	#ui.back(UICanvas.TRANSITION_TYPE.SLIDE_RIGHT)
