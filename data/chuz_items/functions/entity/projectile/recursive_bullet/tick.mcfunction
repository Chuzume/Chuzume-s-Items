#> chuz_items:entity/projectile/recursive_bullet/tick
#
# 再帰で飛ぶ弾丸の共通処理
#
# @within function chuz_items:entity/projectile/check

# パーティクル
    execute if entity @s[scores={Chuz.Range=..399}] run particle crit ~ ~ ~ 0 0 0 0 1 force @a[distance=..60]
    
# 再帰移動  
    function chuz_items:entity/projectile/common/move