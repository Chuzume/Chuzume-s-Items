#> chuz_items:entity/revo_machinegun_thrown/explode/active
#
# 起爆
#
# @within function chuz_items:entity/revo_machinegun_thrown/tick

# 残弾0~10
    execute if score @s ChuzItems.Revo.Magazine matches 0..10 run function chuz_items:entity/revo_machinegun_thrown/explode/lv1

# 残弾11~20
    execute if score @s ChuzItems.Revo.Magazine matches 11..20 run function chuz_items:entity/revo_machinegun_thrown/explode/lv2

# 残弾21~30
    execute if score @s ChuzItems.Revo.Magazine matches 21..30 run function chuz_items:entity/revo_machinegun_thrown/explode/lv3