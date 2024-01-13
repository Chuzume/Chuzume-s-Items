#> chuzitems:entity/projectile/glaive_common/tick/catch/store_current_item
#
# 
#
# @within function chuzitems:entity/projectile/**

# 今の手持ちをストレージに放り込む
    # メインハンド
        execute if entity @s[tag=!ChuzItems.Projectile.PhotonGlaive.Off] as @p[gamemode=!creative,tag=Chuz.ID.Target] run function chuzitems:entity/photon_glaive/tick/catch/get_data/mainhand
    # オフハンド
        execute if entity @s[tag=ChuzItems.Projectile.PhotonGlaive.Off] as @p[gamemode=!creative,tag=Chuz.ID.Target] run function chuzitems:entity/photon_glaive/tick/catch/get_data/offhand
