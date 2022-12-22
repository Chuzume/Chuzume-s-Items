#> forward_spreader:core/randomizer
#
# ランダム座標生成処理
#
# @within function
#   forward_spreader:core/
#   forward_spreader:core/check_distance

execute store result score $VecX ForwardSpreader run function forward_spreader:core/random/
scoreboard players operation $VecX ForwardSpreader %= $Diameter ForwardSpreader
scoreboard players operation $VecX ForwardSpreader -= $Radius ForwardSpreader

execute store result score $VecY ForwardSpreader run function forward_spreader:core/random/
scoreboard players operation $VecY ForwardSpreader %= $Diameter ForwardSpreader
scoreboard players operation $VecY ForwardSpreader -= $Radius ForwardSpreader

execute if score $CircleRandomizerMode ForwardSpreader matches 1 run function forward_spreader:core/check_distance