
# 現状はオフハンドに入れると戻ってくる
    data remove storage chuz:context Item
    data modify storage chuz:context Item.Mainhand merge from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand merge from entity @s Inventory[{Slot:-106b}]
    data modify storage chuz:context Item.Offhand merge value {Slot:0b}
    data modify block 100001 -64 100000 Items set value []
    data modify block 100001 -64 100000 Items append from storage chuz:context Item.Offhand
    loot replace entity @s weapon.mainhand 1 mine 100001 -64 100000 debug_stick
    item replace entity @s weapon.offhand with air
    data modify block 100001 -64 100000 Items append from storage chuz:context Item.Mainhand
    execute if data storage chuz:context Item.Mainhand run loot replace entity @s weapon.offhand 1 mine 100001 -64 100000 debug_stick

# 取得しなおす
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Inventory set from entity @s Inventory