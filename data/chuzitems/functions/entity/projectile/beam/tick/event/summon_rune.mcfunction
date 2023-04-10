#> chuzitems:entity/projectile/beam/tick/event/summon_rune
#
# 魔法陣を設置
#
# @within function chuzitems:entity/projectile/beam/tick/event/set_color

## ビームの色に応じたのルーンを設置
    # 赤
        execute if entity @s[tag=ChuzItems.Color.Red] run summon item_display ~ ~ ~ {Rotation:[0.0f,90.0f],brightness:{sky:15,block:15},start_interpolation:0,interpolation_duration:10,item_display:"head",Tags:["BeamRune"],item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16730698},CustomModelData:2}}}
        execute if entity @s[tag=ChuzItems.Color.Orange] run summon item_display ~ ~ ~ {Rotation:[0.0f,90.0f],brightness:{sky:15,block:15},start_interpolation:0,interpolation_duration:10,item_display:"head",Tags:["BeamRune"],item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16753738},CustomModelData:2}}}
        execute if entity @s[tag=ChuzItems.Color.Yellow] run summon item_display ~ ~ ~ {Rotation:[0.0f,90.0f],brightness:{sky:15,block:15},start_interpolation:0,interpolation_duration:10,item_display:"head",Tags:["BeamRune"],item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16770890},CustomModelData:2}}}
        execute if entity @s[tag=ChuzItems.Color.Green] run summon item_display ~ ~ ~ {Rotation:[0.0f,90.0f],brightness:{sky:15,block:15},start_interpolation:0,interpolation_duration:10,item_display:"head",Tags:["BeamRune"],item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9240394},CustomModelData:2}}}
        execute if entity @s[tag=ChuzItems.Color.Sky] run summon item_display ~ ~ ~ {Rotation:[0.0f,90.0f],brightness:{sky:15,block:15},start_interpolation:0,interpolation_duration:10,item_display:"head",Tags:["BeamRune"],item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4904447},CustomModelData:2}}}
        execute if entity @s[tag=ChuzItems.Color.Blue] run summon item_display ~ ~ ~ {Rotation:[0.0f,90.0f],brightness:{sky:15,block:15},start_interpolation:0,interpolation_duration:10,item_display:"head",Tags:["BeamRune"],item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5065471},CustomModelData:2}}}
        execute if entity @s[tag=ChuzItems.Color.Purple] run summon item_display ~ ~ ~ {Rotation:[0.0f,90.0f],brightness:{sky:15,block:15},start_interpolation:0,interpolation_duration:10,item_display:"head",Tags:["BeamRune"],item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13191935},CustomModelData:2}}}

# 使用者の向きに合わせる
    data modify entity @e[tag=BeamRune,sort=nearest,limit=1] Rotation set from entity @s Rotation