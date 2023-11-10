#> chuzitems:entity/projectile/charged_shooting_arrow/tick/hit/
#
# 
#
# @within function chuzitems:entity/projectile/charged_shooting_arrow/tick/move/

# ダメージ
    damage @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,sort=nearest,limit=1] 7 chuzitems:bullet by @p[tag=Chuz.ID.Target]

# 演出
    #execute if score @s Chuz.HitCheck matches 1 as @e[type=!#chuzitems:unhurtable,sort=nearest,limit=1] unless entity @s[type=ender_dragon] at @s run function chuzitems:entity/photon_glaive/tick/hit/vfx

# リセット
    scoreboard players reset @s Chuz.HitCheck