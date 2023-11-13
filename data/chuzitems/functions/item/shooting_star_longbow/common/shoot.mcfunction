#> chuzitems:item/shooting_star_longbow/common/shoot
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/main

# ノーチャージ
    execute if entity @e[type=arrow,nbt={crit:0b},distance=..5,sort=nearest,limit=1] run say NAH

# チャージ
    execute if entity @e[type=arrow,nbt={crit:1b},distance=..5,sort=nearest,limit=1] anchored eyes positioned ^ ^ ^ run function chuzitems:item/shooting_star_longbow/common/chargeshot/locked/

# サウンドを停止
    stopsound @s player minecraft:entity.arrow.shoot

# 矢を削除
    kill @e[type=arrow,sort=nearest,limit=1]