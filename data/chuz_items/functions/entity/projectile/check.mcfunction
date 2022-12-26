#> chuz_items:entity/projectile/check
#
# 弾丸の種類を判別
#
# @within function chuz_items:tick

# 再帰弾丸の共通処理
    execute if entity @s[tag=ChuzItems.RecursiveBullet] run function chuz_items:entity/projectile/recursive_bullet/tick

# グレネード弾
    execute if entity @s[tag=ChuzItems.Projectile.Grenade] run function chuz_items:entity/grenade/tick
