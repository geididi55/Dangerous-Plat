/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23A0EC38
/// @DnDArgument : "var" "player_score"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "global.high_score"
if(player_score > global.high_score)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 34F6548E
	/// @DnDParent : 23A0EC38
	/// @DnDArgument : "value" "player_score"
	/// @DnDArgument : "var" "high_score"
	global.high_score = player_score;
}

/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 1A9E2920
room_restart();