#> chuzitems:item/shooting_star_longbow/common/chargeshot/locked/spread
#
# 
#

# 返り値のEntity
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 処理の実行
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function forward_spreader:api/circle

# 実行者
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]