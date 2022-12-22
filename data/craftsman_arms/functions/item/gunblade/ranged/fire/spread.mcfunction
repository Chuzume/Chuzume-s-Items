    
# 返り値のEntity
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 処理の実行
    execute at @s as @e[type=marker,tag=SpreadMarker,limit=1] run function forward_spreader:api/circle

# 実行者
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^-0.12 ^ ^10 run summon marker ~ ~ ~ {Tags:["Chuz.Spread"]}

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]