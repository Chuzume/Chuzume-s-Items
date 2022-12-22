gamerule showDeathMessages false
execute as @e[tag=ChuzItems.Projectile,sort=nearest,limit=1] at @a if score @s Chuz_En.ID = @p Chuz_Pl.ID run tag @p add Chuz.This
execute if entity @s[tag=ChuzItems.Hit.Bullet] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" に撃たれた"}]
execute if entity @s[tag=ChuzItems.Hit.BulletHS] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" に正確に頭を撃ち抜かれた"}]
execute if entity @s[tag=ChuzItems.Hit.ChargeSmash] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" のロマンあふれる一撃を受けた"}]

tag @a remove Chuz.This
kill @s
gamerule showDeathMessages true