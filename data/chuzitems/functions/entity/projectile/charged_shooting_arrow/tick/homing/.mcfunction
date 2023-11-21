#> chuzitems:entity/projectile/charged_shooting_arrow/tick/homing/
#
# 
#
# @within function chuzitems:entity/projectile/charged_shooting_arrow/tick/

#> Thisをもう一個
# @private
    #declare tag HomingTarget

# 自身に付与されたIDをストレージに付与
    execute store result storage chuz:context LockID int 1 run scoreboard players get @s Chuz.EntityID

# マクロホーミング
    function chuzitems:entity/projectile/charged_shooting_arrow/tick/homing/macro with storage chuz:context

# 近距離時、ホーミングをやめる
    #execute if entity @s[scores={ChuzItems.Tick=..5}] run function chuzitems:entity/projectile/charged_shooting_arrow/tick/homing/near_check/ with storage chuz:context
    execute if entity @s[scores={ChuzItems.Tick=..5}] if entity @e[type=!ender_dragon,tag=HomingTarget,distance=..17,sort=nearest,limit=1] positioned ^ ^ ^100 if entity @e[type=!ender_dragon,tag=HomingTarget,distance=..100,sort=nearest,limit=1] run function chuzitems:entity/projectile/charged_shooting_arrow/tick/homing/near_active

# リセット
    data remove storage chuz:context LockID
    tag @e[tag=HomingTarget,distance=..100] remove HomingTarget