scoreboard players reset @s Chuz.Range
execute positioned ^ ^ ^-1 run particle crit ~ ~ ~ 0 0 0 0.25 1
execute if entity @s[tag=ChuzItems.Projectile.ShootingArrow] run playsound entity.arrow.hit neutral @a ~ ~ ~ 1 1
execute if entity @s[tag=!ChuzItems.Projectile.ShootingArrow] run playsound minecraft:block.stone.break neutral @a ~ ~ ~ 1 1.25
kill @s