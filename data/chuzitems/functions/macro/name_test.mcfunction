#> chuzitems:macro/name_test
#
# 
#
# @within function chuzitems:tick

# 手持ちを指定して、ソイツの名前をsayで吐き出す
    data modify storage chuz:context hoge set from entity @s SelectedItem.tag.ChuzData.ItemID
    say @s
    $function chuzitems:macro/$(hoge)
    #$setblock ~ ~ ~ $(block)
