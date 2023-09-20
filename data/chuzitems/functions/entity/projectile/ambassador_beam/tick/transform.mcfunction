#> chuzitems:entity/projectile/ambassador_beam/tick/transform
#
# 
#
# @within function chuzitems:entity/projectile/ambassador_beam/tick/

# 補完時間と開始時間
    #data merge entity @s {start_interpolation:0,interpolation_duration:1}

# サイズをスコアから代入
    execute store result entity @s transformation.scale[1] float 2 run scoreboard players get @s ChuzItems.Count

# カウントリセット
    scoreboard players reset @s ChuzItems.Count