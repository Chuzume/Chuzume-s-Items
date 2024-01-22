#> chuzitems:entity/projectile/ricochet_glaive/tick/hit/ricochet
#
# 
#
# @within function chuzitems:entity/projectile/ricochet_glaive/tick/hit/

# タグ付与
    tag @e[type=!#chuzitems:unhurtable,sort=nearest,limit=1] add This

# 向き変更
    execute at @s facing entity @e[type=!#chuzitems:unhurtable,tag=!This,tag=!Chuz.ID.Target,nbt={HurtTime:0s},distance=..7,sort=random,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# リセット
    tag @e[type=!#chuzitems:unhurtable,sort=nearest,limit=1] remove This