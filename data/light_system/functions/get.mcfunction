# データ取る
    data remove storage chuz:context Item
    execute unless data storage chuz:context Item.Mainhand run data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Inventory set from entity @s Inventory