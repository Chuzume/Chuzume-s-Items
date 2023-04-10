#> chuzitems:entity/projectile/beam/tick/event/end
#
# 収縮していく
#
# @within function chuzitems:entity/projectile/beam/tick/

# 補完時間と開始時間
    data merge entity @s {start_interpolation:0,interpolation_duration:10}

# スケール0と1を変更
    data modify entity @s transformation.scale[0] set value 0.0f
    data modify entity @s transformation.scale[1] set value 0.0f

# サウンド
