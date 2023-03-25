#> chuzitems:player/click_detection/main
#
# これを実行している間、interactionをめっちゃ召喚する
#
# @within function chuzitems:**

# 召喚する 
    #execute as @a at @a anchored eyes rotated ~ 0 run summon interaction ^ ^-0.8 ^0.15 {width:0.2f,height:1f,Tags:["Chuz.Entity.Interaction"]}
    #execute as @a at @a anchored eyes rotated ~ 0 run summon interaction ^0.13 ^-0.8 ^0.15 {width:0.2f,height:1f,Tags:["Chuz.Entity.Interaction"]}
    #execute as @a at @a anchored eyes rotated ~ 0 run summon interaction ^-0.13 ^-0.8 ^0.15 {width:0.2f,height:1f,Tags:["Chuz.Entity.Interaction"]}

# 前後左右
    summon interaction ~ ~1.2 ~0.15 {width:0.15f,height:0.5f,Tags:["Chuz.Entity.Interaction"]}
    summon interaction ~ ~1.2 ~-0.15 {width:0.15f,height:0.5f,Tags:["Chuz.Entity.Interaction"]}
    summon interaction ~0.15 ~1.2 ~ {width:0.15f,height:0.5f,Tags:["Chuz.Entity.Interaction"]}
    summon interaction ~-0.15 ~1.2 ~ {width:0.15f,height:0.5f,Tags:["Chuz.Entity.Interaction"]}

# 上
    execute anchored eyes rotated ~ 0 run summon interaction ^ ^0.07 ^0 {width:0.15f,height:0.01f,Tags:["Chuz.Entity.Interaction"]}

# 下
    summon interaction ~ ~1.2 ~ {width:0.15f,height:0.01f,Tags:["Chuz.Entity.Interaction"]}



# 旧判定 チャンクの周辺で奇妙なことになる
    #execute as @a at @a anchored eyes rotated ~ 0 run summon interaction ^ ^0.1 ^ {width:0.6f,height:0.05f,Tags:["Chuz.Entity.Interaction"]}
