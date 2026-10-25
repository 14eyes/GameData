main_id = 74502
local tbl = {}
local n = 7450201
local v = 7450202
tbl[1] = 7450203
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7450201"] = {},
    ["7450202"] = {
        npcs = {
            {
                id = 5024,
                alias = "Npc5024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100067:3627.395,446.263,4474.600,0.000,295.119,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7450203"] = {}
}

quest_data = {
    ["7450201"] = {
        npcs = {
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100122:3625.277,446.167,4476.156,0.000,129.982,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5024,
                alias = "Npc5024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100067:3627.395,446.263,4474.600,0.000,295.119,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7450202"] = {
        npcs = {
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100266:3559.989,446.167,4433.958,0.000,344.154,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100070:3560.638,446.167,4434.347,0.000,262.074,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30411,
                alias = "Npc30411",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100113:3557.708,446.167,4434.160,0.000,282.658,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30412,
                alias = "Npc30412",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100114:3556.113,446.167,4434.126,0.000,87.261,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7450203"] = {}
}
