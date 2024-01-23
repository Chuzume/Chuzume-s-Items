#> chuzitems:entity/projectile/ricochet_glaive/tick/hit/ricochet/
#
# 
#
# @within function chuzitems:entity/projectile/ricochet_glaive/tick/hit/

# 向き変更
    execute at @s facing entity @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,nbt={HurtTime:0s},distance=..7,sort=random,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# ターゲッティングに成功したら演出
    execute at @s if entity @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,nbt={HurtTime:0s},distance=..7,sort=random,limit=1] run function chuzitems:entity/projectile/ricochet_glaive/tick/hit/ricochet/vfx
