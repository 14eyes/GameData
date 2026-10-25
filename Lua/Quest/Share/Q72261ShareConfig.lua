main_id = 72261
local tbl = {}
local n = 7226102
local v = 7226103
local n2 = 7226104
local n3 = 7226105
local n4 = 7226106
local n5 = 7226107
tbl[1] = 7226101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133103351"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133103352"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7226101"] = {}, ["7226102"] = {}, ["7226104"] = {}, ["7226106"] = {}, ["7226107"] = {}}

quest_data = {
    ["7226101"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7226102"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12354,
                alias = "Npc12354",
                script = "Actor/Npc/TempNPC",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7226103"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12354,
                alias = "Npc12354",
                script = "Actor/Npc/TempNPC",
                pos = "Q3_72261_Shoot",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7226104"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7226105"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7226106"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Finish",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7226107"] = {
        npcs = {
            {
                id = 3160,
                alias = "Npc3160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Finish",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3188,
                alias = "Npc3188",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3161,
                alias = "Npc3161",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72261_Start",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
