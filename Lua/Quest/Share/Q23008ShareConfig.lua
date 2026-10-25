main_id = 23008
local tbl = {}
local n = 2300802
local v = 2300803
tbl[1] = 2300801
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2300802"}}}}

rewind_data = {
    ["2300801"] = {},
    ["2300802"] = {
        npcs = {
            {
                id = 4016,
                alias = "Npc4016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300701_N4016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300803"] = {
        npcs = {
            {
                id = 4016,
                alias = "Npc4016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300701_N4016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2300801"] = {
        npcs = {
            {
                id = 4016,
                alias = "Npc4016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300701_N4016",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300802"] = {},
    ["2300803"] = {}
}
