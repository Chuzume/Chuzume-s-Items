#> chuzitems:entity/projectile/ender_glaive/tick/
#
# 
#
# @within function chuzitems:entity/projectile/check/tick

# IDを保存しておく
    data modify storage chuz:context Glaive.ID set value ender_glaive

# 共通処理
    function chuzitems:entity/projectile/glaive_common/tick/

# サウンド
    scoreboard players operation $Interval Chuz.Temporary %= $4 Chuz.Const
    execute if score $Interval Chuz.Temporary matches 0 run playsound minecraft:entity.player.attack.sweep neutral @a ~ ~ ~ 1.5 1.5
    execute if score $Interval Chuz.Temporary matches 0 run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1.5 2

# 所有者がスニークでテレポート
    execute if score @s ChuzItems.Tick matches 2.. if score @p[tag=Chuz.ID.Target,scores={ChuzItems.Sneak=0..,ChuzItems.PhotonGlaive.GlideCount=..2}] ChuzItems.Charge matches 1 run function chuzitems:entity/projectile/ender_glaive/tick/teleport/

# 壁ヒット
    execute if score @s Chuz.Range matches 1.. unless block ^ ^ ^0.5 #chuzitems:no_collision run function chuzitems:entity/projectile/ender_glaive/tick/hit_wall

# 空中でとどまる際の処理
    execute if score @s Chuz.Range matches ..1 run function chuzitems:entity/projectile/ender_glaive/tick/wait

# 再帰
    execute at @s run function chuzitems:entity/projectile/ender_glaive/tick/recursion

# リセット
    function chuzitems:entity/projectile/glaive_common/tick/reset