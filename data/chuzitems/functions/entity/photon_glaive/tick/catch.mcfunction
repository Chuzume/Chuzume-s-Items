#> chuzitems:entity/photon_glaive/tick/catch
#
# キャッチ
#
# @within function chuzitems:entity/photon_glaive/tick/return

# 持ち主に渡す(メインハンド)
    # 前の手持ちを足元に落とす
        data remove storage chuz:context Item
        data modify storage chuz:context Item.Mainhand merge from entity @s SelectedItem
        data modify storage chuz:context Item.Offhand merge from entity @s Inventory[{Slot:-106b}]
        data modify storage chuz:context Item.Offhand merge value {Slot:0b}
        data modify block 100001 -64 100000 Items set value []
        data modify block 100001 -64 100000 Items append from storage chuz:context Item.Offhand
        loot replace entity @s weapon.mainhand 1 mine 100001 -64 100000 debug_stick
        item replace entity @s weapon.offhand with air
        data modify block 100001 -64 100000 Items append from storage chuz:context Item.Mainhand
        execute at @p[gamemode=!creative,tag=Chuz.ID.Target] if data storage chuz:context Item.Mainhand run loot spawn ~ ~ ~ @s weapon.offhand 1 mine 100001 -64 100000 debug_stick

# 手持ちをブーメランにする
    execute if entity @s[tag=!ChuzItems.Projectile.PhotonGlaive.Off] run loot replace entity @p[gamemode=!creative,tag=Chuz.ID.Target] weapon.mainhand loot chuzitems:item/photon_glaive/


# 持ち主に渡す(オフハンド)
        execute if entity @s[tag=!ChuzItems.Projectile.PhotonGlaive.Off] run loot replace entity @p[gamemode=!creative,tag=Chuz.ID.Target] weapon.offhand loot chuzitems:item/photon_glaive/
    #オフハンド埋まってたらgiveで渡す


# キル
    function chuzitems:entity/photon_glaive/tick/kill