#> chuzitems:item/craftsman_scoped_rifle/mainhand/standby/
#
# メインハンドに入れている際の処理
#
# @within function chuzitems:player/macro/mainhand

# スニークでチャージ
    scoreboard players add @s[scores={ChuzItems.Sneak=0..}] ChuzItems.Charge 1 

# チャージ
    execute if entity @s[scores={ChuzItems.Charge=5}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1
    execute if entity @s[scores={ChuzItems.Charge=5}] run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={ChuzItems.Charge=10}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute if entity @s[scores={ChuzItems.Charge=10}] run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={ChuzItems.Charge=13}] run playsound minecraft:item.crossbow.loading_end player @s ~ ~ ~ 2 1.5
    execute if entity @s[scores={ChuzItems.Charge=30}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute if entity @s[scores={ChuzItems.Charge=30}] run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1.5

## 発砲
    # チャージ0
        execute unless score @s[scores={ChuzItems.Charge=13..29}] ChuzItems.Sneak matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/craftsman_scoped_rifle/mainhand/standby/shot/charge0/
    # チャージ1
        execute unless score @s[scores={ChuzItems.Charge=30..}] ChuzItems.Sneak matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/craftsman_scoped_rifle/mainhand/standby/shot/charge1/
    # 残弾0なら失敗
        execute unless score @s[scores={ChuzItems.Charge=13..}] ChuzItems.Sneak matches 0.. if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/craftsman_scoped_rifle/mainhand/standby/shot/no_ammo

# 残弾0でリロードをする
    execute unless score @s ChuzItems.Sneak matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:4} run scoreboard players add @s ChuzItems.Ready 1

# 弾がマックスになったらおしまい
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:4} run scoreboard players reset @s ChuzItems.Ready 

# リロード準備が整ったら弾を込めだす
    execute if score @s ChuzItems.Ready matches 30.. run function chuzitems:item/craftsman_scoped_rifle/mainhand/standby/reloading

# チャージ値リセット
    execute unless score @s ChuzItems.Sneak matches 1.. run scoreboard players reset @s ChuzItems.Charge
    execute if score @s ChuzItems.Sneak matches 1.. run scoreboard players reset @s ChuzItems.Ready
    execute if score @s ChuzItems.Sneak matches 1.. run scoreboard players reset @s ChuzItems.Reload

# ズームタグリセット
    tag @s[tag=Chuz.UsingSpyglass] remove Chuz.UsingSpyglass

# アイテム情報更新
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function chuzitems:item/replaceitem