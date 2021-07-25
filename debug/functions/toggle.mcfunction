say debug mode toggled

scoreboard players set @s debug 0

scoreboard players add debug debug 1

execute if score debug debug matches 1 run function debug:on_once
execute if score debug debug matches ..0 run function debug:off_once
execute if score debug debug matches 2.. run function debug:off_once