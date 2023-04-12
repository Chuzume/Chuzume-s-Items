#> chuzitems:item/weapon/rod_of_darkness_laser/event/left/recursive/summon_laser
#
# 
#
# @within function chuzitems:item/weapon/rod_of_darkness_laser/event/left/recursive/

# 演出
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 50 1.2
    playsound minecraft:entity.allay.death player @a ~ ~ ~ 50 1.5
    playsound minecraft:entity.glow_squid.ambient player @a ~ ~ ~ 50 0
    playsound minecraft:entity.glow_squid.ambient player @a ~ ~ ~ 50 0
    playsound minecraft:entity.glow_squid.ambient player @a ~ ~ ~ 50 0

# 魔法陣を出す
    execute if dimension minecraft:the_end run summon item_display 0 115 0 {Rotation:[0.0f,90.0f],brightness:{sky:15,block:15},start_interpolation:0,interpolation_duration:10,item_display:"head",Tags:["BigRune"],item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},CustomModelData:3}}}
    execute unless dimension minecraft:the_end run summon item_display ~ ~45 ~ {Rotation:[0.0f,90.0f],brightness:{sky:15,block:15},start_interpolation:0,interpolation_duration:10,item_display:"head",Tags:["BigRune"],item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},CustomModelData:3}}}
