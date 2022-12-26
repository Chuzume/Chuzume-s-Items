#> chuz_items:common/reload/magazine/no_ammo_need
#
# 弾丸いらないモードのときの処理。常に武器の弾丸の最大値を回復
#
# @within function chuz_items:item/**

# 消費する弾薬量を決定する
    # 手持ちのリロード中の銃から最大弾薬を取得
        execute store result score $AmmoAddition Chuz.Temporary run data get storage chuz:context Item.Mainhand.tag.ChuzData.MaxAmmo

# アイテムを受け取ったので手元を更新
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem

# 消費に成功した弾薬のぶんだけ弾数を増やす
    execute store result storage chuz:context Item.Mainhand.tag.ChuzData.Ammo int 1 run scoreboard players get $AmmoAddition Chuz.Temporary

# 更新
    function chuz_items:item/replaceitem

# スコアリセット
    scoreboard players reset $AmmoAddition Chuz.Temporary