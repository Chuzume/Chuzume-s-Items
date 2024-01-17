#> chuzitems:item/photon_glaive/common/throw
#
# 
#
# @within function
#   chuzitems:item/photon_glaive/offhand/knowledge_book/
#   chuzitems:item/photon_glaive/mainhand/knowledge_book/

# 拡散用マーカー召喚
    execute anchored eyes run summon marker ^ ^ ^30 {Tags:["SpreadMarker"]}

# Init処理
    execute as @e[type=armor_stand,tag=ChuzItems.Projectile.PhotonGlaive,tag=Chuz.Init,sort=nearest,limit=1] at @s run function chuzitems:item/photon_glaive/common/init

# サウンド
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 2 0.7

# チャージ値リセット
    scoreboard players reset @s ChuzItems.Charge

# 使用者解除
    tag @s remove This