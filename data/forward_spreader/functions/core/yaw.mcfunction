#> forward_spreader:core/yaw
#
# 実行方向のyawからsin/cosを取得します
#
# @within function forward_spreader:core/

# 汎用Entityを原点にTP
    execute in overworld run tp 0-0-0-0-a 0.0 0.0 0.0 0.0 0.0
# yawを代入しベクトルをnormalize
    execute store result entity 0-0-0-0-a Rotation[0] float 1 run data get storage forward_spreader: Rotation[0]
    execute as 0-0-0-0-a at @s run tp @s ^ ^ ^1
# yawのsin/cosを取得
    data modify storage forward_spreader: Pos set from entity 0-0-0-0-a Pos
    execute store result score $YawSin ForwardSpreader run data get storage forward_spreader: Pos[0] 10000
    execute store result score $YawCos ForwardSpreader run data get storage forward_spreader: Pos[2] 10000
# リセット
    data remove storage forward_spreader: Pos