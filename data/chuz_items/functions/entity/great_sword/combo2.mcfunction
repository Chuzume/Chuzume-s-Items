
# 回転
    scoreboard players add @s Test 1
    execute if score @s Test matches 0..4 run scoreboard players add @s ChuzItems.RotSpeed 3
    execute if score @s Test matches 5..10 run scoreboard players add @s ChuzItems.RotSpeed 5
    execute if score @s Test matches 11 run scoreboard players set @s ChuzItems.RotSpeed 10
    execute if score @s Test matches 13 run scoreboard players set @s ChuzItems.RotSpeed 5
    execute if score @s Test matches 14 run scoreboard players set @s ChuzItems.RotSpeed 0

    execute if score @s Test matches 20 rotated ~-90 ~ positioned ^-0.3 ^1.4 ^1.9 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.02 1
    execute if score @s Test matches 20 rotated ~-90 ~ positioned ^-0.3 ^1.4 ^1.7 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.02 1
    execute if score @s Test matches 20 rotated ~-90 ~ positioned ^-0.3 ^1.4 ^1.5 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.02 1
    execute if score @s Test matches 20 rotated ~-90 ~ positioned ^-0.3 ^1.4 ^1.3 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.02 1
    execute if score @s Test matches 20 rotated ~-90 ~ positioned ^-0.3 ^1.4 ^1.1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.02 1

    tag @s[scores={Test=20..}] add ChuzItems.Kill

# 進んだ距離
    scoreboard players operation @s ChuzItems.RotDistance += @s ChuzItems.RotSpeed
    tag @s[scores={ChuzItems.RotDistance=300..}] add ChuzItems.Kill

# 回転速度
    execute store result score @s ChuzItems.Rotation run data get entity @s Rotation[0] 1
    scoreboard players operation @s ChuzItems.Rotation += @s ChuzItems.RotSpeed
    execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ChuzItems.Rotation

# サウンド
    execute if score @s Test matches 1 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.2 0.5
    execute if score @s Test matches 1 run playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.2 0.5

# モデル
    item replace entity @s[scores={Test=6}] armor.head with minecraft:knowledge_book{CustomModelData:25}

# スコア減算
    scoreboard players remove @s Chuz.Range 1

# 向きを補正
    #execute store result entity @s Pose.Head[1] float 1 run data get entity @p Rotation[0]