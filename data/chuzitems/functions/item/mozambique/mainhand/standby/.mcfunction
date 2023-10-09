#> chuzitems:item/mozambique/mainhand/standby/
#
# 銃モードのメイン処理
#
# @within function chuzitems:player/macro/mainhand


# 見た目
    # 通常時
        execute if entity @s run scoreboard players set $CMD Chuz.Temporary 12
    # 反動(腰だめ)
        execute if entity @s[tag=!ChuzItems.Shot.ADS] if score @s ChuzItems.CoolTime matches 3..7 run scoreboard players set $CMD Chuz.Temporary 13
    # ADS
        execute if entity @s[tag=!ChuzItems.Shot.Normal,scores={ChuzItems.Sneak=1..}] run scoreboard players set $CMD Chuz.Temporary 14
    # 反動(ADS)
        execute if entity @s[tag=!ChuzItems.Shot.Normal,scores={ChuzItems.Sneak=1..}] if score @s ChuzItems.CoolTime matches 3..7 run scoreboard players set $CMD Chuz.Temporary 15

# アイテムの情報を更新
    execute in overworld run function chuzitems:item/replaceitem

# 発砲
    # 残弾0ならリロード開始
        execute if entity @s[scores={ChuzItems.Crossbow=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:common/reload/check_have_ammo
    # 腰だめ
        execute unless score @s[scores={ChuzItems.Crossbow=0..}] ChuzItems.CoolTime matches 0.. unless score @s ChuzItems.Sneak matches 1.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes run function chuzitems:item/mozambique/mainhand/standby/shot/
    # ADS
        execute unless score @s[scores={ChuzItems.Crossbow=0..,ChuzItems.Sneak=1..}] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes run function chuzitems:item/mozambique/mainhand/standby/shot/ads

# ADS
    #構える
        execute if score @s ChuzItems.Charge matches 1 run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
    #戻す
        execute if score @s ChuzItems.Charge matches 1.. unless score @s ChuzItems.Sneak matches 1.. run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
