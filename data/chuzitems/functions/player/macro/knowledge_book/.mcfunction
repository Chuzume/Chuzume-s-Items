#> chuzitems:player/macro/knowledge_book/
#
# 執念の産物
#
# @within function chuzitems:player/tick

# 保存用のアマスタからデータを取る
#    data modify storage chuz:context bookdata set from entity @e[tag=Test,sort=nearest,limit=1] HandItems[0]
#    function chuzitems:player/macro/knowledge_book/active with storage chuz:context bookdata.tag.ChuzData

# 手元チェック
    data modify storage chuz:context ThrownItem.Main set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ThrownItem.Main
    data modify storage chuz:context ThrownItem.Off set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ThrownItem.Off
    #tellraw @a [{"text":"メインハンド投擲: "},{"storage":"chuz:context","nbt":"ThrownItem.Main.tag.ChuzData.ItemID"}]
    execute unless data storage chuz:context ThrownItem.Main{id:"minecraft:knowledge_book"} run tellraw @a [{"text":"オフハンド投擲: "},{"storage":"chuz:context","nbt":"ThrownItem.Off.tag.ChuzData.ItemID"}]

# 投擲処理
    function chuzitems:player/macro/knowledge_book/mainhand with storage chuz:context ThrownItem.Main.tag.ChuzData
    execute unless data storage chuz:context ThrownItem.Main{id:"minecraft:knowledge_book"} run function chuzitems:player/macro/knowledge_book/offhand with storage chuz:context ThrownItem.Off.tag.ChuzData

# アイテムのリロード処理開始
    #data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem

# リセット
    data remove storage chuz:context ThrownItem