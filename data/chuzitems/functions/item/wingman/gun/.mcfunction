#> chuzitems:item/wingman/gun/
#
# 銃モード時の処理
#
# @within function chuzitems:item/wingman/main



# 発砲
    # 残弾0ならリロード開始
        execute if entity @s[scores={ChuzItems.Crossbow=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:common/reload/check_have_ammo
    # 腰だめ
        execute unless score @s[scores={ChuzItems.Crossbow=0..},predicate=!chuzitems:sneak] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/wingman/gun/shot/
    # ADS
        execute unless score @s[scores={ChuzItems.Crossbow=0..},predicate=chuzitems:sneak] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/wingman/gun/shot/ads

# ADS
    #構える
        execute if predicate chuzitems:sneak run scoreboard players add @s ChuzItems.Charge 1
        execute if score @s ChuzItems.Charge matches 1 run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
    #戻す
        execute if score @s ChuzItems.Charge matches 1.. unless predicate chuzitems:sneak run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
        execute if score @s ChuzItems.Charge matches 1.. unless predicate chuzitems:sneak run scoreboard players reset @s ChuzItems.Charge

# 精度が落ち着いていく
    #execute unless score @s ChuzItems.Spread matches ..1 run scoreboard players remove @s ChuzItems.Spread 1
    #scoreboard players reset @s[scores={ChuzItems.Spread=..1}] ChuzItems.Spread

# 見た目
    # 通常時
        execute if entity @s run scoreboard players set $CMD Chuz.Temporary 22
    # 反動(腰だめ)
        execute if entity @s[tag=!ChuzItems.Shot.ADS] if score @s ChuzItems.CoolTime matches 3..7 run scoreboard players set $CMD Chuz.Temporary 23
    # ADS
        execute if entity @s[tag=!ChuzItems.Shot.Normal] if predicate chuzitems:sneak run scoreboard players set $CMD Chuz.Temporary 24
    # 反動(ADS)
       execute if entity @s[tag=!ChuzItems.Shot.Normal] if score @s ChuzItems.CoolTime matches 3..7 run scoreboard players set $CMD Chuz.Temporary 25

# リコイルの収まりが戻っていく
    scoreboard players remove @s[scores={ChuzItems.Recoil.Change=1..}] ChuzItems.Recoil.Change 1
    scoreboard players reset @s[scores={ChuzItems.Recoil.Change=0}] ChuzItems.Recoil.Change

# 更新
    execute in overworld run function chuzitems:item/replaceitem