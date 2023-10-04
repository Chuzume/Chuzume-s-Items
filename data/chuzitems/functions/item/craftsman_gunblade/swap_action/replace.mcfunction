#> chuzitems:item/craftsman_gunblade/swap_action/replace
#
# 
#
# @within function chuzitems:item/craftsman_gunblade/swap_action/

# 再び取得し直てメインハンドとオフハンドを逆に
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]
    data modify storage chuz:context Item.Offhand merge value {Slot:0b}
    data modify block 100001 -64 100000 Items set value []

# 置き換え
    execute store result storage chuz:context Item.Offhand.tag.ChuzData.Ammo int 1 run scoreboard players get $Ammo Chuz.Temporary
    data modify block 100001 -64 100000 Items append from storage chuz:context Item.Offhand
    loot replace entity @s weapon.mainhand 1 mine 100001 -64 100000 debug_stick
    data modify block 100001 -64 100000 Items append from storage chuz:context Item.Mainhand
    loot replace entity @s weapon.offhand 1 mine 100001 -64 100000 debug_stick

# 左手が素手だった場合の処理    
    execute unless data storage chuz:context Item.Mainhand run item replace entity @s weapon.offhand with air
