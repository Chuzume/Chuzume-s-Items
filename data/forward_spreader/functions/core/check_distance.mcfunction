#> forward_spreader:core/check_distance
#
# 点が中心から半径以内に存在するまで繰り返します
#
# @within function forward_spreader:core/randomizer

#> ForwardSpreader
# @private
    #declare score_holder $Temp
    #declare score_holder $Temp2

# while ((x^2+y^2) > r^2) randomizer
    scoreboard players operation $Temp ForwardSpreader = $VecX ForwardSpreader
    scoreboard players operation $Temp ForwardSpreader *= $VecX ForwardSpreader

    scoreboard players operation $Temp2 ForwardSpreader = $VecY ForwardSpreader
    scoreboard players operation $Temp2 ForwardSpreader *= $VecY ForwardSpreader

    scoreboard players operation $Temp ForwardSpreader += $Temp2 ForwardSpreader

    execute if score $Temp ForwardSpreader > $Radius^2 ForwardSpreader run function forward_spreader:core/randomizer
# リセット
    scoreboard players reset $Temp ForwardSpreader
    scoreboard players reset $Temp2 ForwardSpreader