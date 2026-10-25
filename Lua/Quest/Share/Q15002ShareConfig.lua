main_id = 15002
local tbl = {}
local n = 1500201
local v = 1500203
local n2 = 1500204
tbl[1] = 1500202
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1500201"] = {}, ["1500202"] = {}, ["1500203"] = {}, ["1500204"] = {}}

quest_data = {
    ["1500201"] = {
        npcs = {
            {
                id = 14145,
                alias = "Npc14145",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200029:-2084.479,249.213,8415.354]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1500202"] = {
        npcs = {
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200030:-2187.517,243.901,8449.113,0.000,275.057,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1500203"] = {
        npcs = {
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200095:-2130.034,249.213,8425.143,0.000,290.021,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6100,
                alias = "Npc6100",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200031:-2131.800,249.213,8425.668,0.000,101.049,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1500204"] = {
        npcs = {
            {
                id = 1088,
                alias = "Npc1088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200032:-2174.743,243.935,8444.999]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
