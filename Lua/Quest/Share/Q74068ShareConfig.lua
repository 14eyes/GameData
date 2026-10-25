main_id = 74068
local tbl = {}
local n = 7406802
local v = 7406803
tbl[1] = 7406801
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7406801"] = {},
    ["7406803"] = {
        npcs = {
            {
                id = 5221,
                alias = "Npc5221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5428:4476.959,121.600,4675.283,0.000,160.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5222,
                alias = "Npc5222",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5429:4477.727,121.600,4674.107,0.000,330.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7406801"] = {
        npcs = {
            {
                id = 5221,
                alias = "Npc5221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5428:4476.959,121.600,4675.283,0.000,160.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5222,
                alias = "Npc5222",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5429:4477.727,121.600,4674.107,0.000,330.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7406802"] = {
        npcs = {
            {
                id = 5221,
                alias = "Npc5221",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5428:4476.959,121.600,4675.283,0.000,160.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5222,
                alias = "Npc5222",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5429:4477.727,121.600,4674.107,0.000,330.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_6334:4473.363,121.600,4675.213,0.000,95.000,0.000]"}}
    },
    ["7406803"] = {}
}
