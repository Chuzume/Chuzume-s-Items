#> chuzitems:entity/projectile/charged_shooting_arrow/tick/hit/
#
# 
#
# @within function chuzitems:entity/projectile/charged_shooting_arrow/tick/move/

# ダメージを取得
    execute store result storage chuz:context Damage int 0.1 run scoreboard players get @s Chuz.Damage

# さっき取得したデータを使ってマクロでダメージを与える
    execute as @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,sort=nearest,limit=1] run function chuzitems:entity/projectile/charged_shooting_arrow/tick/hit/damage with storage chuz:context

# リセット
    scoreboard players reset @s Chuz.HitCheck

# 消失
    function chuzitems:entity/projectile/charged_shooting_arrow/tick/kill