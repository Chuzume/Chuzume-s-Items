# スニークでチャージ
    scoreboard players add @s[scores={ChuzItems.Sneak=0..}] ChuzItems.Charge 1 

# チャージ
    execute if entity @s[scores={ChuzItems.Charge=10}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1
    execute if entity @s[scores={ChuzItems.Charge=10}] run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={ChuzItems.Charge=10}] run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 
    execute if entity @s[scores={ChuzItems.Charge=10}] anchored eyes run particle smoke ^-0.25 ^-0.2 ^0.7 0 0 0 0.05 10
    execute if entity @s[scores={ChuzItems.Charge=20}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute if entity @s[scores={ChuzItems.Charge=20}] run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={ChuzItems.Charge=20}] anchored eyes run particle lava ^-0.25 ^-0.2 ^0.7 0 0 0 0.05 5

# チャージ値リセット
    execute unless score @s ChuzItems.Sneak matches 1.. run scoreboard players reset @s ChuzItems.Charge

# 発砲(チャージ0)
    execute if entity @s[scores={ChuzItems.Crossbow=0..}] unless score @s ChuzItems.Charge matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/grenade_launcher/fire/normal
    execute if entity @s[scores={ChuzItems.Crossbow=0..}] if score @s ChuzItems.Charge matches ..14 unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/grenade_launcher/fire/normal

# 発砲(チャージ1)
    execute if entity @s[scores={ChuzItems.Crossbow=0..}] if score @s ChuzItems.Charge matches 10..19 unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/grenade_launcher/fire/charge1

# 発砲(チャージ2)
    execute if entity @s[scores={ChuzItems.Crossbow=0..}] if score @s ChuzItems.Charge matches 20.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/grenade_launcher/fire/charge2

# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/grenade_launcher/reload/start

# アイテム情報更新
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function chuzitems:item/replaceitem
