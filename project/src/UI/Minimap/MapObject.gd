# A proxy object that holds a sprite representation of itself and moves in the 
# minimap world using a remote transform that ties it to the original.
extends Node2D

var acting_remote_transform: RemoteTransform2D

onready var sprite: Sprite = $Sprite


func setup(remote_transform: RemoteTransform2D, icon: MapIcon) -> void:
	acting_remote_transform = remote_transform
	remote_transform.remote_path = get_path()
	sprite.texture = icon.texture
	sprite.modulate = icon.color
	sprite.scale = Vector2(icon.scale, icon.scale)


func clear() -> void:
	acting_remote_transform.remote_path = ""
