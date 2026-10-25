main_id = 73524
local tbl = {}
local n = 7352402
local v = 7352403
local n2 = 7352405
local n3 = 7352406
local n4 = 7352404
tbl[1] = 7352401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7352401"] = {}, ["7352402"] = {}, ["7352403"] = {}, ["7352405"] = {}, ["7352406"] = {}}

quest_data = {
    ["7352401"] = {},
    ["7352402"] = {},
    ["7352403"] = {
        npcs = {
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201502:-424.073,280.711,2750.208,0.000,185.197,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1300711_N1005"}}
    },
    ["7352404"] = {},
    ["7352405"] = {},
    ["7352406"] = {
        npcs = {
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201503:-425.860,280.711,2747.703,0.000,77.229,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201504:-424.556,280.711,2747.773,0.000,266.672,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
