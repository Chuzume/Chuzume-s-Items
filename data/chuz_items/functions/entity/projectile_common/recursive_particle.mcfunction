
# 弾丸の再帰パーティクル
# 高速弾丸
    execute if entity @s[tag=ChuzItems.Bullet] run function chuz_items:entity/bullet/particle
    execute if entity @s[tag=ChuzItems.SharpBullet] run function chuz_items:entity/bullet/particle_sharp

# ショットガン
    execute if entity @s[tag=ChuzItems.Shell] run function chuz_items:entity/shell/particle