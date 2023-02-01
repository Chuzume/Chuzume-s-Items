#> chuzitems:entity/catalogue/trader/summon
#
# トレード判定を召喚
#
# @within function chuzitems:entity/catalogue/open

# 見えないようにすごい上で召喚
    summon wandering_trader ~ ~2000 ~ {Team:"Chuz.NoCollision",Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ChuzItems.Entity.Catalogue.Trader","Chuz.Uninterferable"],CustomName:'{"text":"\\uE012\\uE010\\uE013\\uE011","font":"gui","color": "white"}',ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Offers:{Recipes:[]}}

# 召喚者を実行者としてInit処理
    execute positioned ~ ~2000 ~ as @e[type=wandering_trader,tag=ChuzItems.Entity.Catalogue.Trader,sort=nearest,limit=1] run function chuzitems:entity/catalogue/trader/init
