#> chuz_items:entity/catalogue/trader/summon
#
# トレード判定を召喚
#
# @within function chuz_items:entity/catalogue/open

# 見えないようにすごい上で召喚
    summon wandering_trader ~ ~10000 ~ {Team:"Chuz.NoCollision",Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ChuzItems.Entity.Catalogue.Trader"],CustomName:'{"text":"\\uE012\\uE010\\uE013\\uE011","font":"gui","color": "white"}',ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Offers:{Recipes:[{maxUses:2147483647,buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'[{"text":"TechKit: Revomachine Gun","color":"#37CDFF","italic":false},{"text":" "},{"text":"| ","color":"gray"},{"text":"30","color":"gray","italic":false},{"text":" |","color":"gray"}]',Lore:['{"text":" "}','{"text":"[RClick: Fire]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":"[Ammo: Light Bullet]","color":"white","italic":false}','{"text":" "}','{"text":"TechKit社開発のSMGタイプの武器。","color":"gray","italic":false}','{"text":"独特が過ぎるリロード方式を採用している。","color":"gray","italic":false}']},HideFlags:6,Damage:0,CustomModelData:9,ChuzData:{Reloadable:True,NoOffhand:True,MaxAmmo:30,Ammo:30,AmmoUse:1,Ammotype:Light_Bullet,ItemID:TechKit_Revomachine_Gun,ItemMode:Standby,RawName: '{"text":"TechKit: Revomachine Gun","color":"#37CDFF","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-20.0d,Operation:0,UUID:[I;-931235547,-1351991161,-2005803492,584707288],Slot:"mainhand"}]}}}]}}

# 上から下ろす
    execute positioned ~ ~10000 ~ run tp @e[type=wandering_trader,tag=ChuzItems.Entity.Catalogue.Trader,sort=nearest,limit=1] ~ ~-10001 ~ 