#> chuzitems:item/mozambique/gun/
#
# 銃モード時の処理
#
# @within function chuzitems:item/mozambique/main

# 発砲
    # 残弾0ならリロード開始
        execute if entity @s[scores={ChuzItems.Crossbow=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:common/reload/check_have_ammo
    # 腰だめ
        execute unless score @s[scores={ChuzItems.Crossbow=0..},predicate=!chuzitems:sneak] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes run function chuzitems:item/mozambique/gun/shot/
    # ADS
        execute unless score @s[scores={ChuzItems.Crossbow=0..},predicate=chuzitems:sneak] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes run function chuzitems:item/mozambique/gun/shot/ads

# ADS
    #構える
        execute if predicate chuzitems:sneak run scoreboard players add @s ChuzItems.Charge 1
        execute if score @s ChuzItems.Charge matches 1 run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
    #戻す
        execute if score @s ChuzItems.Charge matches 1.. unless predicate chuzitems:sneak run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
        execute if score @s ChuzItems.Charge matches 1.. unless predicate chuzitems:sneak run scoreboard players reset @s ChuzItems.Charge

# 見た目
    # 通常時
        execute if entity @s run scoreboard players set $CMD Chuz.Temporary 12
    # 反動(腰だめ)
        execute if entity @s[tag=!ChuzItems.Shot.ADS] if score @s ChuzItems.CoolTime matches 3..7 run scoreboard players set $CMD Chuz.Temporary 13
    # ADS
        execute if entity @s[tag=!ChuzItems.Shot.Normal] if predicate chuzitems:sneak run scoreboard players set $CMD Chuz.Temporary 14
    # 反動(ADS)
       execute if entity @s[tag=!ChuzItems.Shot.Normal] if score @s ChuzItems.CoolTime matches 3..7 run scoreboard players set $CMD Chuz.Temporary 15

# 更新
    execute in overworld run function chuzitems:item/replaceitem