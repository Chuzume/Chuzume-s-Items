
# アクションバーをまっさらに
    title @s actionbar {"text":""}

# 手持ち情報削除、アイテム入れ替え
    data remove storage chuz:context Item
    item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'[{"text":"Craftsman Grenade Launcher","color":"aqua","italic":false},{"text":" | Reloading |","color":"gray","italic":false}]',Lore:['{"text":" "}','{"text":"[Ammo: Explosive Cartridge]","color":"white","italic":false}','{"text":" "}','{"text":"\\"おっきな弾を装填\\"","color":"gray","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:14,ChuzData:{NoOffhand:true,ItemID:Craftsman_Grenade_Launcher_Reload}} 1

# 演出
    playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 0.8 1
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 0.6 1.1
    playsound minecraft:block.piston.contract player @a ~ ~ ~ 0.8 2