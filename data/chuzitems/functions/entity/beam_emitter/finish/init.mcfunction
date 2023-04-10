#> chuzitems:entity/beam_emitter/finish/init
#
# 
#
# @within function chuzitems:entity/beam_emitter/finish/shoot

# 向き
    #data modify entity @s Rotation set from entity @p[tag=This] Rotation
    tp @s ~ ~ ~ ~ 90
    #execute facing entity @e[tag=Test,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# データのマージ
    data merge entity @s {shadow_strength:0f,Tags:["Chuz.Projectile","ChuzItems.Projectile.Beam"],brightness:{sky:15,block:15}}

## カラー決定
    tag @s add ChuzItems.Color.White