#> chuz_items:common/throw_item/main
#
# 投げた武器の確認する
#
# @within function chuz_items:storage

# 私が実行者です
    tag @s add This

# 手元チェック
    #tellraw @a [{"text":"storage: "},{"storage":"chuz:context","nbt":"Item.Mainhand.tag.ChuzData.ItemID"}]
    data modify storage chuz:context ReloadItemCheck.1 set from storage chuz:context Item.Mainhand

# 改めて手元チェック
    data modify storage chuz:context ReloadItemCheck.2 set from entity @s SelectedItem

# 結果は？
    tellraw @a [{"text":"storage: "},{"storage":"chuz:context","nbt":"ReloadItemCheck.1.tag.ChuzData.Reloadable"}]
    tellraw @a [{"text":"storage: "},{"storage":"chuz:context","nbt":"ReloadItemCheck.2.tag.ChuzData.ItemID"}]

# 最初がリロードONで、2回目が素手ならスタートする
    execute if data storage chuz:context ReloadItemCheck.1.tag.ChuzData{Reloadable:1b} unless data storage chuz:context ReloadItemCheck.2 run say 今だ！

# アイテムのリロード処理開始
    execute anchored eyes positioned ^ ^ ^0.05 as @e[type=item,distance=..200,sort=nearest,limit=1] in overworld run function chuz_items:common/throw_item/check

# リセット
    data remove storage chuz:context ReloadItemCheck
    scoreboard players reset @s ChuzItems.Drop
    tag @s remove This