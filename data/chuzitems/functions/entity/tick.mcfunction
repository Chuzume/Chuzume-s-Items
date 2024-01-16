#> chuzitems:entity/tick
#
# 
#
# @within function chuzitems:tick

# 飛び道具チェック
    execute as @e[type=#chuzitems:projectile,tag=Chuz.Projectile] at @s run function chuzitems:entity/projectile/check/tick

# パーティクル
    execute as @e[type=text_display,tag=Chuz.Particle] at @s run function chuzitems:entity/particle/tick