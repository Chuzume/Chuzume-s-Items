#> chuzitems:entity/projectile/glaive_common/tick/catch/macro
#
# 
#
# @within function chuzitems:entity/projectile/glaive_common/tick/catch/

    # メインハンド
        $execute if entity @s[tag=!ChuzItems.Projectile.Glaive.Off] run loot replace entity @p[gamemode=!creative,tag=Chuz.ID.Target] weapon.mainhand loot chuzitems:item/$(ID)
    # オフハンド
        $execute if entity @s[tag=ChuzItems.Projectile.Glaive.Off] run loot replace entity @p[gamemode=!creative,tag=Chuz.ID.Target] weapon.offhand loot chuzitems:item/$(ID)
