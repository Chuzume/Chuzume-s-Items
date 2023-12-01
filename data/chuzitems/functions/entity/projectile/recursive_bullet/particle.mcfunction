#> chuzitems:entity/projectile/recursive_bullet/particle
#
# 再帰パーティクル
#
# @within function chuzitems:entity/projectile/recursive_bullet/move

# 通常弾丸
    execute if entity @s[tag=ChuzItems.Projectile.Normal] run function chuzitems:entity/projectile/normal_bullet/particle

# シャープシュート
    execute if entity @s[tag=ChuzItems.Projectile.Sharpshoot] run function chuzitems:entity/projectile/sharpshoot/particle

# ショットガン
    execute if entity @s[tag=ChuzItems.Projectile.Shell] run function chuzitems:entity/projectile/shell/particle

# モザンビーク
    execute if entity @s[tag=ChuzItems.Projectile.Mozambique] run function chuzitems:entity/projectile/mozambique/particle

# ウィングマン
    execute if entity @s[tag=ChuzItems.Projectile.Wingman] run function chuzitems:entity/projectile/wingman/particle

# レヴォ弾丸
    execute if entity @s[tag=ChuzItems.Projectile.RevoBullet] run function chuzitems:entity/projectile/revo_bullet/particle

# 流星の矢
    execute if entity @s[tag=ChuzItems.Projectile.ShootingArrow] run function chuzitems:entity/projectile/shooting_arrow/particle