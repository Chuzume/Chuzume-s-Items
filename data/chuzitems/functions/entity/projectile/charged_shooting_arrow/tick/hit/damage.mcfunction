#> chuzitems:entity/projectile/charged_shooting_arrow/tick/hit/damage
#
# ダメージを与える
#

#$damage @s $(arrow.damage) chuzitems:bullet by @p[tag=Chuz.ID.Target]
$damage @s $(Damage) chuzitems:bullet by @p[tag=Chuz.ID.Target]
data remove storage chuz:context Damage