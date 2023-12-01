#> chuzitems:entity/projectile/charged_shooting_arrow/tick/hit/damage
#
# ダメージを与える
#

# ダメージを与える
    $damage @s $(Damage) chuzitems:bullet by @p[tag=Chuz.ID.Target]
    
# リセット
    data remove storage chuz:context Damage
