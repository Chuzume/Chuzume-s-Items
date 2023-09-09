#> chuzitems:item/armor/directional_jump_boots/explosion/pre
#
# 
#
# @within advancement chuzitems:delta_test/pre

#
    advancement revoke @s only chuzitems:delta_test/pre

#
    summon marker ~ ~ ~ {Tags:["BackTo"]}
    execute positioned 0 1000 0 run tp @s ^ ^ ^0.01

    say 1