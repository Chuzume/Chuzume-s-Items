#> chuz_items:entity/projectile/check
#
# 弾丸の種類を判別
#
# @within function chuz_items:tick

## 飛び道具系
# 再帰弾丸の共通処理
    execute if entity @s[tag=ChuzItems.RecursiveBullet] run function chuz_items:entity/projectile/recursive_bullet/tick

# グレネード弾
    execute if entity @s[tag=ChuzItems.Projectile.Grenade] run function chuz_items:entity/grenade/tick

# 投げられたレヴォマシンガン
    execute if entity @s[tag=ChuzItems.Projectile.ThrownGun] run function chuz_items:entity/revo_machinegun_thrown/tick
