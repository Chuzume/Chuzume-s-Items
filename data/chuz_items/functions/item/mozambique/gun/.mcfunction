#> chuz_items:item/mozambique/gun/
#
# 銃モード時の処理
#
# @within function chuz_items:item/mozambique/main

# 発砲
    # 腰だめ
        execute unless score @s[scores={ChuzItems.Crossbow=0..},predicate=!chuz_items:sneak] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes run function chuz_items:item/mozambique/gun/shot/
    # ADS
        execute unless score @s[scores={ChuzItems.Crossbow=0..},predicate=chuz_items:sneak] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes run function chuz_items:item/mozambique/gun/shot/ads

# クールタイム処理
    scoreboard players remove @s[scores={ChuzItems.CoolTime=1..}] ChuzItems.CoolTime 1

# ADS
    #構える
        execute if predicate chuz_items:sneak run scoreboard players add @s ChuzItems.Charge 1
        execute if score @s ChuzItems.Charge matches 1 run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
    #戻す
        execute if score @s ChuzItems.Charge matches 1.. unless predicate chuz_items:sneak run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
        execute if score @s ChuzItems.Charge matches 1.. unless predicate chuz_items:sneak run scoreboard players reset @s ChuzItems.Charge

# 見た目
    # 通常時
        execute if entity @s run scoreboard players set $CMD Chuz.Temporary 12
    # 反動(腰だめ)
        execute if entity @s[tag=!ChuzItems.Shot.ADS] if score @s ChuzItems.CoolTime matches 3..7 run scoreboard players set $CMD Chuz.Temporary 13
    # ADS
        execute if entity @s[tag=!ChuzItems.Shot.Normal] if predicate chuz_items:sneak run scoreboard players set $CMD Chuz.Temporary 14
    # 反動(ADS)
       execute if entity @s[tag=!ChuzItems.Shot.Normal] if score @s ChuzItems.CoolTime matches 3..7 run scoreboard players set $CMD Chuz.Temporary 15
   
# リセット
    execute if score @s ChuzItems.CoolTime matches 0 run function chuz_items:item/mozambique/gun/reset

# 更新
    function chuz_items:item/replaceitem

# 残弾0ならリロード開始
    execute if entity @s[scores={ChuzItems.Crossbow=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuz_items:item/mozambique/reload/start
