#> chuzitems:player/macro/knowledge_book/
#
# 執念の産物
#
# @within function chuzitems:player/tick

# 手元チェック
    data modify storage chuz:context ThrownItem.Main set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ThrownItem.Main
    data modify storage chuz:context ThrownItem.Off set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ThrownItem.Off

# 投擲処理
    function chuzitems:player/macro/knowledge_book/mainhand with storage chuz:context ThrownItem.Main.tag.ChuzData
    execute unless data storage chuz:context ThrownItem.Main{id:"minecraft:knowledge_book"} run function chuzitems:player/macro/knowledge_book/offhand with storage chuz:context ThrownItem.Off.tag.ChuzData

#
    #tellraw @a [{"text":"投擲時: "},{"storage":"chuz:context","nbt":"ThrownItem.Main.tag.ChuzData.ItemID"}]

# リセット
    data remove storage chuz:context ThrownItem
