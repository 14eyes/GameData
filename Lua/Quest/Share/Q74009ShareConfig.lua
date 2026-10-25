main_id = 74009
local tbl = {}
local n = 7400903
local v = 7400906
local n2 = 7400904
local n3 = 7400905
local n4 = 7400901
tbl[1] = 7400902
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
    ["7400901"] = {},
    ["7400902"] = {},
    ["7400903"] = {},
    ["7400904"] = {},
    ["7400905"] = {},
    ["7400906"] = {}
}

quest_data = {
    ["7400901"] = {
        npcs = {
            {
                id = 20762,
                alias = "Npc20762",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4312:2996.730,442.827,4369.466,0.000,56.947,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7400902"] = {
        npcs = {
            {
                id = 5131,
                alias = "Npc5131",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4314:3586.289,506.535,4623.400,0.000,77.443,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5132,
                alias = "Npc5132",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4315:3586.379,506.535,4624.633,0.000,102.848,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7400903"] = {},
    ["7400904"] = {},
    ["7400905"] = {
        npcs = {
            {
                id = 21027,
                alias = "Npc21027",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4316:2499.087,251.668,4605.765,0.000,331.293,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21247,
                alias = "Npc21247",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340300200:2498.676,251.844,4603.413]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21248,
                alias = "Npc21248",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4319:2496.577,251.703,4607.552,0.000,123.938,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7400906"] = {
        npcs = {
            {
                id = 5131,
                alias = "Npc5131",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4461:2495.272,249.220,4584.552,0.000,170.374,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
