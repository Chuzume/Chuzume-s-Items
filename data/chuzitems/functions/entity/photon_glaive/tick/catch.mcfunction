#> chuzitems:entity/photon_glaive/tick/catch
#
# キャッチ
#
# @within function chuzitems:entity/photon_glaive/tick/return

# 持ち主に渡す
    loot give @p[tag=Chuz.ID.Target] loot chuzitems:item/photon_glaive/

# キル
    function chuzitems:entity/photon_glaive/tick/kill