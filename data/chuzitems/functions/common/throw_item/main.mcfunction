#> chuzitems:common/throw_item/main
#
# 投げた武器の確認する
#
# @within function chuzitems:player/tick

# 私が実行者です
    tag @s add This

# 手元チェック
    data modify storage chuz:context ReloadItemCheck.1 set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HoldedItem

# アイテムのリロード処理開始
    execute if data storage chuz:context ReloadItemCheck.1.tag.ChuzData{} unless data storage chuz:context Item.Mainhand.Count anchored eyes positioned ^ ^ ^0.05 as @e[type=item,distance=..200,sort=nearest,limit=1] in overworld run function chuzitems:common/throw_item/check

# リセット
    data remove storage chuz:context ReloadItemCheck
    scoreboard players reset @s ChuzItems.Drop
    tag @s remove This