main_id = 74031
local tbl = {}
local n = 7403104
local v = 7403105
local n2 = 7403102
local n3 = 7403103
tbl[1] = 7403101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7403101"] = {}, ["7403102"] = {}, ["7403103"] = {}, ["7403104"] = {}}

quest_data = {
    ["7403101"] = {
        npcs = {
            {
                id = 5251,
                alias = "Npc5251",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4605:4370.881,124.790,4564.121,0.000,280.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_4608:4309.073,101.882,4721.196,0.000,299.903,0.000]"}}
    },
    ["7403102"] = {},
    ["7403103"] = {
        npcs = {
            {
                id = 5251,
                alias = "Npc5251",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4606:4306.338,101.940,4722.612,0.000,121.384,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7403104"] = {
        npcs = {
            {
                id = 5251,
                alias = "Npc5251",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5335:4302.107,101.670,4725.477,0.000,125.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_4608:4309.073,101.882,4721.196,0.000,299.903,0.000]"}}
    },
    ["7403105"] = {}
}
