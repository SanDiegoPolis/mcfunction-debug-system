#execute if score debug debug matches 1 run say tick

execute if score debug debug matches 1 run function debug:on_tick
execute if score debug debug matches ..0 run function debug:off_tick
execute if score debug debug matches 2.. run function debug:off_tick

execute as @a[scores={debug=1..}] run function debug:toggle

scoreboard players enable @a debug