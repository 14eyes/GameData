main_id = 24002
local tbl = {}
local n = 2400202
local v = 2400203
local n2 = 2400204
tbl[1] = 2400201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2400201"] = {},
    ["2400202"] = {},
    ["2400203"] = {},
    ["2400204"] = {
        npcs = {
            {
                id = 5045,
                alias = "Npc5045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4425:3520.363,421.176,4619.629,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2400201"] = {
        npcs = {
            {
                id = 5005,
                alias = "Npc5005",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100184:3463.127,427.481,4543.747,0.000,346.990,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400202"] = {
        npcs = {
            {
                id = 5045,
                alias = "Npc5045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2400202_N5045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400203"] = {
        npcs = {
            {
                id = 5045,
                alias = "Npc5045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2400202_N5045",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200052:3510.958,421.427,4616.075,0.000,306.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2400204"] = {
        npcs = {
            {
                id = 5005,
                alias = "Npc5005",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200091:3511.581,421.176,4619.583,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200052:3510.958,421.427,4616.075,0.000,306.880,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
