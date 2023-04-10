#> chuzitems:entity/beam_emitter/finish/spread
#
# 
#
# @within function chuzitems:entity/beam_emitter/tick

#> ビームPos
# @private
    #declare tag BeamPos

# 拡散させてそこからビーム撃つ
    summon marker ~ ~ ~ {Tags:["BeamPos"]}
    execute if score @s ChuzItems.Tick matches 120..124 run spreadplayers ~ ~ 5 5 true @e[type=marker,tag=BeamPos,sort=nearest,limit=1]
    execute if score @s ChuzItems.Tick matches 125..129 run spreadplayers ~ ~ 4 4 true @e[type=marker,tag=BeamPos,sort=nearest,limit=1]
    execute if score @s ChuzItems.Tick matches 130..134 run spreadplayers ~ ~ 3 3 true @e[type=marker,tag=BeamPos,sort=nearest,limit=1]
    execute if score @s ChuzItems.Tick matches 135..139 run spreadplayers ~ ~ 2 2 true @e[type=marker,tag=BeamPos,sort=nearest,limit=1]
    execute if score @s ChuzItems.Tick matches 140.. run spreadplayers ~ ~ 1 1 true @e[type=marker,tag=BeamPos,sort=nearest,limit=1]
    execute at @e[type=marker,tag=BeamPos,sort=nearest,limit=1] positioned ~ ~20 ~ run function chuzitems:entity/beam_emitter/finish/shoot 
    kill @e[type=marker,tag=BeamPos,sort=nearest,limit=1]