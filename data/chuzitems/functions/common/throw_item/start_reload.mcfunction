#> chuzitems:common/throw_item/start_reload
#
# 投げた際のイベントを実行する
#
# @within function chuzitems:common/throw_item/check

# プレイヤーのUUIDを入れる
    execute on origin run tag @s add This
    data modify storage chuz:context UUID set from entity @p[tag=This,limit=1] UUID

# 最大数チェック
    data modify storage chuz:context MaxAmmo set from entity @s Item.tag.ChuzData.MaxAmmo
    execute store success storage chuz:context Reload int 1 run data modify storage chuz:context MaxAmmo set from entity @s Item.tag.ChuzData.Ammo

# 暴力で投げたアイテムを現在の手持ちということにする
    execute if data storage chuz:context {Reload:1} run data modify storage chuz:context Item.Mainhand set from entity @s Item

# リロードの開始を宣言
    execute if data storage chuz:context {Reload:1} on origin run function chuzitems:item/replaceitem
    execute if data storage chuz:context {Reload:1} on origin run function chuzitems:common/reload/check_have_ammo
    execute if data storage chuz:context {Reload:1} run kill @s
    
# 最大時
    execute if data storage chuz:context {Reload:0} in overworld run function chuzitems:common/throw_item/return_item

# リセット
    data remove storage chuz:context MaxAmmo
    data remove storage chuz:context Reload
    data remove storage chuz:context UUID
    scoreboard players reset $isSuccess Chuz.Temporary
    tag @a[tag=This] remove This

# Thanks Yavu
#
#   \ Heyo! /
#         _
#   ＿＿＿|L
#   | !  ! |
#   ￣￣￣￣