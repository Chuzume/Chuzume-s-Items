#> forward_spreader:core/randomizer
#
# ランダム座標生成処理
#
# @within function
#   forward_spreader:core/
#   forward_spreader:core/check_distance

function forward_spreader:core/random/
execute store result score $VecX ForwardSpreader run scoreboard players get $Result ForwardSpreader
scoreboard players operation $VecX ForwardSpreader %= $Diameter ForwardSpreader
scoreboard players operation $VecX ForwardSpreader -= $Radius ForwardSpreader

function forward_spreader:core/random/
execute store result score $VecY ForwardSpreader run scoreboard players get $Result ForwardSpreader
scoreboard players operation $VecY ForwardSpreader %= $Diameter ForwardSpreader
scoreboard players operation $VecY ForwardSpreader -= $Radius ForwardSpreader

execute if score $CircleRandomizerMode ForwardSpreader matches 1 run function forward_spreader:core/check_distance