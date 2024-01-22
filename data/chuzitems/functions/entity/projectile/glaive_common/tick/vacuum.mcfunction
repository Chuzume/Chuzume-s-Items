#> chuzitems:entity/projectile/glaive_common/tick/vacuum
#
# 
#
# @within function chuzitems:entity/projectile/**

# 付近の吸い込み対象にタグ付与
    tag @e[type=#chuzitems:vacuumable,distance=0.5..2] add This

# サウンド
    execute if entity @e[type=#chuzitems:vacuumable,type=!experience_orb,tag=This,sort=nearest,limit=1] at @p[tag=Chuz.ID.Target] run playsound minecraft:entity.item.pickup neutral @p ~ ~ ~ 1 1

# 乗せる
    ride @e[type=#chuzitems:vacuumable,tag=This,sort=nearest,limit=1] mount @s

# リセット
    tag @e[type=#chuzitems:vacuumable,tag=This] remove This