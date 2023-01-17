
# アクションバーをまっさらに
    title @s actionbar {"text":""}

# 手持ち情報削除、アイテム入れ替え
    data remove storage chuz:context Item
    item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'[{"text":"Craftsman Shotgun","color":"aqua","italic":false},{"text":" | Reloading |","color":"gray","italic":false}]',Lore:['{"text":" "}','{"text":"[RClick: Just Reload]","color":"white","italic":false}','{"text":"[Ammo: Shotshell]","color":"white","italic":false}','{"text":" "}','{"text":"\\"連打じゃダメだぞ\\"","color":"gray","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:13,ChuzData:{NoOffhand:1b,NoDrop:1b,ItemID:Craftsman_Shotgun_Reload}} 1

# 演出
    execute anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 10
    playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 0.8 1
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 0.6 1.1
    playsound minecraft:block.piston.contract player @a ~ ~ ~ 0.8 2
    playsound minecraft:block.bell.use player @a ~ ~ ~ 1 2
