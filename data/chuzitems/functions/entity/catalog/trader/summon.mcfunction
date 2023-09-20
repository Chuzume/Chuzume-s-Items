#> chuzitems:entity/catalog/trader/summon
#
# トレード判定を召喚
#
# @within function chuzitems:entity/catalog/open

# 見えないようにすごい上で召喚
    summon wandering_trader ~ ~1000 ~ {Team:"Chuz.NoCollision",Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["ChuzItems.Entity.Catalog.Trader","Chuz.Uninterferable"],CustomName:'{"text":"\\uE012\\uE010\\uE013\\uE011","font":"gui","color": "white"}',active_effects:[{id:invisibility,amplifier:0b,duration:2147483647,showparticles:0b,show_particles:0b}],Offers:{Recipes:[]}}

# 召喚者を実行者としてInit処理
    execute positioned ~ ~1000 ~ as @e[type=wandering_trader,tag=ChuzItems.Entity.Catalog.Trader,sort=nearest,limit=1] run function chuzitems:entity/catalog/trader/init
