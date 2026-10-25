main_id = 15005
local tbl = {}
local n = 1500502
local v = 1500503
tbl[1] = 1500501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1500501"] = {},
    ["1500502"] = {},
    ["1500503"] = {
        npcs = {
            {
                id = 14227,
                alias = "Npc14227",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200080:-2985.353,200.667,8787.414,0.000,225.466,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14228,
                alias = "Npc14228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200081:-2985.358,200.853,8786.158,0.000,253.300,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1500501"] = {
        npcs = {
            {
                id = 14317,
                alias = "Npc14317",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200104:-2934.368,200.810,8851.006,0.000,233.244,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1500502"] = {
        npcs = {
            {
                id = 14227,
                alias = "Npc14227",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200080:-2985.353,200.667,8787.414,0.000,225.466,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14228,
                alias = "Npc14228",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350200081:-2985.358,200.853,8786.158,0.000,253.300,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1500503"] = {}
}
