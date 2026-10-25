main_id = 15012
local tbl = {}
local n = 1501202
local v = 1501203
local n2 = 1501204
tbl[1] = 1501201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1501201"] = {},
    ["1501202"] = {
        npcs = {
            {
                id = 6084,
                alias = "Npc6084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_350400072:-1325.393,141.056,7602.801,0.000,198.833,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1501203"] = {
        npcs = {
            {
                id = 6084,
                alias = "Npc6084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_350400072:-1325.393,141.056,7602.801,0.000,198.833,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6083,
                alias = "Npc6083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_350400099:-1438.829,64.606,8235.239]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1501204"] = {
        npcs = {
            {
                id = 6084,
                alias = "Npc6084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_350400072:-1325.393,141.056,7602.801,0.000,198.833,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6083,
                alias = "Npc6083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_350400099:-1438.829,64.606,8235.239]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1501201"] = {
        npcs = {
            {
                id = 6084,
                alias = "Npc6084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_350400072:-1325.393,141.056,7602.801,0.000,198.833,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1501202"] = {
        npcs = {
            {
                id = 6083,
                alias = "Npc6083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_350400099:-1438.829,64.606,8235.239]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1501203"] = {},
    ["1501204"] = {}
}
