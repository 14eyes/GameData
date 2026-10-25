main_id = 72208
local tbl = {}
local n = 7220802
local v = 7220803
local n2 = 7220804
local n3 = 7220806
local n4 = 7220805
tbl[1] = 7220801
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
    ["7220801"] = {},
    ["7220802"] = {},
    ["7220803"] = {},
    ["7220804"] = {},
    ["7220806"] = {
        npcs = {
            {
                id = 20430,
                alias = "Npc20430",
                script = "Actor/Npc/TempNPC",
                pos = "72208_FishMan_Point",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7220801"] = {},
    ["7220802"] = {
        npcs = {
            {
                id = 20430,
                alias = "Npc20430",
                script = "Actor/Npc/TempNPC",
                pos = "72208_FishMan_Point",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7220803"] = {
        npcs = {
            {
                id = 20430,
                alias = "Npc20430",
                script = "Actor/Npc/TempNPC",
                pos = "72208_FishMan_Point",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7220804"] = {
        npcs = {
            {
                id = 20430,
                alias = "Npc20430",
                script = "Actor/Npc/TempNPC",
                pos = "72208_FishMan_Point",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7220805"] = {},
    ["7220806"] = {}
}
