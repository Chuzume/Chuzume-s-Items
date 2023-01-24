#> chuz_items:entity/projectile/wingman/particle
#
# ウィングマンの弾のパーティクル
#
# @within function chuz_items:entity/projectile/recursive_bullet/particle

particle minecraft:dust 1 0.6 0 0.4 ^ ^ ^ 0 0 0 0 1 force @a[distance=..60]
particle minecraft:dust 1 0.4 0 0.4 ^ ^ ^ 0 0 0 0 1 force @a[distance=..60]

particle minecraft:dust 1 0.6 0 0.4 ^ ^ ^1 0 0 0 0 1 force @a[distance=..60]
particle minecraft:dust 1 0.4 0 0.4 ^ ^ ^1 0 0 0 0 1 force @a[distance=..60]

particle minecraft:dust 1 0.6 0 0.4 ^ ^ ^-1 0 0 0 0 1 force @a[distance=..60]
particle minecraft:dust 1 0.4 0 0.4 ^ ^ ^-1 0 0 0 0 1 force @a[distance=..60]
