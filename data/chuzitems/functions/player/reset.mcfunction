#> chuzitems:player/reset
#
# 色々リセットする
#
# @within function chuzitems:tick

# 条件付き
    scoreboard players reset @s[tag=!Chuz.Using.Bow] ChuzItems.Bow.Charge
    
# タグ
    tag @s[tag=ChuzItems.ReloadStart] remove ChuzItems.ReloadStart
    tag @s[tag=Chuz.Click.Left] remove Chuz.Click.Left
    tag @s[tag=Chuz.Click.Right] remove Chuz.Click.Right
    tag @s[tag=Chuz.PreventRun] remove Chuz.PreventRun
    tag @s[tag=Chuz.Using.Spyglass] remove Chuz.Using.Spyglass
    tag @s[tag=Chuz.Using.Bow] remove Chuz.Using.Bow

# スコア
    scoreboard players reset @s[scores={ChuzItems.Sneak=0..}] ChuzItems.Sneak
    scoreboard players reset @s[scores={ChuzItems.Crossbow=1..}] ChuzItems.Crossbow
    scoreboard players reset @s[scores={ChuzItems.FungusStick=0..}] ChuzItems.FungusStick
    scoreboard players reset @s[scores={ChuzItems.KnowledgeBook=1..}] ChuzItems.KnowledgeBook
    scoreboard players reset @s[scores={ChuzItems.Trade=1..}] ChuzItems.Trade
    scoreboard players reset @s[scores={ChuzItems.Jump=1..}] ChuzItems.Jump
    scoreboard players reset @s[scores={ChuzItems.Death=0..}] ChuzItems.Death
    scoreboard players reset @s[scores={ChuzItems.Bow=0..}] ChuzItems.Bow
    scoreboard players reset @s[scores={ChuzItems.BurstCount=..0}] ChuzItems.BurstCount 