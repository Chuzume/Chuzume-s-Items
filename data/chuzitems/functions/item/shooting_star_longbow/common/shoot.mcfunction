#> chuzitems:item/shooting_star_longbow/common/shoot
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/main

# チャージ
    execute anchored eyes positioned ^ ^ ^ run function chuzitems:item/shooting_star_longbow/common/chargeshot/

# サウンドを停止
    stopsound @s player minecraft:entity.arrow.shoot

# 矢を削除
    kill @e[type=arrow,sort=nearest,limit=1]