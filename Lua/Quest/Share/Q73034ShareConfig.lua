main_id = 73034
local tbl = {}
local n = 7303402
local v = 7303403
local n2 = 7303404
local n3 = 7303407
local n4 = 7303405
local n5 = 7303406
tbl[1] = 7303401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7303401"] = {},
    ["7303402"] = {},
    ["7303403"] = {},
    ["7303404"] = {},
    ["7303405"] = {},
    ["7303406"] = {},
    ["7303407"] = {}
}

quest_data = {
    ["7303401"] = {},
    ["7303402"] = {
        npcs = {
            {
                id = 20817,
                alias = "Npc20817",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303402_N20817",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7303403"] = {},
    ["7303404"] = {},
    ["7303405"] = {},
    ["7303406"] = {
        npcs = {
            {
                id = 20818,
                alias = "Npc20818",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303406_N20818",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7303407"] = {}
}
