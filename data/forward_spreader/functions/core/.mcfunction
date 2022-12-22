#> forward_spreader:core/
#
# 拡散処理の呼び出し部
#
# @within function forward_spreader:api/*

# 実行座標に汎用EntityをTP
    execute in overworld run tp 0-0-0-0-a 0.0 0.0 0.0 ~ ~
# 必要な実行座標のデータを取得
# N/A => Rotation[], ($Distance, $Diameter)
    execute store result score $Distance ForwardSpreader run data get storage forward_spreader: Distance 10000
    execute store result score $Diameter ForwardSpreader run data get storage forward_spreader: Spread 10000
    data modify storage forward_spreader: Rotation set from entity 0-0-0-0-a Rotation
# オーバーフロー警告
    execute if score $Diameter ForwardSpreader matches 46340.. run tellraw @a [{"text":"ERROR >>","color":"red"},{"text":"Spreadの絶対値が4.6340を上回っています。オーバーフローで正常に動作しない為、値を縮小してください。","color":"white"}]
    execute if score $Diameter ForwardSpreader matches ..-46340 run tellraw @a [{"text":"ERROR >>","color":"red"},{"text":"Spreadの絶対値が4.6340を上回っています。オーバーフローで正常に動作しない為、値を縮小してください。","color":"white"}]
# 実行座標のデータからベクトルを取得する
# Rotation[] => ($YawSin, $YawCos, $PitchSin, $PitchCos)
    function forward_spreader:core/yaw
    function forward_spreader:core/pitch
# 処理の下準備
# ($Distance, $Diameter) => ($Radius, $Radius^2)
    function forward_spreader:core/pre_randomizer
# 拡散範囲に収まるランダムなベクトルを生成する
# ($Diameter, $Radius, $Radius^2, $Distance) => ($VecX, $VecY, $VecZ)
    function forward_spreader:core/randomizer
    scoreboard players operation $VecZ ForwardSpreader = $Distance ForwardSpreader
# 計算
# ($YawSin, $YawCos, $PitchSin, $PitchCos, $VecX, $VecY, $VecX) => ($X, $Y, $Z)
    function forward_spreader:core/calc
# 適用
    function forward_spreader:core/fetch
# リセット
    scoreboard players reset $X ForwardSpreader
    scoreboard players reset $Y ForwardSpreader
    scoreboard players reset $Z ForwardSpreader
    data remove storage forward_spreader: Distance
    data remove storage forward_spreader: Spread
    data remove storage forward_spreader: Rotation