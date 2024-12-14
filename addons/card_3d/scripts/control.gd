extends Control
@onready var panel: Panel = $BGPanel
@onready var texture_rect: TextureRect = $CardTextureRect

func _ready() -> void:
	visible = false
	
func _on_button_pressed() -> void:
	visible = false

func _on_card_inspected(status: bool, card: Variant) -> void:
	visible = status
		
	var c: Card3D = card as Card3D
	
	var _meshtocopy_material: StandardMaterial3D = c.card_front_mesh.get_surface_override_material(0)
	texture_rect.texture = _meshtocopy_material.albedo_texture
