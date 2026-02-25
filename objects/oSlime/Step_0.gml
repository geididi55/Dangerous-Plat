/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 582C376E
/// @DnDArgument : "var" "player_count"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "oPlayer"
/// @DnDSaveInfo : "object" "oPlayer"
var player_count = instance_number(oPlayer);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21C8CA98
/// @DnDArgument : "var" "player_count"
/// @DnDArgument : "not" "1"
if(!(player_count == 0))
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0FD4DE77
	/// @DnDParent : 21C8CA98
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)mp_potential_step(oPlayer.x, oPlayer.y, movement_speed, true)$(13_10)"
	/// @description Execute Code
	mp_potential_step(oPlayer.x, oPlayer.y, movement_speed, true)

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5897B4A4
	/// @DnDParent : 21C8CA98
	/// @DnDArgument : "var" "dist_to_player"
	/// @DnDArgument : "value" "point_distance(x, y, oPlayer.x, oPlayer.y)"
	var dist_to_player = point_distance(x, y, oPlayer.x, oPlayer.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EC632B4
	/// @DnDParent : 21C8CA98
	/// @DnDArgument : "var" "dist_to_player"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(dist_to_player < 5)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 255D6C71
		/// @DnDApplyTo : {oGame}
		/// @DnDParent : 3EC632B4
		/// @DnDArgument : "steps" "60"
		with(oGame) {
		alarm_set(0, 60);
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 00A1B9F1
		/// @DnDApplyTo : {oPlayer}
		/// @DnDParent : 3EC632B4
		with(oPlayer) instance_destroy();
}
}