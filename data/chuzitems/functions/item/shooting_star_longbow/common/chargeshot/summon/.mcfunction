#> chuzitems:item/shooting_star_longbow/common/chargeshot/summon/
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/main

# 実行者です
    tag @s add This

# 弾丸召喚
    execute if score @s ChuzItems.ShootingStar.LockCount matches 1 run function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/1
    execute if score @s ChuzItems.ShootingStar.LockCount matches 2 run function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/2
    execute if score @s ChuzItems.ShootingStar.LockCount matches 3 run function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/3
    execute if score @s ChuzItems.ShootingStar.LockCount matches 4 run function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/4
    execute if score @s ChuzItems.ShootingStar.LockCount matches 5 run function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/5
    execute if score @s ChuzItems.ShootingStar.LockCount matches 6 run function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/6
    execute if score @s ChuzItems.ShootingStar.LockCount matches 7 run function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/7
    execute if score @s ChuzItems.ShootingStar.LockCount matches 8 run function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/8
    execute if score @s ChuzItems.ShootingStar.LockCount matches 9 run function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/9
    execute if score @s ChuzItems.ShootingStar.LockCount matches 10 run function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/10

# Init処理
    execute as @e[type=armor_stand,tag=ChuzItems.Projectile.ChargedShootingArrow,tag=Chuz.Init,sort=nearest,limit=1] at @s run function chuzitems:item/shooting_star_longbow/common/chargeshot/init

# バースト数をへらす
    scoreboard players remove @s ChuzItems.BurstCount 1

# バーストレート設定
    scoreboard players set @s ChuzItems.BurstRate 1

# サウンド
    playsound minecraft:block.respawn_anchor.deplete player @a ^ ^ ^1 2 2
    playsound minecraft:entity.arrow.shoot player @a ^ ^ ^1 1.5 1
    playsound minecraft:item.crossbow.shoot player @a ^ ^ ^1 1.5 1

# 使用者ではない
    tag @s remove This