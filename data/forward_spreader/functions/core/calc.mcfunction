#> forward_spreader:core/calc
#
# 回転行列で実行方向へ座標を補正します
#
# @within function forward_spreader:core/

#> ForwardSpreader
# @private
    #declare score_holder $Temp

# Y` = Y * cos(pitch) - Z * sin(pitch)
    scoreboard players operation $Y ForwardSpreader = $VecY ForwardSpreader
    scoreboard players operation $Y ForwardSpreader *= $PitchCos ForwardSpreader
    scoreboard players operation $Temp ForwardSpreader = $VecZ ForwardSpreader
    scoreboard players operation $Temp ForwardSpreader *= $PitchSin ForwardSpreader
    scoreboard players operation $Y ForwardSpreader -= $Temp ForwardSpreader
# Z` = Y * sin(pitch) + Z * cos(pitch)
    scoreboard players operation $Z ForwardSpreader = $VecY ForwardSpreader
    scoreboard players operation $Z ForwardSpreader *= $PitchSin ForwardSpreader
    scoreboard players operation $Temp ForwardSpreader = $VecZ ForwardSpreader
    scoreboard players operation $Temp ForwardSpreader *= $PitchCos ForwardSpreader
    scoreboard players operation $Z ForwardSpreader += $Temp ForwardSpreader
    scoreboard players operation $Z ForwardSpreader /= $10000 ForwardSpreader
# X` = X * cos(yaw) + Z` * sin(yaw)
    scoreboard players operation $X ForwardSpreader = $VecX ForwardSpreader
    scoreboard players operation $X ForwardSpreader *= $YawCos ForwardSpreader
    scoreboard players operation $Temp ForwardSpreader = $Z ForwardSpreader
    scoreboard players operation $Temp ForwardSpreader *= $YawSin ForwardSpreader
    scoreboard players operation $X ForwardSpreader += $Temp ForwardSpreader
# Z` = Z` * cos(yaw) - X * sin(yaw)
    scoreboard players operation $Z ForwardSpreader *= $YawCos ForwardSpreader
    scoreboard players operation $Temp ForwardSpreader = $VecX ForwardSpreader
    scoreboard players operation $Temp ForwardSpreader *= $YawSin ForwardSpreader
    scoreboard players operation $Z ForwardSpreader -= $Temp ForwardSpreader
# 係数が乗算で膨れ上がってるので除算
    scoreboard players operation $X ForwardSpreader /= $10000 ForwardSpreader
    scoreboard players operation $Y ForwardSpreader /= $10000 ForwardSpreader
    scoreboard players operation $Z ForwardSpreader /= $10000 ForwardSpreader
# リセット
    scoreboard players reset $Temp ForwardSpreader
    scoreboard players reset $CircleRandomizerMode ForwardSpreader
    scoreboard players reset $Distance ForwardSpreader
    scoreboard players reset $Diameter ForwardSpreader
    scoreboard players reset $YawSin ForwardSpreader
    scoreboard players reset $YawCos ForwardSpreader
    scoreboard players reset $PitchSin ForwardSpreader
    scoreboard players reset $PitchCos ForwardSpreader
    scoreboard players reset $Radius ForwardSpreader
    scoreboard players reset $Radius^2 ForwardSpreader
    scoreboard players reset $VecX ForwardSpreader
    scoreboard players reset $VecY ForwardSpreader
    scoreboard players reset $VecZ ForwardSpreader