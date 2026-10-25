main_id = 72132
local tbl = {}
local n = 7213202
local v = 7213204
local n2 = 7213206
local n3 = 7213205
tbl[1] = 7213201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7213201"] = {},
    ["7213202"] = {},
    ["7213204"] = {},
    ["7213205"] = {
        npcs = {
            {
                id = 20248,
                alias = "Npc20248",
                script = "Actor/Npc/TempNPC",
                pos = "Q3_72132_0",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7213206"] = {}
}

quest_data = {
    ["7213201"] = {},
    ["7213202"] = {},
    ["7213204"] = {},
    ["7213205"] = {
        npcs = {
            {
                id = 20248,
                alias = "Npc20248",
                script = "Actor/Npc/TempNPC",
                pos = "Q3_72132_0",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7213206"] = {}
}
