execute facing entity @e[type=marker,tag=SpreadMarker,distance=..100] feet run tp @s ~ ~-0.3 ~ ~ ~
kill @e[type=marker,tag=SpreadMarker,distance=..100]
tag @s add ChuzItems.Shell_Enemy
tag @s remove Chuz.Init
execute store result score @s Chuz.Speed run data get entity @s data.ChuzData.Speed
execute store result score @s Chuz.Range run data get entity @s data.ChuzData.Range

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID

# スコアコピー
#    scoreboard players operation @s Chuz.EntityID = @p Chuz.PlayerID