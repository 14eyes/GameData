main_id = 76050
local tbl = {}
local n = 7605003
tbl[1] = 7605001
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7605001"] = {},
    ["7605003"] = {
        npcs = {
            {
                id = 15703,
                alias = "Npc15703",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300032:2103.574,108.600,11219.100,0.000,333.295,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7605001"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300004:2100.861,108.657,11205.880,0.000,271.697,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15703,
                alias = "Npc15703",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300016:2097.925,108.658,11205.530,0.000,81.352,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 15704,
                alias = "Npc15704",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300017:2099.713,108.657,11204.510,0.000,42.661,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 15761,
                alias = "Npc15761",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300018:2102.570,108.672,11206.240,0.000,251.938,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 15764,
                alias = "Npc15764",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300028:2099.782,108.636,11207.340,0.000,140.855,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7605003"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300031:2096.488,108.700,11217.320,0.000,61.844,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
