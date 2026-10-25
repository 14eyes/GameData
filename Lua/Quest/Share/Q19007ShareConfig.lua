main_id = 19007
local tbl = {}
local n = 1900702
tbl[1] = 1900701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133004439"}}},
    SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133004439"}}}
}

rewind_data = {["1900701"] = {}}

quest_data = {
    ["1900701"] = {},
    ["1900702"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala10",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala10",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
