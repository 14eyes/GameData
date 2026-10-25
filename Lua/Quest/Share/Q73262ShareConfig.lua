main_id = 73262
local tbl = {}
local n = 7326202
local v = 7326203
local n2 = 7326204
tbl[1] = 7326201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7326201"] = {},
    ["7326204"] = {
        npcs = {
            {
                id = 422202,
                alias = "Npc422202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308711_N4222",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7326202"] = {
        npcs = {
            {
                id = 422202,
                alias = "Npc422202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308711_N4222",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7326203"] = {
        npcs = {
            {
                id = 422202,
                alias = "Npc422202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308711_N4222",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7326201"] = {
        npcs = {
            {
                id = 422202,
                alias = "Npc422202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308711_N4222",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7326202"] = {},
    ["7326203"] = {},
    ["7326204"] = {}
}
