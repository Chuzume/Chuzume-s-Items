#> chuz_items:entity/projectile/recursive_bullet/particle
#
# 再帰パーティクル
#
# @within function chuz_items:entity/projectile/recursive_bullet/move

# 通常弾丸
    execute if entity @s[tag=ChuzItems.Projectile.Normal] run function chuz_items:entity/projectile/normal_bullet/particle

# シャープシュート
    execute if entity @s[tag=ChuzItems.Projectile.Sharpshoot] run function chuz_items:entity/projectile/sharpshoot/particle

# ショットガン
    execute if entity @s[tag=ChuzItems.Projectile.Shell] run function chuz_items:entity/projectile/shell/particle

# モザンビーク
    execute if entity @s[tag=ChuzItems.Projectile.Mozambique] run function chuz_items:entity/projectile/mozambique/particle

# ウィングマン
    execute if entity @s[tag=ChuzItems.Projectile.Wingman] run function chuz_items:entity/projectile/wingman/particle

# レヴォ弾丸
    execute if entity @s[tag=ChuzItems.Projectile.RevoBullet] run function chuz_items:entity/projectile/revo_bullet/particle