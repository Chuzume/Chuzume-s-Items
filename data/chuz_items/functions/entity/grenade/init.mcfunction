execute facing entity @e[type=marker,tag=Chuz.Spread,distance=..100] feet run tp @s ~ ~-0.3 ~ ~ ~
kill @e[type=marker,tag=Chuz.Spread,distance=..100]
tag @s add ChuzItems.Grenade
tag @s remove Chuz.Projectile_Init
scoreboard players set @s Chuz.Range 60
execute at @s run function chuz_items:entity/motion

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz_En.ID = @p Chuz_Pl.ID