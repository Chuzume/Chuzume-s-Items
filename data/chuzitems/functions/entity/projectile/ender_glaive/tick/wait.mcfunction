#> chuzitems:entity/projectile/ender_glaive/tick/wait
#
# 
#
# @within function chuzitems:entity/projectile/ender_glaive/tick/

# 水平になる
    execute rotated ~ 0 positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# パーティクル
    function chuzitems:entity/projectile/ender_glaive/tick/particle/wait