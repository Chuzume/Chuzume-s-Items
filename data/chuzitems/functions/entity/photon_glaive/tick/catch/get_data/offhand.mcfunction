#> chuzitems:entity/photon_glaive/tick/catch/get_data/offhand
#
# 
#
# @within function chuzitems:entity/photon_glaive/tick/catch/

data modify storage chuz:context Give.id set from entity @s Inventory[{Slot:-106b}].id
data modify storage chuz:context Give.tag set from entity @s Inventory[{Slot:-106b}].tag
data modify storage chuz:context Give.count set from entity @s Inventory[{Slot:-106b}].Count