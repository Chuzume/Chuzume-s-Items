#> chuzitems:entity/projectile/ender_glaive/tick/catch/
#
# 
#
# @within function chuzitems:entity/projectile/ender_glaive/tick/wait

# キャッチ
    function chuzitems:entity/projectile/glaive_common/tick/catch/

# カスタムパーティクル
    summon text_display ~ ~ ~ {billboard:"center",Tags:["Chuz.Particle"],Passengers:[{id:"minecraft:marker",data:{font:warp,color:FF00FF,frame:5}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},background:0}

# 自分の位置で演出
    playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 0.5 1
    #particle minecraft:explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..120]
    particle minecraft:dust_color_transition 1 0.5 1 1 1 0 1 ~ ~ ~ 0.25 0.25 0.25 0 50 force @a[distance=..120]

# プレイヤーの位置で演出
    execute at @p[tag=Chuz.ID.Target] positioned ~ ~1 ~ run function chuzitems:entity/projectile/ender_glaive/tick/catch/vfx

# 乗せてるアイテムを持ち主に送る
    execute on passengers if entity @s[type=#chuzitems:vacuumable] at @p[tag=Chuz.ID.Target] run tp ~ ~ ~

# キル
    function chuzitems:entity/projectile/glaive_common/tick/kill