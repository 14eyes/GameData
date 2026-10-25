main_id = 74501
local tbl = {}
local n = 7450101
local v = 7450102
local n2 = 7450103
tbl[1] = 7450104
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133401356"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7450101"] = {},
    ["7450102"] = {
        npcs = {
            {
                id = 30411,
                alias = "Npc30411",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100113:3557.708,446.167,4434.160,0.000,282.658,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30412,
                alias = "Npc30412",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100114:3556.113,446.167,4434.126,0.000,87.261,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7450103"] = {
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
    ["7450104"] = {}
}

quest_data = {
    ["7450101"] = {
        npcs = {
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100070:3560.638,446.167,4434.347,0.000,262.074,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30411,
                alias = "Npc30411",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100113:3557.708,446.167,4434.160,0.000,282.658,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30412,
                alias = "Npc30412",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100114:3556.113,446.167,4434.126,0.000,87.261,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100070:3560.638,446.167,4434.347,0.000,262.074,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7450102"] = {
        npcs = {
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100070:3560.638,446.167,4434.347,0.000,262.074,0.000]",
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
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100070:3560.638,446.167,4434.347,0.000,262.074,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7450103"] = {
        npcs = {
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100070:3560.638,446.167,4434.347,0.000,262.074,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30411,
                alias = "Npc30411",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100264:3558.920,446.167,4433.667,0.000,63.468,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30412,
                alias = "Npc30412",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100265:3558.517,446.167,4434.559,0.000,105.303,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100070:3560.638,446.167,4434.347,0.000,262.074,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7450104"] = {}
}
