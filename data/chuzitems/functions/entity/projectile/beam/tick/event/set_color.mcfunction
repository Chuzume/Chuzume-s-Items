#> chuzitems:entity/projectile/beam/tick/event/set_color
#
# 色をつける
#
# @within function chuzitems:entity/projectile/beam/tick/

# タグに応じた色になる
    #data merge entity @s[tag=ChuzItems.Color.Red] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16730698},CustomModelData:1}}}
    #data merge entity @s[tag=ChuzItems.Color.Orange] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16753738},CustomModelData:1}}}
    #data merge entity @s[tag=ChuzItems.Color.Yellow] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16770890},CustomModelData:1}}}
    #data merge entity @s[tag=ChuzItems.Color.Green] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9240394},CustomModelData:1}}}
    #data merge entity @s[tag=ChuzItems.Color.Sky] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4904447},CustomModelData:1}}}
    #data merge entity @s[tag=ChuzItems.Color.Blue] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5065471},CustomModelData:1}}}
    #data merge entity @s[tag=ChuzItems.Color.Purple] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13191935},CustomModelData:1}}}
# タグに応じた色になる
    data merge entity @s[tag=ChuzItems.Color.Red] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16748431},CustomModelData:1}}}
    data merge entity @s[tag=ChuzItems.Color.Orange] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16766607},CustomModelData:1}}}
    data merge entity @s[tag=ChuzItems.Color.Yellow] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16646031},CustomModelData:1}}}
    data merge entity @s[tag=ChuzItems.Color.Green] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9437071},CustomModelData:1}}}
    data merge entity @s[tag=ChuzItems.Color.Sky] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9437172},CustomModelData:1}}}
    data merge entity @s[tag=ChuzItems.Color.Blue] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9415679},CustomModelData:1}}}
    data merge entity @s[tag=ChuzItems.Color.Purple] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15044607},CustomModelData:1}}}
    data merge entity @s[tag=ChuzItems.Color.White] {item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},CustomModelData:1}}}

# ルーン設置
    execute positioned ^ ^ ^ run function chuzitems:entity/projectile/beam/tick/event/summon_rune

# パーティクル
    #particle explosion ^ ^ ^-0.5 0 0 0 0 0 force @a[distance=..60]