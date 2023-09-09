#> chuzitems:player/macro/
#
# 
#
# @within function chuzitems:player/tick

# データ取得
    data modify storage chuz:context foo.mainhand set from storage chuz:context Item.Mainhand.tag.ChuzData.ItemID
    data modify storage chuz:context foo.offhand set from storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData.ItemID

# マクロ実行
    function chuzitems:player/macro/mainhand with storage chuz:context foo
    function chuzitems:player/macro/offhand with storage chuz:context foo

# データ削除
    data remove storage chuz:context foo
