#> chuzitems:common/throw_item/check
#
# 投げられたアイテムをチェックする
#
# @within function chuzitems:common/throw_item/main

# アイテムタグの"ChuzData"を取得
    data modify storage chuz:context DropItem set from entity @s Item.tag.ChuzData

# "Reloadable"が1bならリロード処理に移行
    execute if data storage chuz:context DropItem{Reloadable:1b} run function chuzitems:common/throw_item/start_reload

# "NoDrop"が1bなら手元に戻ってくる
    execute if data storage chuz:context DropItem{NoDrop:1b} run function chuzitems:common/throw_item/return_item

# リセット
    data remove storage chuz:context DropItem