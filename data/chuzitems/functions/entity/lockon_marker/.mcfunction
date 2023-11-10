#> chuzitems:entity/lockon_marker/
#
# 
#
# @within function chuzitems:entity/projectile/event/tick

# 持ち主を特定
    execute at @a[distance=..100] if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add Chuz.ID.Target

# Tick加算
    scoreboard players add @s ChuzItems.Tick 1

# パーティクル
    particle minecraft:electric_spark ~ ~0.5 ~ 0 0 0 0.1 1 force @a[distance=..60]

# エンティティにくっつく
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!ChuzItems.Entity.Lockon,tag=!Chuz.Projectile,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ run tp @e[type=marker,tag=ChuzItems.Entity.Lockon,distance=..20,sort=nearest,limit=1] ~ ~ ~

# ロックオンされたエンティティが死亡したり離れたりしたら消える
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=!ChuzItems.Entity.Lockon,tag=!Chuz.Projectile,dx=0,sort=nearest,limit=1] run function chuzitems:entity/lockon_marker/kill

# 時間経ちすぎても消える
    execute if score @s ChuzItems.Tick matches 400.. run function chuzitems:entity/lockon_marker/kill

# リセット
    tag @p[tag=Chuz.ID.Target] remove Chuz.ID.Target
