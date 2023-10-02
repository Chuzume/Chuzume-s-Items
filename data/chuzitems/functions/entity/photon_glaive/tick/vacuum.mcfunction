#> chuzitems:entity/photon_glaive/tick/vacuum
#
# 
#
# @within function chuzitems:entity/photon_glaive/tick/move/

# サウンド
    execute if entity @s[type=!experience_orb] at @p[tag=Chuz.ID.Target] run playsound minecraft:entity.item.pickup neutral @p ~ ~ ~ 1 1

# 乗せる
    ride @s mount @e[type=armor_stand,tag=ChuzItems.Projectile.PhotonGlaive,sort=nearest,limit=1]