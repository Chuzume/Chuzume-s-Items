gamerule showDeathMessages false
execute as @e[tag=Chuz.Projectile,sort=nearest,limit=1] at @a if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add This
execute if entity @s[tag=ChuzItems.Hit.Bullet] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=This]"},{"text":" に撃たれた"}]
execute if entity @s[tag=ChuzItems.Hit.BulletHS] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=This]"},{"text":" に正確に頭を撃ち抜かれた"}]
execute if entity @s[tag=ChuzItems.Hit.ChargeSmash] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=This]"},{"text":" のロマンあふれる一撃を受けた"}]

tag @a remove This
kill @s
gamerule showDeathMessages true