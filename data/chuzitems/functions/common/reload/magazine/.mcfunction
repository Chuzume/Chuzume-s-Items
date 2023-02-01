#> chuzitems:common/reload/magazine/
#
# マガジン式の弾薬補充システム。ちょっとややこしめ。
#
# @within function chuzitems:item/**

# 消費する弾薬量を決定する
    # 手持ちのリロード中の銃から最大弾薬を取得
        execute store result score $AmmoConsume Chuz.Temporary run data get storage chuz:context Item.Mainhand.tag.ChuzData.MaxAmmo
    # 手持ちのリロード中の銃に残ってる弾薬を取得
        execute store result score $AmmoKeep Chuz.Temporary run data get storage chuz:context Item.Mainhand.tag.ChuzData.Ammo
    # 上2つで計算して最終的な数を決定
        scoreboard players operation $AmmoConsume Chuz.Temporary -= $AmmoKeep Chuz.Temporary
    # 先に増やす弾薬を加算しとく
        scoreboard players operation $AmmoAddition Chuz.Temporary = $AmmoKeep Chuz.Temporary

# アイテムを受け取ったので手元を更新
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    
# 弾薬消費
    function chuzitems:common/reload/magazine/consume_ammo

# 消費に成功した弾薬のぶんだけ弾数を増やす
    execute store result storage chuz:context Item.Mainhand.tag.ChuzData.Ammo int 1 run scoreboard players get $AmmoAddition Chuz.Temporary

# 更新
    execute in overworld run function chuzitems:item/replaceitem

# スコアリセット
    scoreboard players reset $AmmoConsume Chuz.Temporary
    scoreboard players reset $AmmoKeep Chuz.Temporary
    scoreboard players reset $AmmoAddition Chuz.Temporary