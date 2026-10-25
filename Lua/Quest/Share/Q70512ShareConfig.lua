main_id = 70512
local tbl = {}
local n = 7051203
local v = 7051204
local n2 = 7051205
local n3 = 7051206
local n4 = 7051207
local n5 = 7051202
tbl[1] = 7051201
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
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"43"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133001100"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133001095"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7051201"] = {},
    ["7051202"] = {},
    ["7051203"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051202_N1531",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051204"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051202_N1531",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051205"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051202_N1531",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051207"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051202_N1531",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7051201"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051202_N1531",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1529,
                alias = "Npc1529",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1529Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7051202"] = {},
    ["7051203"] = {
        npcs = {
            {
                id = 1529,
                alias = "Npc1529",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1529Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051204"] = {
        npcs = {
            {
                id = 30192,
                alias = "Npc30192",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051203_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1529,
                alias = "Npc1529",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Npc1529Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7051205"] = {
        npcs = {
            {
                id = 30192,
                alias = "Npc30192",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051205_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051206"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7051202_N1531",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051207"] = {
        npcs = {
            {
                id = 30192,
                alias = "Npc30192",
                script = "Actor/Npc/TempNPC",
                pos = "Q7051205_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
