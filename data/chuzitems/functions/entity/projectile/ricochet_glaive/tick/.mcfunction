#> chuzitems:entity/projectile/ricochet_glaive/tick/
#
# 
#
# @within function chuzitems:entity/projectile/event/tick

# 共通処理
    function chuzitems:entity/projectile/glaive_common/tick/

# サウンド
    scoreboard players operation $Interval Chuz.Temporary %= $2 Chuz.Const
    execute if score $Interval Chuz.Temporary matches 0 unless block ~ ~ ~ water run function chuzitems:entity/projectile/glaive_common/tick/sound
    execute if score $Interval Chuz.Temporary matches 0 if block ~ ~ ~ water run playsound minecraft:entity.player.swim neutral @a ~ ~ ~ 0.3 1.5
    execute if score $Interval Chuz.Temporary matches 0 if block ~ ~ ~ water run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 0.5

# 所有者がスニークし直したら戻ってくる
    execute if score @s[tag=!ChuzItems.Glaive.Recalled] ChuzItems.Tick matches 2.. if score @p[tag=Chuz.ID.Target,scores={ChuzItems.Sneak=0..}] ChuzItems.Charge matches 1 run function chuzitems:entity/projectile/ricochet_glaive/tick/quick_return/

# 所有者が離れすぎても戻ってくる
    execute unless entity @p[tag=Chuz.ID.Target,distance=..40] run scoreboard players set @s Chuz.Range 0

# 壁ヒット
    execute if entity @s[tag=ChuzItems.Glaive.HitWall] run function chuzitems:entity/projectile/ricochet_glaive/tick/hit_wall

# 飛距離使い切ったら戻ってくる
    execute if entity @s[scores={Chuz.Range=..0}] run function chuzitems:entity/projectile/ricochet_glaive/tick/return

# 再帰
    execute at @s run function chuzitems:entity/projectile/ricochet_glaive/tick/recursion

# リセット
    function chuzitems:entity/projectile/glaive_common/tick/reset