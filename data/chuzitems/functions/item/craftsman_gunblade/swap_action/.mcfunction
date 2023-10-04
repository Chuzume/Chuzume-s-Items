#> chuzitems:item/craftsman_gunblade/swap_action/
#
# 
#
# @within function chuzitems:player/macro/offhand

# 音
    execute at @s run playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0.7
    execute at @s run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 1.5
    execute at @s run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1

# ストレージ削除
    data remove storage chuz:context Item

# データ取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# 銃から剣に
    execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemMode:ranged} run loot replace entity @s weapon.offhand loot chuzitems:item/craftsman_gunblade/melee
# 剣から銃に
    execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemMode:melee} run loot replace entity @s weapon.offhand loot chuzitems:item/craftsman_gunblade/ranged

# 前回の弾薬を取る
    execute store result score $Ammo Chuz.Temporary run data get storage chuz:context Item.Offhand.tag.ChuzData.Ammo

# 箱周りの処理
    execute in overworld run function chuzitems:item/craftsman_gunblade/swap_action/replace
    
# リセット
    tag @s remove ChuzItems.Steping