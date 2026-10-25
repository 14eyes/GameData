main_id = 71535
local tbl = {}
local n = 7153502
local v = 7153503
local n2 = 7153504
tbl[1] = 7153501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7153501"] = {},
    ["7153502"] = {},
    ["7153503"] = {
        npcs = {
            {
                id = 30681,
                alias = "Npc30681",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702025:-474.114,209.120,342.023,0.000,30.235,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7153504"] = {
        npcs = {
            {
                id = 30681,
                alias = "Npc30681",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702025:-474.114,209.120,342.023,0.000,30.235,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7153501"] = {},
    ["7153502"] = {
        npcs = {
            {
                id = 30681,
                alias = "Npc30681",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702025:-474.114,209.120,342.023,0.000,30.235,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702025:-474.114,209.120,342.023,0.000,30.235,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7153503"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702025:-474.114,209.120,342.023,0.000,30.235,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7153504"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310702025:-474.114,209.120,342.023,0.000,30.235,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
