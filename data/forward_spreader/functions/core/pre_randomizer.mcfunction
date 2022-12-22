#> forward_spreader:core/pre_randomizer
#
# ランダム座標生成前に半径等のデータを求めます
#
# @within function forward_spreader:core/

# 半径を求める
    scoreboard players operation $Radius ForwardSpreader = $Diameter ForwardSpreader
    scoreboard players operation $Radius ForwardSpreader /= $2 ForwardSpreader
# 半径の二乗を求める
    scoreboard players operation $Radius^2 ForwardSpreader = $Radius ForwardSpreader
    scoreboard players operation $Radius^2 ForwardSpreader *= $Radius ForwardSpreader