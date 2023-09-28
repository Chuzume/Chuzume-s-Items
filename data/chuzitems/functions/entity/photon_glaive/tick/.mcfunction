#> chuzitems:entity/photon_glaive/tick/
#
# 
#
# @within function chuzitems:entity/projectile/event/tick

# 持ち主を特定
    execute at @a[distance=..100] if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add Chuz.ID.Target

# Tick加算
    scoreboard players add @s ChuzItems.Tick 1

# 所有者がスニークし直したらイベント
    execute if score @s ChuzItems.Tick matches 2.. if score @p[tag=Chuz.ID.Target,predicate=chuzitems:sneak] ChuzItems.Charge matches 1 run say yo

# モデルを追従
    execute on passengers run tag @s add This
    tp @e[type=item_display,tag=ChuzItems.Model.PhotonGlaive,tag=This,sort=nearest,limit=1] ~ ~ ~ ~ ~
    execute on passengers run tag @s remove This

# チャージ2で投擲された場合、プレイヤーを引っ張る能力を得る。ただし持ち主のカウントが3未満の場合
    execute if entity @s[scores={ChuzItems.Projectile.Charge=2,ChuzItems.Tick=5..}] at @p[tag=Chuz.ID.Target,scores={ChuzItems.PhotonGlaive.GlideCount=..2},predicate=chuzitems:sneak,distance=2..] facing entity @s feet run function chuzitems:entity/photon_glaive/tick/pull/

# モデル回転
    execute on passengers run function chuzitems:entity/photon_glaive/tick/model_spin

# 飛距離使い切ったら戻ってくる
    #execute if entity @s[scores={ChuzItems.Projectile.Charge=..1,Chuz.Range=..0}] run function chuzitems:entity/photon_glaive/tick/return
    execute if entity @s[scores={Chuz.Range=..0}] run function chuzitems:entity/photon_glaive/tick/return

# 壁反射
    execute if score @s Chuz.Range matches -70.. run function chuzitems:entity/photon_glaive/tick/ricochet/
    #execute if score @s[scores={ChuzItems.Projectile.Charge=..1}] Chuz.Range matches -70.. run function chuzitems:entity/photon_glaive/tick/ricochet/
    # チャージ2だと壁ヒットの演出が違う
        #execute if score @s[scores={ChuzItems.Projectile.Charge=2}] Chuz.Range matches 0.. unless block ^ ^ ^0.5 #chuzitems:no_collision run function chuzitems:entity/photon_glaive/tick/tp_return/hit_wall

# 飛翔
    function chuzitems:entity/photon_glaive/tick/move/
    #execute if score @s ChuzItems.Projectile.Charge matches ..1 run function chuzitems:entity/photon_glaive/tick/move/

# チャージ2の場合、飛翔距離の限界で留まる
    #execute if score @s[scores={ChuzItems.Projectile.Charge=2}] Chuz.Range matches 0.. run function chuzitems:entity/photon_glaive/tick/move/
    #execute if score @s[scores={ChuzItems.Projectile.Charge=2}] Chuz.Range matches ..0 run function chuzitems:entity/photon_glaive/tick/tp_return/

# リセット    
    tag @s remove ChuzItems.Reflected
    tag @p[tag=Chuz.ID.Target] remove Chuz.ID.Target