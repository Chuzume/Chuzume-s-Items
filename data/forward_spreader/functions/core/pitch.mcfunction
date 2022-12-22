#> forward_spreader:core/pitch
#
# 実行方向のpitchからsin/cosを取得します
#
# @within function forward_spreader:core/

# 汎用Entityを原点にTP
    execute in overworld run tp 0-0-0-0-a 0.0 0.0 0.0 0.0 0.0
# pitchを代入しベクトルをnormalize
    execute store result entity 0-0-0-0-a Rotation[0] float 1 run data get storage forward_spreader: Rotation[1]
    execute as 0-0-0-0-a at @s run tp @s ^ ^ ^1
# pitchのsin/cosを取得
    data modify storage forward_spreader: Pos set from entity 0-0-0-0-a Pos
    execute store result score $PitchSin ForwardSpreader run data get storage forward_spreader: Pos[0] -10000
    execute store result score $PitchCos ForwardSpreader run data get storage forward_spreader: Pos[2] 10000
# リセット
    data remove storage forward_spreader: Pos