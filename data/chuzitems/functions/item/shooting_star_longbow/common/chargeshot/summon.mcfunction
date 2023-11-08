#> chuzitems:item/shooting_star_longbow/common/chargeshot/summon
#
# 
#
# @within function 
#   chuzitems:item/shooting_star_longbow/common/main

# 実行者です
    tag @s add This

# 弾丸召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","Chuz.Projectile","Chuz.Init"]}

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