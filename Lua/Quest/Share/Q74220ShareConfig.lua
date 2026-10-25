main_id = 74220
local tbl = {}
local n = 7422002
local v = 7422003
local n2 = 7422004
tbl[1] = 7422001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7422001"] = {},
    ["7422002"] = {},
    ["7422004"] = {
        npcs = {
            {
                id = 6415,
                alias = "Npc6415",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10620:-1588.928,33.478,9232.461,0.000,175.599,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7422001"] = {
        npcs = {
            {
                id = 6415,
                alias = "Npc6415",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10620:-1588.928,33.478,9232.461,0.000,175.599,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7422002"] = {
        npcs = {
            {
                id = 6415,
                alias = "Npc6415",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10620:-1588.928,33.478,9232.461,0.000,175.599,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7422003"] = {},
    ["7422004"] = {}
}
