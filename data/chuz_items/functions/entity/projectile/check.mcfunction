
# 弾丸の種類を判別
    # 通常弾丸
        execute if entity @s[tag=ChuzItems.Bullet] run function chuz_items:entity/bullet/tick

    # ショットシェル
        execute if entity @s[tag=ChuzItems.Shell] run function chuz_items:entity/shell/tick

    # グレネード弾
        execute if entity @s[tag=ChuzItems.Grenade] run function chuz_items:entity/grenade/tick

    # モザンビーク弾丸
        execute if entity @s[tag=ChuzItems.Projectile.Mozambique] run function chuz_items:entity/projectile/mozambique/tick

    # 敵の弾丸
        execute if entity @s[tag=ChuzItems.Shell_Enemy] run function chuz_items:entity/shell_enemy/tick

# 