execute facing entity @e[type=marker,tag=SpreadMarker,distance=..100] feet run tp @s ~ ~-0.3 ~ ~ ~
kill @e[type=marker,tag=SpreadMarker,distance=..100]
tag @s remove Chuz.Init
scoreboard players set @s Chuz.Range 60
execute at @s run function chuzitems:entity/motion

# 描画を更新
    damage @s 0

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz.EntityID = @p Chuz.PlayerID