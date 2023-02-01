
# アクションバーをまっさらに
    title @s actionbar {"text":""}

# 手持ち情報削除、アイテム入れ替え
    data remove storage chuz:context Item
    loot replace entity @s weapon.mainhand loot chuzitems:item/shotgun/reload

# 演出
    execute anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 10
    playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 0.8 1
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 0.6 1.1
    playsound minecraft:block.piston.contract player @a ~ ~ ~ 0.8 2
    playsound minecraft:block.bell.use player @a ~ ~ ~ 1 2
