#> chuz_items:entity/projectile/mozambique/tick
#
# モザンビーク弾丸のメイン処理
#
# @within function chuz_items:entity/projectile/check

# パーティクル
    execute if entity @s[scores={Chuz.Range=..399}] run particle crit ~ ~ ~ 0 0 0 0 1 force @a[distance=..50]
    
# 再帰移動  
    function chuz_items:entity/projectile/common/move