#> chuzitems:item/ambassador/mainhand/assault/
#
# 
#
# @within function chuzitems:player/macro/mainhand

# 更新
    execute in overworld run function chuzitems:item/replaceitem
           
# ADS
    #構える
        execute if predicate chuzitems:sneak run scoreboard players add @s ChuzItems.Charge 1
        execute if score @s ChuzItems.Charge matches 1 run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
    #戻す
        execute if score @s ChuzItems.Charge matches 1.. unless predicate chuzitems:sneak run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
        execute if score @s ChuzItems.Charge matches 1.. unless predicate chuzitems:sneak run scoreboard players reset @s ChuzItems.Charge

# 見た目
    # 通常時
        execute if entity @s run scoreboard players set $CMD Chuz.Temporary 34
    # ADS
        execute if entity @s[tag=!ChuzItems.Shot.Normal] if predicate chuzitems:sneak run scoreboard players set $CMD Chuz.Temporary 35

# 発砲
    # 残弾0ならリロード開始
        execute if entity @s[scores={ChuzItems.Crossbow=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:common/reload/check_have_ammo
    # 腰だめ
        execute unless score @s[scores={ChuzItems.Crossbow=0..},predicate=!chuzitems:sneak] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/ambassador/mainhand/assault/shot/normal
    # ADS
        execute unless score @s[scores={ChuzItems.Crossbow=0..},predicate=chuzitems:sneak] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/ambassador/mainhand/assault/shot/ads
    # 弾の召喚部分
        execute unless score @s[scores={ChuzItems.BurstCount=1..}] ChuzItems.BurstRate matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes run function chuzitems:item/ambassador/mainhand/assault/shot/
# バースト間隔の処理
    scoreboard players remove @s[scores={ChuzItems.BurstRate=1..}] ChuzItems.BurstRate 1
    # リセット
        scoreboard players reset @s[scores={ChuzItems.BurstRate=..0}] ChuzItems.BurstRate