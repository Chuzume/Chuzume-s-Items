#> chuzitems:player/click_detection/main
#
# これを実行している間、interactionをめっちゃ召喚する
#
# @within function chuzitems:**

# 前後左右
    summon interaction ~ ~-0.4 ~0.17 {width:0.17f,height:0.5f,Tags:["Chuz.Entity.Interaction"]}
    summon interaction ~ ~-0.4 ~-0.17 {width:0.17f,height:0.5f,Tags:["Chuz.Entity.Interaction"]}
    summon interaction ~0.17 ~-0.4 ~ {width:0.17f,height:0.5f,Tags:["Chuz.Entity.Interaction"]}
    summon interaction ~-0.17 ~-0.4 ~ {width:0.17f,height:0.5f,Tags:["Chuz.Entity.Interaction"]}

# 上
    summon interaction ~ ~ ~ {width:0.17f,height:0.01f,Tags:["Chuz.Entity.Interaction"]}

# 下
    summon interaction ~ ~-0.4 ~ {width:0.17f,height:0.01f,Tags:["Chuz.Entity.Interaction"]}
    summon interaction ~ ~-0.4 ~ {width:0.17f,height:0.01f,Tags:["Chuz.Entity.Interaction"]}