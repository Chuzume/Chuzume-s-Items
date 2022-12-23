#> chuz_items:common/throw_item/check
#
# 投げられたアイテムをチェックする
#
# @within function chuz_items:common/throw_item/main

# アイテムタグの"ChuzData:Reloadable"を取得
    data modify storage chuz:context Reloadable set from entity @s Item.tag.ChuzData.Reloadable

# ストレージの"Reloadable"が1bならリロード処理に移行
    execute if data storage chuz:context {Reloadable:1b} run function chuz_items:common/throw_item/start_reload

# リセット
    data remove storage chuz:context Reloadable