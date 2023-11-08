#> chuzitems:entity/projectile/event/tick
#
# 
#
# @within function chuzitems:tick

# 再帰弾丸の共通処理
    execute if entity @s[tag=ChuzItems.RecursiveBullet] run function chuzitems:entity/projectile/recursive_bullet/tick

# グレネード弾
    execute if entity @s[tag=ChuzItems.Projectile.Grenade] run function chuzitems:entity/grenade/tick

# 投げられたレヴォマシンガン
    execute if entity @s[tag=ChuzItems.Projectile.ThrownGun] run function chuzitems:entity/revo_machinegun_thrown/tick

# 超ビーム
    execute if entity @s[tag=ChuzItems.Projectile.Beam] run function chuzitems:entity/projectile/beam/tick/

# 超ビーム
    execute if entity @s[tag=ChuzItems.Projectile.AmbassadorBeam] run function chuzitems:entity/projectile/ambassador_beam/tick/

# フォトングレイヴ
    execute if entity @s[tag=ChuzItems.Projectile.PhotonGlaive] run function chuzitems:entity/photon_glaive/tick/

# 流星ロックオン
    execute if entity @s[tag=ChuzItems.Entity.Lockon] run function chuzitems:entity/lockon_marker/

# 流星アロー(チャージ)
    execute if entity @s[tag=ChuzItems.Projectile.ChargedShootingArrow] run function chuzitems:entity/projectile/charged_shooting_arrow/tick/