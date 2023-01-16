#> chuz_items:item/wingman/gun/
#
# 銃モード時の処理
#
# @within function chuz_items:item/wingman/main

# 発砲
    # 腰だめ
        execute unless score @s[scores={ChuzItems.Crossbow=0..},predicate=!chuz_items:sneak] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuz_items:item/wingman/gun/shot/
    # ADS
        execute unless score @s[scores={ChuzItems.Crossbow=0..},predicate=chuz_items:sneak] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuz_items:item/wingman/gun/shot/ads

# クールタイム処理
    scoreboard players remove @s[scores={ChuzItems.CoolTime=1..}] ChuzItems.CoolTime 1

# ADS
    #構える
        execute if predicate chuz_items:sneak run scoreboard players add @s ChuzItems.Charge 1
        execute if score @s ChuzItems.Charge matches 1 run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
    #戻す
        execute if score @s ChuzItems.Charge matches 1.. unless predicate chuz_items:sneak run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
        execute if score @s ChuzItems.Charge matches 1.. unless predicate chuz_items:sneak run scoreboard players reset @s ChuzItems.Charge

# 精度が落ち着いていく
    execute unless score @s ChuzItems.Spread matches ..1 run scoreboard players remove @s ChuzItems.Spread 1
    scoreboard players reset @s[scores={ChuzItems.Spread=..1}] ChuzItems.Spread

# 見た目
    # 通常時
        execute if entity @s run scoreboard players set $CMD Chuz.Temporary 22
    # 反動(腰だめ)
        execute if entity @s[tag=!ChuzItems.Shot.ADS] if score @s ChuzItems.CoolTime matches 3..7 run scoreboard players set $CMD Chuz.Temporary 23
    # ADS
        execute if entity @s[tag=!ChuzItems.Shot.Normal] if predicate chuz_items:sneak run scoreboard players set $CMD Chuz.Temporary 24
    # 反動(ADS)
       execute if entity @s[tag=!ChuzItems.Shot.Normal] if score @s ChuzItems.CoolTime matches 3..7 run scoreboard players set $CMD Chuz.Temporary 25

# リコイルの収まりが戻っていく
    scoreboard players remove @s[scores={ChuzItems.Recoil.Change=1..}] ChuzItems.Recoil.Change 1
    scoreboard players reset @s[scores={ChuzItems.Recoil.Change=0}] ChuzItems.Recoil.Change

# リセット
    execute if score @s ChuzItems.CoolTime matches 0 run function chuz_items:item/cooltime_end

# 更新
    execute in overworld run function chuz_items:item/replaceitem

# 残弾0ならリロード開始
    execute if entity @s[scores={ChuzItems.Crossbow=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuz_items:item/wingman/reload/start
