#> chuzitems:item/craftsman_gunblade/offhand/
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

# 再び取得し直てメインハンドとオフハンドを逆に
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]
    data modify storage chuz:context Item.Offhand merge value {Slot:0b}
    data modify block 100001 0 100000 Items set value []

# 置き換え
    execute store result storage chuz:context Item.Offhand.tag.ChuzData.Ammo int 1 run scoreboard players get $Ammo Chuz.Temporary
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Offhand
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    loot replace entity @s weapon.offhand 1 mine 100001 0 100000 debug_stick

# 左手が素手だった場合の処理    
    execute unless data storage chuz:context Item.Mainhand run item replace entity @s weapon.offhand with air

# リセット
    tag @s remove ChuzItems.Steping