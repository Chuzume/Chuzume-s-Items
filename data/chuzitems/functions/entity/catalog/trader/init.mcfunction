#> chuzitems:entity/catalog/trader/init
#
# 取引
#
# @within function chuzitems:entity/catalog/trader/summon

# 上から降りてくる
    tp @s ~ ~-1001 ~

## 取引を追加
    # レヴォマシンガン
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,xp:0,buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"TechKit: Revomachine Gun","color":"#37CDFF","italic":false}',Lore:['{"text":" "}','{"text":"高い連射力が特徴の、コンパクトな射撃武器です。","color":"white","italic":false}','{"text":"状況に合わせ、射撃モードの切り替えが可能です。","color":"white","italic":false}','{"text":"そして何より、手軽なリロードが魅力！","color":"white","italic":false}']},CustomModelData:9,ChuzData:{ItemID:techkit_revomachine_gun,SellSample:1b}}}}

    # フォトングレイヴ
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,xp:0,buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"Photon Glaive","color":"#37CDFF","italic":false}',Lore:['{"text":" "}','{"text":"投げると手元に戻ってくる、ブーメランのような武器です。","color":"white","italic":false}','{"text":"チャージ機能やリコール機能などを搭載しており、","color":"white","italic":false}','{"text":"攻撃だけでなく移動やアイテムの回収にも使えます。","color":"white","italic":false}']},CustomModelData:20,ChuzData:{ItemID:photon_glaive,SellSample:1b}}}}
    
    # 指向性ジャンプブーツ
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,xp:0,buy:{id:"minecraft:emerald",Count:32b},sell:{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:'{"text":"Directional Jump Boots","color":"#37CDFF","italic":false}',Lore:['{"text":" "}','{"text":"指向性を持ったジャンプを可能にするブーツです。","color":"white","italic":false}'],color:3422015},Trim:{material:"minecraft:diamond",pattern:"minecraft:ward"},HideFlags:226,ChuzData:{ItemID:directional_jump_boots,SellSample:1b}}}}