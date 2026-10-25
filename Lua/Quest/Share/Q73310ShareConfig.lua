main_id = 73310
local tbl = {}
local n = 7331002
local v = 7331003
local n2 = 7331008
local n3 = 7331004
local n4 = 7331005
local n5 = 7331006
local n6 = 7331007
local n7 = 7331009
tbl[1] = 7331001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7331001"] = {},
    ["7331002"] = {},
    ["7331003"] = {},
    ["7331004"] = {},
    ["7331005"] = {},
    ["7331006"] = {
        npcs = {
            {
                id = 20965,
                alias = "Npc20965",
                script = "Actor/Npc/TempNPC",
                pos = "Q7331005_N20965",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7331007"] = {
        npcs = {
            {
                id = 20965,
                alias = "Npc20965",
                script = "Actor/Npc/TempNPC",
                pos = "Q7331005_N20965",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7331008"] = {},
    ["7331009"] = {}
}

quest_data = {
    ["7331001"] = {},
    ["7331002"] = {},
    ["7331003"] = {
        npcs = {
            {
                id = 20987,
                alias = "Npc20987",
                script = "Actor/Npc/TempNPC",
                pos = "Q7331003_N20883",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7331004"] = {},
    ["7331005"] = {
        npcs = {
            {
                id = 20965,
                alias = "Npc20965",
                script = "Actor/Npc/TempNPC",
                pos = "Q7331005_N20965",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7331006"] = {},
    ["7331007"] = {},
    ["7331008"] = {},
    ["7331009"] = {}
}
