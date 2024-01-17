#> chuzitems:entity/projectile/ricochet_glaive/tick/catch
#
# 
#
# @within function chuzitems:entity/projectile/ricochet_glaive/tick/recursion

# キャッチ
    function chuzitems:entity/projectile/glaive_common/tick/catch/

# 演出
    playsound minecraft:block.iron_door.close neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1.5 1
    particle crit ~ ~ ~ 0 0 0 0.5 10

# キル
    function chuzitems:entity/projectile/glaive_common/tick/kill