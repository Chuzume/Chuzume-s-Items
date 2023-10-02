#> chuzitems:entity/catalog/trader/init
#
# 取引
#
# @within function chuzitems:entity/catalog/trader/summon

# 上から降りてくる
    tp @s ~ ~-1001 ~

## 取引を追加
    # レヴォマシンガン
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,xp:0,buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"TechKit: Revomachine Gun","color":"#37CDFF","italic":false}',Lore:['{"text":" "}','{"text":"高い連射力が特徴の、コンパクトな射撃武器です。","color":"white","italic":false}','{"text":"状況に合わせ、射撃モードの切り替えが可能です。","color":"white","italic":false}','{"text":"そして何より、手軽なリロードが魅力！","color":"white","italic":false}']},CustomModelData:9,ChuzData:{ItemID:TechKit_RevomachineGun,SellSample:1b}}}}
    
    # 指向性ジャンプブーツ
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,xp:0,buy:{id:"minecraft:emerald",Count:32b},sell:{id:"minecraft:iron_boots",Count:1b,tag:{display:{Name:'{"text":"Directional Jump Boots","color":"#37CDFF","italic":false}',Lore:['{"text":" "}','{"text":"指向性を持ったジャンプを可能にするブーツです。","color":"white","italic":false}']},HideFlags:2,ChuzData:{ItemID:Directional_Jump_Boots,SellSample:1b}}}}