#> chuzitems:item/wingman/mainhand/standby/
#
# 
#
# @within function chuzitems:player/macro/mainhand

# 見た目
    # 通常時
        execute if entity @s run scoreboard players set $CMD Chuz.Temporary 22
    # 反動(腰だめ)
        execute if entity @s[tag=!ChuzItems.Shot.ADS] if score @s ChuzItems.CoolTime matches 3..7 run scoreboard players set $CMD Chuz.Temporary 23
    # ADS
        execute if entity @s[tag=!ChuzItems.Shot.Normal,scores={ChuzItems.Sneak=1..}] run scoreboard players set $CMD Chuz.Temporary 24
    # 反動(ADS)
       execute if entity @s[tag=!ChuzItems.Shot.Normal] if score @s ChuzItems.CoolTime matches 3..7 run scoreboard players set $CMD Chuz.Temporary 25

# アイテムの情報を更新
    execute in overworld run function chuzitems:item/replaceitem

# 発砲
    # 残弾0ならリロード開始
        execute if entity @s[scores={ChuzItems.Crossbow=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:common/reload/check_have_ammo
    # 腰だめ
        execute unless score @s[scores={ChuzItems.Crossbow=0..}] ChuzItems.CoolTime matches 0.. unless score @s ChuzItems.Sneak matches 1.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run tag @s add ChuzItems.Shot.Normal
    # ADS
        execute unless score @s[scores={ChuzItems.Crossbow=0..,ChuzItems.Sneak=1..}] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run tag @s add ChuzItems.Shot.ADS
    # 弾丸を発射
        execute unless score @s[scores={ChuzItems.Crossbow=0..}] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes run function chuzitems:item/wingman/mainhand/standby/shot/

# ADS
    #構える
        execute if score @s ChuzItems.Charge matches 1 run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
    #戻す
        execute if score @s ChuzItems.Charge matches 1.. unless score @s ChuzItems.Sneak matches 1.. run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5

# リコイルの収まりが戻っていく
    scoreboard players remove @s[scores={ChuzItems.Recoil.Change=1..}] ChuzItems.Recoil.Change 1
    scoreboard players reset @s[scores={ChuzItems.Recoil.Change=0}] ChuzItems.Recoil.Change

