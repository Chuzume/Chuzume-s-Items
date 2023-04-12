#> chuzitems:entity/big_rune/transform
#
# 
#
# @within function chuzitems:entity/big_rune/tick

# 補完時間と開始時間
    data merge entity @s {start_interpolation:0,interpolation_duration:290,transformation:{left_rotation:{axis:[0.0f,0.0f,1.0f],angle:2.1f}}}

# スケール0と1を変更
    data modify entity @s transformation.scale[0] set value 50.0f
    data modify entity @s transformation.scale[1] set value 50.0f
    data modify entity @s transformation.scale[2] set value 0.0f