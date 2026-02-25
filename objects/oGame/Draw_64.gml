/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 6219C7E5
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "text" "player_score"
draw_text_transformed(10, 10, string("Score: ") + string(player_score), 2, 2, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 0F395B37
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" ""High: ""
/// @DnDArgument : "text" "global.high_score"
draw_text_transformed(10, 40, string("High: ") + string(global.high_score), 2, 2, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35313D7D
/// @DnDArgument : "var" "global.high_score"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "50"
if(global.high_score >= 50)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 31E798E9
	/// @DnDParent : 35313D7D
	/// @DnDArgument : "x" "10"
	/// @DnDArgument : "y" "70"
	/// @DnDArgument : "xscale" "4"
	/// @DnDArgument : "yscale" "4"
	/// @DnDArgument : "caption" ""You Won!""
	draw_text_transformed(10, 70, string("You Won!") + "", 4, 4, 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2114D4A0
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 0DEB1A2E
	/// @DnDParent : 2114D4A0
	/// @DnDArgument : "x" "10"
	/// @DnDArgument : "y" "70"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "caption" ""Get to 50 to win!""
	draw_text_transformed(10, 70, string("Get to 50 to win!") + "", 2, 2, 0);
}