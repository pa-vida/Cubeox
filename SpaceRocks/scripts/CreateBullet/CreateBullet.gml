/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 70200C50
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDInput : 5
/// @DnDArgument : "funcName" "CreateBullet"
/// @DnDArgument : "arg" "creatorID"
/// @DnDArgument : "arg_1" "faction"
/// @DnDArgument : "arg_2" "direction"
/// @DnDArgument : "arg_3" "speed"
/// @DnDArgument : "arg_4" "color"
function CreateBullet(creatorID, faction, direction, speed, color) 
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 368DFC1C
	/// @DnDParent : 70200C50
	/// @DnDArgument : "soundid" "snd_fire"
	/// @DnDSaveInfo : "soundid" "snd_fire"
	audio_play_sound(snd_fire, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 43A96989
	/// @DnDParent : 70200C50
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newBullet"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	var newBullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 244A8400
	/// @DnDInput : 5
	/// @DnDParent : 70200C50
	/// @DnDArgument : "expr" "direction"
	/// @DnDArgument : "expr_1" "faction"
	/// @DnDArgument : "expr_2" "creatorID"
	/// @DnDArgument : "expr_3" "speed"
	/// @DnDArgument : "expr_4" "color"
	/// @DnDArgument : "var" "newBullet.direction "
	/// @DnDArgument : "var_1" "newBullet.faction"
	/// @DnDArgument : "var_2" "newBullet.creator"
	/// @DnDArgument : "var_3" "newBullet.speed"
	/// @DnDArgument : "var_4" "newBullet.image_blend"
	newBullet.direction  = direction;
	newBullet.faction = faction;
	newBullet.creator = creatorID;
	newBullet.speed = speed;
	newBullet.image_blend = color;
}