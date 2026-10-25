main_id = 19006
local tbl = {}
local n = 1900602
local v = 1900603
tbl[1] = 1900601
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133004438"}}},
    SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133004438"}}}
}

rewind_data = {["1900601"] = {}, ["1900603"] = {}}

quest_data = {
    ["1900601"] = {},
    ["1900602"] = {},
    ["1900603"] = {
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
