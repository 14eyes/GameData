main_id = 75131
local tbl = {}
local n = 7513106
local v = 7513103
local n2 = 7513104
local n3 = 7513102
local n4 = 7513105
tbl[1] = 7513101
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
    ["7513102"] = {
        npcs = {
            {
                id = 6480,
                alias = "Npc6480",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11020:-2803.968,256.763,9907.148]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7513103"] = {},
    ["7513104"] = {},
    ["7513105"] = {},
    ["7513106"] = {}
}

quest_data = {
    ["7513101"] = {},
    ["7513102"] = {},
    ["7513103"] = {},
    ["7513104"] = {
        npcs = {
            {
                id = 6480,
                alias = "Npc6480",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11020:-2803.968,256.763,9907.148]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7513105"] = {},
    ["7513106"] = {
        npcs = {
            {
                id = 6480,
                alias = "Npc6480",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11019:-2815.830,254.147,9898.350]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
