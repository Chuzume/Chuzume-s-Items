#> chuzitems:entity/projectile/photon_glaive/tick/
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
    execute if score @s[tag=!ChuzItems.Glaive.Recalled] ChuzItems.Tick matches 2.. if score @p[tag=Chuz.ID.Target,scores={ChuzItems.Sneak=0..}] ChuzItems.Charge matches 1 run function chuzitems:entity/projectile/photon_glaive/tick/quick_return/

# チャージ2で投擲された場合、プレイヤーを引っ張る能力を得る。ただし持ち主のカウントが3未満の場合
    scoreboard players operation $Interval Chuz.Temporary %= $2 Chuz.Const
    execute if score $Interval Chuz.Temporary matches 0 if entity @s[tag=!ChuzItems.Glaive.Recalled,scores={ChuzItems.Projectile.Charge=2,ChuzItems.Tick=3..,Chuz.Range=0..}] at @p[tag=Chuz.ID.Target,scores={ChuzItems.PhotonGlaive.GlideCount=..2,ChuzItems.Sneak=0..}] facing entity @s feet run function chuzitems:entity/projectile/photon_glaive/tick/pull/

# 壁ヒット
    execute if entity @s[tag=ChuzItems.Glaive.HitWall] run function chuzitems:entity/projectile/photon_glaive/tick/hit_wall

# 再帰
    execute at @s run function chuzitems:entity/projectile/photon_glaive/tick/recursion

# リセット
    function chuzitems:entity/projectile/glaive_common/tick/reset