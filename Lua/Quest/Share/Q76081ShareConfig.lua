main_id = 76081
local tbl = {}
local n = 7608102
local v = 7608103
local n2 = 7608104
tbl[1] = 7608101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7608101"] = {}, ["7608102"] = {}, ["7608103"] = {}, ["7608104"] = {}}

quest_data = {
    ["7608101"] = {},
    ["7608102"] = {
        npcs = {
            {
                id = 22183,
                alias = "Npc22183",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13636:1951.209,200.804,9080.448,0.000,96.080,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7608103"] = {},
    ["7608104"] = {
        npcs = {
            {
                id = 22183,
                alias = "Npc22183",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13988:1970.640,200.304,9078.767]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
