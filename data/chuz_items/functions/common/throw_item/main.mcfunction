#> chuz_items:common/throw_item/main
#
# 投げた武器の確認する
#
# @within function chuz_items:storage

# スコアリセット
    scoreboard players reset @s ChuzItems.DropReload

# 素手かどうかチェック
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem

# 手持ちが素手なら、アイテムのリロード処理開始
    tag @s add This
    execute if data storage chuz:context Item.Mainhand{tag:{ChuzData:{ItemID:{}}}} anchored eyes positioned ^ ^ ^0.05 as @e[type=item,distance=..200,sort=nearest,limit=1] in overworld run function chuz_items:common/throw_item/check
    tag @s remove This