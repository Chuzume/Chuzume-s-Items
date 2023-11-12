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
    execute at @s at @e[tag=!ChuzItems.Entity.Lockon,tag=!Chuz.Projectile,distance=..0.1,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    #execute at @s run tag @e[tag=!ChuzItems.Entity.Lockon,tag=!Chuz.Projectile,distance=..0.1,sort=nearest,limit=1] add This
    #execute at @s at @e[tag=This,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    #execute at @s as @e[tag=This,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["ChuzItems.Entity.HomingMarker"]}

# ID付与
    execute if entity @s[scores={ChuzItems.LockonID=0}] run scoreboard players set @s[tag=ChuzItems.Entity.HomingMarker] ChuzItems.LockonID 0
    execute if entity @s[scores={ChuzItems.LockonID=1}] run scoreboard players set @s[tag=ChuzItems.Entity.HomingMarker] ChuzItems.LockonID 1
    execute if entity @s[scores={ChuzItems.LockonID=2}] run scoreboard players set @s[tag=ChuzItems.Entity.HomingMarker] ChuzItems.LockonID 2
    execute if entity @s[scores={ChuzItems.LockonID=3}] run scoreboard players set @s[tag=ChuzItems.Entity.HomingMarker] ChuzItems.LockonID 3
    execute if entity @s[scores={ChuzItems.LockonID=4}] run scoreboard players set @s[tag=ChuzItems.Entity.HomingMarker] ChuzItems.LockonID 4
    execute if entity @s[scores={ChuzItems.LockonID=5}] run scoreboard players set @s[tag=ChuzItems.Entity.HomingMarker] ChuzItems.LockonID 5
    execute if entity @s[scores={ChuzItems.LockonID=6}] run scoreboard players set @s[tag=ChuzItems.Entity.HomingMarker] ChuzItems.LockonID 6
    execute if entity @s[scores={ChuzItems.LockonID=7}] run scoreboard players set @s[tag=ChuzItems.Entity.HomingMarker] ChuzItems.LockonID 7
    execute if entity @s[scores={ChuzItems.LockonID=8}] run scoreboard players set @s[tag=ChuzItems.Entity.HomingMarker] ChuzItems.LockonID 8
    execute if entity @s[scores={ChuzItems.LockonID=9}] run scoreboard players set @s[tag=ChuzItems.Entity.HomingMarker] ChuzItems.LockonID 9

# 消滅処理
    execute unless entity @e[tag=This,sort=nearest,limit=1] run function chuzitems:entity/lockon_marker/kill

# 時間経ちすぎても消える
    execute if score @s ChuzItems.Tick matches 40.. run function chuzitems:entity/lockon_marker/kill

# リセット
    tag @p[tag=Chuz.ID.Target] remove Chuz.ID.Target
    tag @e[tag=This] remove This

