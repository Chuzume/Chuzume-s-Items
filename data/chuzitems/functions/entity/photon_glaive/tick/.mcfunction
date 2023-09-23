#> chuzitems:entity/photon_glaive/tick/
#
# 
#
# @within function chuzitems:entity/projectile/event/tick

# パーティクル
    #particle mineraft:crit ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..30]
    #particle minecraft:dust 0.3 1 1 0.8 ~ ~ ~ 0.2 0.2 0.2 0 2 force @a[distance=..30]
    #particle minecraft:dust 0 0.75 1 1 ~ ~ ~ 0.2 0.2 0.2 0 2 force @a[distance=..30]

# 接触で爆発
    # クールタイム加算
        scoreboard players add @s ChuzItems.CoolTime 1
    # 一定のクールタイムが過ぎたら、接触で爆発するようになる
        execute if entity @s[scores={ChuzItems.CoolTime=5..}] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#chuzitems:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,dx=0] run function chuzitems:entity/revo_machinegun_thrown/explode/active

# モデルを追従
    execute on passengers run tag @s add This
    tp @e[type=item_display,tag=ChuzItems.Model.PhotonGlaive,tag=This,sort=nearest,limit=1] ~ ~ ~ ~ ~
    execute on passengers run tag @s remove This

# モデル回転
    execute on passengers run function chuzitems:entity/photon_glaive/tick/model_spin

# 飛距離使い切ったら戻ってくる
    execute if entity @s[scores={Chuz.Range=..0}] run function chuzitems:entity/photon_glaive/tick/return

# 壁反射
    execute if score @s Chuz.Range matches 0.. run function chuzitems:entity/photon_glaive/tick/ricochet/

# 飛翔
    function chuzitems:entity/photon_glaive/tick/move/
    #execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuzitems:no_collision run tp @s ~ ~ ~
    #execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuzitems:no_collision run tp @s ~ ~ ~
    #execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuzitems:no_collision run tp @s ~ ~ ~
    #execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuzitems:no_collision run tp @s ~ ~ ~

    tag @s remove ChuzItems.Reflected

# 起爆アラート
    #execute if entity @s[scores={Chuz.Range=..50}] if entity @a[distance=..4] run function chuzitems:entity/grenade/alert