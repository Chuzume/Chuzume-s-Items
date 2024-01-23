#> chuzitems:entity/projectile/ender_glaive/tick/hit/
#
# 
#
# @within function chuzitems:entity/projectile/ender_glaive/tick/recursion

# 演出
    execute as @e[type=!#chuzitems:unhurtable,sort=nearest,limit=1] if entity @s[type=!ender_dragon,nbt={HurtTime:0s}] at @s run function chuzitems:entity/projectile/ender_glaive/tick/hit/vfx

# チャージ0 
    execute if score @s ChuzItems.Projectile.Charge matches 0 run damage @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,sort=nearest,limit=1] 7 player_attack by @p[tag=Chuz.ID.Target]

# チャージ1,2
    execute if score @s ChuzItems.Projectile.Charge matches 1.. run damage @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,sort=nearest,limit=1] 9 player_attack by @p[tag=Chuz.ID.Target]