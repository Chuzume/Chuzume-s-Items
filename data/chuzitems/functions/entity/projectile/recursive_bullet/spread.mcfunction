#> chuzitems:entity/projectile/recursive_bullet/spread
#
# 
#
# @within function
#   chuzitems:entity/projectile/recursive_bullet/init

# 返り値のEntity
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 処理の実行
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function forward_spreader:api/circle

# 実行者
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]