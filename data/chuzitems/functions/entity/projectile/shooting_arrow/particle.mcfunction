#> chuzitems:entity/projectile/shooting_arrow/particle
#
# パーティクル
#

# 両方で出る
    particle electric_spark ~ ~ ~ 0 0 0 0.1 1 force @a[distance=..60]

# 燃えていないとき
    execute if entity @s[tag=!ChuzItems.Projectile.FlameArrow] run particle dust 1 1 1 0.7 ~ ~ ~ 0 0 0 0 1 force @a[distance=..60]

# 燃えているとき
    execute if entity @s[tag=ChuzItems.Projectile.FlameArrow] run particle dust 1 0.5 0 0.7 ~ ~ ~ 0 0 0 0 1 force @a[distance=..60]
