#> chuzitems:entity/projectile/ender_glaive/tick/teleport/
#
# 
#
# @within function chuzitems:entity/projectile/ender_glaive/tick/

# プレイヤーとして実行
    execute as @p[tag=Chuz.ID.Target] run function chuzitems:entity/projectile/ender_glaive/tick/teleport/player

# キャッチ処理実行
    function chuzitems:entity/projectile/ender_glaive/tick/catch/