#> chuzitems:entity/photon_glaive/tick/
#
# 
#
# @within function chuzitems:entity/projectile/event/tick

# 持ち主を特定
    execute at @a[distance=..100] if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add Chuz.ID.Target

# 接触で爆発
    # クールタイム加算
        scoreboard players add @s ChuzItems.CoolTime 1
    # 一定のクールタイムが過ぎたら、接触で爆発するようになる
        execute if entity @s[scores={ChuzItems.CoolTime=5..}] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#chuzitems:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,dx=0] run function chuzitems:entity/revo_machinegun_thrown/explode/active

# モデルを追従
    execute on passengers run tag @s add This
    tp @e[type=item_display,tag=ChuzItems.Model.PhotonGlaive,tag=This,sort=nearest,limit=1] ~ ~ ~ ~ ~
    execute on passengers run tag @s remove This

# テスト
    execute at @p[tag=Chuz.ID.Target,predicate=chuzitems:sneak] facing entity @s feet as @p run function chuzitems:entity/photon_glaive/tick/pull

# 落下耐性
    execute if score @p[tag=Chuz.ID.Target] ChuzItems.FallResistTime matches 0..

# モデル回転
    execute on passengers run function chuzitems:entity/photon_glaive/tick/model_spin

# 飛距離使い切ったら戻ってくる
    execute if entity @s[scores={Chuz.Range=..0}] run function chuzitems:entity/photon_glaive/tick/return

# 壁反射
    execute if score @s Chuz.Range matches 0.. run function chuzitems:entity/photon_glaive/tick/ricochet/

# 飛翔
    function chuzitems:entity/photon_glaive/tick/move/
    tag @s remove ChuzItems.Reflected

# リセット
    #tag @p[tag=Chuz.ID.Target] remove Chuz.ID.Target