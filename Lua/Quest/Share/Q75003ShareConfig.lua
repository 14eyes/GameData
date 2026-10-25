main_id = 75003
local tbl = {}
local n = 7500305
local v = 7500303
local n2 = 7500301
local n3 = 7500307
local n4 = 7500302
local n5 = 7500304
tbl[1] = 7500306
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
rewind_data = {["7500306"] = {}}

quest_data = {
    ["7500301"] = {
        npcs = {
            {
                id = 21515,
                alias = "Npc21515",
                script = "Actor/Npc/TempNPC",
                pos = "Q7500301_N21515",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7500302"] = {},
    ["7500303"] = {},
    ["7500304"] = {
        npcs = {
            {
                id = 21515,
                alias = "Npc21515",
                script = "Actor/Npc/TempNPC",
                pos = "Q7500304_N21515",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7500305"] = {},
    ["7500306"] = {},
    ["7500307"] = {}
}
