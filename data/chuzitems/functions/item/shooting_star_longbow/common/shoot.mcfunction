#> chuzitems:item/shooting_star_longbow/common/shoot
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/main


# サウンドを停止
    stopsound @s player minecraft:entity.arrow.shoot

# ノーチャージ
    execute if score @s ChuzItems.Bow.Charge matches ..18 anchored eyes positioned ^ ^ ^ run function chuzitems:item/shooting_star_longbow/common/normalshot/

# チャージ
    execute if score @s ChuzItems.Bow.Charge matches 19.. anchored eyes positioned ^ ^ ^ run function chuzitems:item/shooting_star_longbow/common/chargeshot/

# 矢を削除
    kill @e[type=arrow,sort=nearest,limit=1]