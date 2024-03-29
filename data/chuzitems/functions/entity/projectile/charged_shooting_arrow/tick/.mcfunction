#> chuzitems:entity/projectile/charged_shooting_arrow/tick/
#
# 
#
# @within function chuzitems:entity/projectile/check/tick

# 持ち主を特定
    execute at @e[type=marker,tag=ChuzItems.Entity.Lockon,distance=..100] if score @s Chuz.EntityID = @e[type=marker,tag=ChuzItems.Entity.Lockon,distance=..100,sort=nearest,limit=1] Chuz.EntityID run tag @e[type=marker,tag=ChuzItems.Entity.Lockon,distance=..100,sort=nearest,limit=1] add Chuz.ID.Target

# 持ち主を特定
    execute at @a[distance=..100] if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add Chuz.ID.Target

# Tick加算
    scoreboard players add @s ChuzItems.Tick 1

# ホーミング
    function chuzitems:entity/projectile/charged_shooting_arrow/tick/homing/
    
# 飛翔
    function chuzitems:entity/projectile/charged_shooting_arrow/tick/move/

# リセット
    #tag @s remove ChuzItems.Reflected
    tag @p[tag=Chuz.ID.Target] remove Chuz.ID.Target
    tag @e[type=marker,tag=ChuzItems.Entity.Lockon,tag=Chuz.ID.Target] remove Chuz.ID.Target