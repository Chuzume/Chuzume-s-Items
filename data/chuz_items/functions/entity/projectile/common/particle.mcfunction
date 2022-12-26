#> chuz_items:entity/projectile/common/particle
#
# 再帰パーティクル
#
# @within function chuz_items:entity/projectile/common/move

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