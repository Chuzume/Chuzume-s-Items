#> chuzitems:item/craftsman_shotgun/mainhand/standby/shot/jump
#
# 
#
# @within function chuzitems:item/craftsman_shotgun/mainhand/standby/shot/

# 飛ばす
    scoreboard players set $strength delta.api.launch -7000
    execute rotated ~ ~ run function delta:api/launch_looking