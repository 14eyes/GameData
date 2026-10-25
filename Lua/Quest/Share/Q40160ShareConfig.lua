main_id = 40160
local tbl = {}
local n = 4016002
local v = 4016003
local n2 = 4016004
local n3 = 4016005
local n4 = 4016006
tbl[1] = 4016001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["4016001"] = {},
    ["4016002"] = {},
    ["4016003"] = {},
    ["4016004"] = {},
    ["4016005"] = {},
    ["4016006"] = {}
}

quest_data = {
    ["4016001"] = {},
    ["4016002"] = {},
    ["4016003"] = {},
    ["4016004"] = {},
    ["4016005"] = {},
    ["4016006"] = {
        npcs = {
            {
                id = 30519,
                alias = "Npc30519",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_300300737:2513.601,202.481,-1125.999,0.000,150.066,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
