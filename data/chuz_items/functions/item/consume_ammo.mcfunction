
# 対象スロットの残り使用回数取得
    execute store result score $Ammo Chuz.Temporary run data get storage chuz:context Item.Mainhand.tag.ChuzData.Ammo

# 減算
    execute store result score $AmmoUse Chuz.Temporary run data get entity @s SelectedItem.tag.ChuzData.AmmoUse
    scoreboard players operation $Ammo Chuz.Temporary -= $AmmoUse Chuz.Temporary

# 置き換え
    data modify storage chuz:context Item.Mainhand.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    execute store result storage chuz:context Item.Mainhand.tag.ChuzData.Ammo int 1 run scoreboard players get $Ammo Chuz.Temporary

# 更新
    function chuz_items:item/replaceitem