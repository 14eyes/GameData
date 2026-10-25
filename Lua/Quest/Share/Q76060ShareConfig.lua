main_id = 76060
local tbl = {}
local n = 7606002
local v = 7606003
tbl[1] = 7606001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"7606001"}}}}

rewind_data = {
    ["7606001"] = {},
    ["7606002"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300029:2135.486,108.829,11207.600,0.000,196.193,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15702,
                alias = "Npc15702",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300030:2135.913,108.835,11206.690,0.000,239.802,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7606003"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300029:2135.486,108.829,11207.600,0.000,196.193,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15702,
                alias = "Npc15702",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300030:2135.913,108.835,11206.690,0.000,239.802,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7606001"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300029:2135.486,108.829,11207.600,0.000,196.193,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15702,
                alias = "Npc15702",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300030:2135.913,108.835,11206.690,0.000,239.802,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7606002"] = {},
    ["7606003"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300029:2135.486,108.829,11207.600,0.000,196.193,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
