#> chuzitems:entity/photon_glaive/init
#
# 
#
# @within function chuzitems:item/photon_glaive/mainhand/knowledge_book/

## お願いOhMyDat!
    function oh_my_dat:please

# UUIDコピー
    execute run data modify entity @s data.ChuzData.Owner set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz.EntityID = @p Chuz.PlayerID

# Init終了
    tag @s remove Chuz.Init