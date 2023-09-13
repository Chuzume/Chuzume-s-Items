#> chuzitems:lib/player_motion/
#
# 
#
# @within function chuzitems:**

# 難易度がピースフルだったら覚えておく
    execute store result score $Difficulty Chuz.Motion.Difficulty run difficulty
    execute if score $Difficulty Chuz.Motion.Difficulty matches 0 run difficulty normal

#
    tag @s add This
    summon bat 0 1000 0 {PersistenceRequired:1b,Tags:["Chuz.Motion.Pre","Chuz.Motion.Bat"],NoAI:1b,DeathTime:19s,Health:2048f,Attributes:[{Name:generic.max_health,Base:2048}]}
    summon arrow 0 999 0 {"Motion":[0.0d,10.0d,0.0d],Tags:["Chuz.Motion.Arrow"]}

# クリーパーを召喚
    execute positioned 0 1000 0 anchored eyes positioned ^ ^ ^-0.01 run function chuzitems:lib/player_motion/summon_recursive

    summon bat 10 1000 0 {PersistenceRequired:1b,Tags:["Chuz.Motion.Post","Chuz.Motion.Bat"],NoAI:1b,DeathTime:19s,Health:2048f,Attributes:[{Name:generic.max_health,Base:2048}]}
    summon arrow 10 999 0 {"Motion":[0.0d,10.0d,0.0d],Tags:["Chuz.Motion.Arrow"]}

    execute as @e[tag=Chuz.Motion.Arrow] run data modify entity @s Owner set from entity @p[tag=This] UUID

# リセット
    scoreboard players reset $Power Chuz.Motion.Power
    tag @e[tag=Chuz.Motion.Arrow] remove Chuz.Motion.Arrow
    tag @s remove This 