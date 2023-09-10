#> chuzitems:item/craftsman_grenade_launcher/mainhand/standby/shot/spread
#
# 
#
# @within function chuzitems:item/craftsman_grenade_launcher/mainhand/standby/shot/summon
    
# 返り値のEntity
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
# 拡散の設定 // この場合最大10mで1.5m拡散する
    # どれくらい視点から離すか
        data modify storage forward_spreader: Distance set value 10f
    # どれくらい拡散させるか
        data modify storage forward_spreader: Spread set value 1.0f

# 処理の実行
    execute at @s as @e[type=marker,tag=SpreadMarker,limit=1] run function forward_spreader:api/circle
# 実行者
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^-0.12 ^ ^10 run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]