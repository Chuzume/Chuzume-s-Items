#> chuzitems:item/techkit_revomachine_gun/mainhand/standby/
#
# 
#
# @within function chuzitems:player/macro/mainhand

# 見た目
    # 通常時
        execute if entity @s run scoreboard players set $CMD Chuz.Temporary 9
    # ADS
        execute if entity @s[tag=!ChuzItems.Shot.Normal,scores={ChuzItems.Sneak=1..}] run scoreboard players set $CMD Chuz.Temporary 10

# 更新
    execute in overworld run function chuzitems:item/replaceitem

# ADS
    #構える
        execute if score @s ChuzItems.Charge matches 1 run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
    #戻す
        execute if score @s ChuzItems.Charge matches 1.. unless score @s ChuzItems.Sneak matches 1.. run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5

# 発砲
    # 残弾0ならリロード開始
        execute if entity @s[scores={ChuzItems.Crossbow=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:common/reload/check_have_ammo
    # 腰だめ
        execute unless score @s[scores={ChuzItems.Crossbow=0..}] ChuzItems.CoolTime matches 0.. unless score @s ChuzItems.Sneak matches 1.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/techkit_revomachine_gun/mainhand/standby/shot/normal
    # ADS
        execute unless score @s[scores={ChuzItems.Crossbow=0..,ChuzItems.Sneak=1..}] ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/techkit_revomachine_gun/mainhand/standby/shot/ads
    # 弾の召喚部分
        execute unless score @s[scores={ChuzItems.BurstCount=1..}] ChuzItems.BurstRate matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes run function chuzitems:item/techkit_revomachine_gun/mainhand/standby/shot/
# バースト間隔の処理
    scoreboard players remove @s[scores={ChuzItems.BurstRate=1..}] ChuzItems.BurstRate 1
    # リセット
        scoreboard players reset @s[scores={ChuzItems.BurstRate=..0}] ChuzItems.BurstRate