#> chuzitems:entity/catalogue/trader/init
#
# 取引
#
# @within function chuzitems:entity/catalogue/trader/summon

# 上から降りてくる
    tp @s ~ ~-2001 ~

# 取引を追加
    data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,xp:0,buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"TechKit: Revomachine Gun","color":"#37CDFF","italic":false}',Lore:['{"text":" "}','{"text":"高い連射力が特徴の、コンパクトな射撃武器です。","color":"white","italic":false}','{"text":"状況に合わせ、射撃モードの切り替えが可能です。","color":"white","italic":false}','{"text":"そして何より、手軽なリロードが魅力！","color":"white","italic":false}']},CustomModelData:9,ChuzData:{ItemID:TechKit_RevomachineGun_Sample,SellSample:1b}}}}