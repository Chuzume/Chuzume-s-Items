#> chuzitems:entity/projectile/ricochet_glaive/tick/recursion
#
# 
#
# @within function
#   chuzitems:entity/projectile/ricochet_glaive/tick/
#   chuzitems:entity/projectile/ricochet_glaive/tick/recursion

# 共通処理:移動
    function chuzitems:entity/projectile/glaive_common/tick/move

# パーティクル
    # チャージ0
        execute if score @s ChuzItems.Projectile.Charge matches 0 run function chuzitems:entity/projectile/ricochet_glaive/tick/particle/charge0
    # チャージ1
        execute if score @s ChuzItems.Projectile.Charge matches 1 run function chuzitems:entity/projectile/ricochet_glaive/tick/particle/charge1

# あまりにも長引いた場合、無理やり戻ってくる
    execute if entity @s[scores={Chuz.Range=..-200}] run function chuzitems:entity/projectile/ricochet_glaive/tick/catch

# キャッチ
    execute if entity @s[scores={Chuz.Range=..0}] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=Chuz.ID.Target,dx=0] at @s run function chuzitems:entity/projectile/ricochet_glaive/tick/catch

# アイテムを吸い込む
    execute at @s run function chuzitems:entity/projectile/glaive_common/tick/vacuum

# ヒット
    execute at @s positioned ~-0.75 ~-0.75 ~-0.75 at @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,dx=0.5,dy=0.5,dz=0.5] run function chuzitems:entity/projectile/ricochet_glaive/tick/hit/

# 再帰
    execute if entity @s[scores={Chuz.Recursion=1..}] at @s run function chuzitems:entity/projectile/ricochet_glaive/tick/recursion