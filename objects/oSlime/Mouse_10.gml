/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 4BCD99FB
/// @DnDArgument : "x" "8"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "5"
effect_create_below(5, x + 8, y + 8, 0, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 72AC4354
/// @DnDArgument : "x" "8"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "8"
/// @DnDArgument : "color" "$FF0061FF"
effect_create_below(8, x + 8, y + 8, 0, $FF0061FF & $ffffff);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 616FF57E
/// @DnDArgument : "x" "8"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "7"
/// @DnDArgument : "color" "$FF00F6FF"
effect_create_below(7, x + 8, y + 8, 0, $FF00F6FF & $ffffff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53B23EDE
/// @DnDArgument : "expr" "irandom_range(16, room_width-32)"
/// @DnDArgument : "var" "x"
x = irandom_range(16, room_width-32);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0BC42A40
/// @DnDArgument : "expr" "irandom_range(16, room_height-32)"
/// @DnDArgument : "var" "y"
y = irandom_range(16, room_height-32);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 672396DC
/// @DnDApplyTo : {oGame}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "player_score"
with(oGame) {
player_score += 1;

}