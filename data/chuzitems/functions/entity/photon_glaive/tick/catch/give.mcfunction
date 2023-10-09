#> chuzitems:entity/photon_glaive/tick/catch/give
#
# 直前のアイテムをgiveする
#
# @within function chuzitems:entity/photon_glaive/tick/catch/

# 渡す
    $give @s $(id)$(tag) $(count)
    #$say give @s $(id)$(tag) $(count)

# リセット
    data remove storage chuz:context Give