#> chuz_items:common/throw_item/main
#
# 投げた武器の確認する
#
# @within function chuz_items:storage

# スコアリセット
    scoreboard players reset @s ChuzItems.DropReload

# 投げた武器は何かチェック
    tag @s add This
    execute anchored eyes positioned ^ ^ ^0.05 as @e[type=item,distance=..200,sort=nearest,limit=1] in overworld run function chuz_items:common/throw_item/check
    tag @s remove This