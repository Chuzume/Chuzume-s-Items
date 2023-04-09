#> chuzitems:entity/projectile/beam/recursive/check_wall/transform
#
# 
#
# @within function chuzitems:entity/projectile/beam/recursive/check_wall/

    data merge entity @s {start_interpolation:0,interpolation_duration:2}

# サイズをスコアから代入
    execute store result entity @s transformation.scale[2] float 2 run scoreboard players get @s ChuzItems.Count

# カウントリセット
    scoreboard players reset @s ChuzItems.Count