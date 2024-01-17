#> chuzitems:entity/particle/macro
#
# 
#
# @within function chuzitems:entity/particle/tick

# 見た目を変える
    $data modify entity @s[scores={ChuzItems.Tick=1}] text set value '{"text":"\\uE010","font":"particle/$(Font)","color":"#$(Color)"}'
    $data modify entity @s[scores={ChuzItems.Tick=2}] text set value '{"text":"\\uE011","font":"particle/$(Font)","color":"#$(Color)"}'
    $data modify entity @s[scores={ChuzItems.Tick=3}] text set value '{"text":"\\uE012","font":"particle/$(Font)","color":"#$(Color)"}'
    $data modify entity @s[scores={ChuzItems.Tick=4}] text set value '{"text":"\\uE013","font":"particle/$(Font)","color":"#$(Color)"}'
    $data modify entity @s[scores={ChuzItems.Tick=5}] text set value '{"text":"\\uE014","font":"particle/$(Font)","color":"#$(Color)"}'
    $data modify entity @s[scores={ChuzItems.Tick=6}] text set value '{"text":"\\uE015","font":"particle/$(Font)","color":"#$(Color)"}'
    $data modify entity @s[scores={ChuzItems.Tick=7}] text set value '{"text":"\\uE016","font":"particle/$(Font)","color":"#$(Color)"}'
    $data modify entity @s[scores={ChuzItems.Tick=8}] text set value '{"text":"\\uE017","font":"particle/$(Font)","color":"#$(Color)"}'
    $data modify entity @s[scores={ChuzItems.Tick=9}] text set value '{"text":"\\uE018","font":"particle/$(Font)","color":"#$(Color)"}'
    $data modify entity @s[scores={ChuzItems.Tick=10}] text set value '{"text":"\\uE019","font":"particle/$(Font)","color":"#$(Color)"}'

# フレーム数に達したらキル
    $execute if score @s ChuzItems.Tick matches $(Frame) run function chuzitems:entity/particle/kill
