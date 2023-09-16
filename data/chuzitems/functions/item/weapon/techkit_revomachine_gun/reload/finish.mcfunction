#> chuzitems:item/weapon/techkit_revomachine_gun/reload/finish
#
# 
#
# @within function chuzitems:item/weapon/techkit_revomachine_gun/reload/reloading

# アイテムを渡す
    loot replace entity @s weapon.mainhand loot chuzitems:item/techkit_revomachine_gun/

# 演出
    playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 2
    playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 1 2
    execute anchored eyes run particle dust_color_transition 0 0.75 1 1 0.3 1 1 ^-0.5 ^-0.3 ^1.0 0 0.2 0 0 10 normal @s
    execute anchored eyes run particle dust_color_transition 0 0.75 1 1 0.3 1 1 ^-0.5 ^-0.3 ^0.8 0 0.2 0 0 10 normal @s
    execute anchored eyes run particle dust_color_transition 0 0.75 1 1 0.3 1 1 ^-0.5 ^-0.3 ^0.6 0 0.2 0 0 10 normal @s
    execute anchored eyes run particle dust_color_transition 0 0.75 1 1 0.3 1 1 ^-0.5 ^-0.3 ^0.4 0 0.2 0 0 10 normal @s
    execute anchored eyes run particle dust_color_transition 0 0.75 1 1 0.3 1 1 ^-0.5 ^-0.3 ^0.2 0 0.2 0 0 10 normal @s
    execute anchored eyes run particle dust_color_transition 0 0.75 1 1 0.3 1 1 ^-0.5 ^-0.3 ^0.0 0 0.2 0 0 10 normal @s

# スコアリセット
    scoreboard players reset @s ChuzItems.Reload
    scoreboard players reset @s ChuzItems.BurstCount
    scoreboard players reset @s ChuzItems.BurstRate

# マガジン式リロード
    # 弾薬を使う
        execute if score $Gamerule.AmmoRequire Chuz.Rule matches 1 run function chuzitems:common/reload/magazine/
    # 弾薬を使わない
        execute if score $Gamerule.AmmoRequire Chuz.Rule matches 0 run function chuzitems:common/reload/magazine/no_ammo_need