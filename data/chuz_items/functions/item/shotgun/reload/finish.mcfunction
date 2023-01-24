
# アイテム取得
    loot replace entity @s weapon.mainhand loot chuz_items:item/shotgun

# ルールが弾使うモードなら弾を減らす 消せた弾のぶんだけ$Ammoに代入
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 1 store result score $Ammo Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Shotshell}} 2
        
# ルールが弾使うモードじゃないなら常に2を代入
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 0 run scoreboard players set $Ammo Chuz.Temporary 2
        
# リセット
    scoreboard players reset @s Chuz.Temporary

# 置き換え
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    execute store result storage chuz:context Item.Mainhand.tag.ChuzData.Ammo int 1 run scoreboard players get $Ammo Chuz.Temporary
    loot replace block 100001 0 100000 container.0 loot chuz_items:set_ammo
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick

# 演出
    execute at @s anchored eyes run particle crit ^-0.5 ^ ^0.5 0 0 0 0.2 5
    execute at @s run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 0.8 1
    execute at @s run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 0.6 1.1
    execute at @s run playsound minecraft:block.piston.contract player @a ~ ~ ~ 0.8 2

# リセット
    title @s[tag=!ChuzItems.ReloadSuccess] actionbar {"text":""}
    tag @s remove ChuzItems.ReloadFailed
    tag @s remove ChuzItems.ReloadSuccess
    scoreboard players reset @s ChuzItems.Reload

# 更新
    execute in overworld run function chuz_items:item/replaceitem