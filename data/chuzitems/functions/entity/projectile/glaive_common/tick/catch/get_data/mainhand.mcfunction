#> chuzitems:entity/projectile/glaive_common/tick/catch/get_data/mainhand
#
# 
#
# @within function chuzitems:entity/projectile/glaive_common/tick/catch/

data modify storage chuz:context Give.id set from entity @s SelectedItem.id
data modify storage chuz:context Give.tag set from entity @s SelectedItem.tag
data modify storage chuz:context Give.count set from entity @s SelectedItem.Count
