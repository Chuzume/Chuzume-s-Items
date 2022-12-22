#> forward_spreader:core/random/init
#
# 疑似乱数生成処理を初期化します
#
# @within function forward_spreader:core/load

#> generate seed temporary entity
# @private
#declare tag Random

# 初期化フラグ
    data modify storage forward_spreader: RNGInit set value true
# ランダムシード取得用Entityを召喚
    summon marker ~ ~ ~ {Tags:["Random"]}
# 負荷軽減用にstorageに入れる
    data modify storage forward_spreader: UUID set from entity @e[type=marker,tag=Random,limit=1]
# シードとして代入
    execute store result score $Random.Base ForwardSpreader run data get entity @e[tag=Random,limit=1] UUID[1]
    execute store result score $Random.Carry ForwardSpreader run data get entity @e[tag=Random,limit=1] UUID[3]
# リセット
    data remove storage forward_spreader: UUID
    kill @e[type=marker,tag=Random,limit=1]