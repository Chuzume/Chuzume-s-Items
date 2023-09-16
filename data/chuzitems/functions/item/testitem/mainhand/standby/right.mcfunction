#> chuzitems:item/testitem/mainhand/standby/
#
# 
#
# @within function chuzitems:item/testitem/mainhand/standby/

# 跳躍
    #scoreboard players set $Power Chuz.Motion.Power 2
    #execute rotated ~ -90 run function chuzitems:lib/player_motion/

# 飛ばす
    scoreboard players set $strength delta.api.launch 2000
    execute rotated ~ ~ run function delta:api/launch_looking