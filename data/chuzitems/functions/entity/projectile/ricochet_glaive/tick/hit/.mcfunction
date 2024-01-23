#> chuzitems:entity/projectile/ricochet_glaive/tick/hit/
#
# 
#
# @within function chuzitems:entity/projectile/ricochet_glaive/tick/recursion

# 演出
    execute as @e[type=!#chuzitems:unhurtable,sort=nearest,limit=1] if entity @s[type=!ender_dragon,nbt={HurtTime:0s}] at @s run function chuzitems:entity/projectile/ricochet_glaive/tick/hit/vfx

# チャージ0 
    execute if score @s ChuzItems.Projectile.Charge matches 0 store result score @s Chuz.HitCheck run damage @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,sort=nearest,limit=1] 5 player_attack by @p[tag=Chuz.ID.Target]

# チャージ1,2
    execute if score @s ChuzItems.Projectile.Charge matches 1.. store result score @s Chuz.HitCheck run damage @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,sort=nearest,limit=1] 9 player_attack by @p[tag=Chuz.ID.Target]

# 別の敵を狙う
    execute if entity @s[scores={Chuz.HitCheck=1..,ChuzItems.Projectile.Charge=0}] run function chuzitems:entity/projectile/ricochet_glaive/tick/hit/ricochet/

# リセット
    scoreboard players reset @s Chuz.HitCheck