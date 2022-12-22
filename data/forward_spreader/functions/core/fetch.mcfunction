#> forward_spreader:core/fetch
#
# 汎用entityのPosに計算済みの拡散座標を代入します
#
# @within function forward_spreader:core/

#> ForwardSpreader
# @private
    #declare score_holder $PosX
    #declare score_holder $PosY
    #declare score_holder $PosZ

# 汎用EntityのPosを取得
    data modify storage forward_spreader: Pos set from entity @s Pos
    execute store result score $PosX ForwardSpreader run data get storage forward_spreader: Pos[0] 10000
    execute store result score $PosY ForwardSpreader run data get storage forward_spreader: Pos[1] 10000
    execute store result score $PosZ ForwardSpreader run data get storage forward_spreader: Pos[2] 10000
# ベクトルを加算
    scoreboard players operation $PosX ForwardSpreader += $X ForwardSpreader
    scoreboard players operation $PosY ForwardSpreader += $Y ForwardSpreader
    scoreboard players operation $PosZ ForwardSpreader += $Z ForwardSpreader
# 戻す
    execute store result storage forward_spreader: Pos[0] double 0.0001 run scoreboard players get $PosX ForwardSpreader
    execute store result storage forward_spreader: Pos[1] double 0.0001 run scoreboard players get $PosY ForwardSpreader
    execute store result storage forward_spreader: Pos[2] double 0.0001 run scoreboard players get $PosZ ForwardSpreader
    data modify entity @s Pos set from storage forward_spreader: Pos
# リセット
    scoreboard players reset $PosX ForwardSpreader
    scoreboard players reset $PosY ForwardSpreader
    scoreboard players reset $PosZ ForwardSpreader
    data remove storage forward_spreader: Pos