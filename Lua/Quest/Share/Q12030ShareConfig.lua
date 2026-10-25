main_id = 12030
local tbl = {}
local n = 1203002
local v = 1203003
local n2 = 1203004
local n3 = 1203005
local n4 = 1203006
tbl[1] = 1203001
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
    ["1203001"] = {},
    ["1203002"] = {},
    ["1203003"] = {},
    ["1203004"] = {},
    ["1203005"] = {},
    ["1203006"] = {}
}

quest_data = {
    ["1203001"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203001_T1203001_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203002"] = {},
    ["1203003"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203003_N1034",
                scene_id = 20123,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1203004"] = {},
    ["1203005"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203005_N1034",
                scene_id = 20123,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1203006"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203001_T1203001_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
