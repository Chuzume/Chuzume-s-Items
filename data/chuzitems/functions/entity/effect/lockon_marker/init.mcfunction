#> chuzitems:entity/effect/lockon_marker/init
#
# 
#
# @within function chuzitems:entity/effect/lockon_marker/summon

# aaaa
    data merge entity @s {glow_color_override:1b,brightness:{sky:15,block:15},billboard:"center",Tags:["ChuzItems.Effect.Lockon"],transformation:{scale:[0.11f,0.11f,0f]},item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:50175},CustomModelData:4}}}
    scoreboard players set @s ChuzItems.Tick 1