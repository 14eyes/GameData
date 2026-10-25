main_id = 73801
local tbl = {}
local n = 7380102
local v = 7380103
local n2 = 7380104
local n3 = 7380105
local n4 = 7380106
local n5 = 7380107
local n6 = 7380108
local n7 = 7380109
local n8 = 7380110
tbl[1] = 7380101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133304233"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133304235"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133304234"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7380101"] = {},
    ["7380102"] = {},
    ["7380103"] = {
        npcs = {
            {
                id = 4138,
                alias = "Npc4138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_XUMI01_YALISHANDELA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4137,
                alias = "Npc4137",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_XUMI01_PUREWA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7380104"] = {},
    ["7380105"] = {},
    ["7380106"] = {},
    ["7380107"] = {
        npcs = {
            {
                id = 4138,
                alias = "Npc4138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD04_YALISHANDELA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4174,
                alias = "Npc4174",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD04_NIKA",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7380108"] = {
        npcs = {
            {
                id = 4138,
                alias = "Npc4138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD04_YALISHANDELA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4174,
                alias = "Npc4174",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD04_NIKA",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7380109"] = {
        npcs = {
            {
                id = 4138,
                alias = "Npc4138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD04_YALISHANDELA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7380110"] = {
        npcs = {
            {
                id = 20862,
                alias = "Npc20862",
                script = "Actor/Npc/TempNPC",
                pos = "Q73801_WILD07_TUOSHOU",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7380101"] = {},
    ["7380102"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q73801_XUMI01_PAIMON",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4138,
                alias = "Npc4138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_XUMI01_YALISHANDELA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4137,
                alias = "Npc4137",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_XUMI01_PUREWA",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7380103"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q73801_WILD01_PAIMON",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7380104"] = {
        npcs = {
            {
                id = 4138,
                alias = "Npc4138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD01_YALISHANDELA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4137,
                alias = "Npc4137",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD01_PUREWA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7380105"] = {
        npcs = {
            {
                id = 4137,
                alias = "Npc4137",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD03_YALISHANDELA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7380106"] = {
        npcs = {
            {
                id = 4138,
                alias = "Npc4138",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD04_YALISHANDELA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4174,
                alias = "Npc4174",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD04_NIKA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7380107"] = {},
    ["7380108"] = {},
    ["7380109"] = {
        npcs = {
            {
                id = 4137,
                alias = "Npc4137",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD05_PUREWA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4121,
                alias = "Npc4121",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD06_BELATE",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20862,
                alias = "Npc20862",
                script = "Actor/Npc/TempNPC",
                pos = "Q73801_WILD07_TUOSHOU",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7380110"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q73801_WILD08_PAIMON",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4174,
                alias = "Npc4174",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD07_NIKA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4121,
                alias = "Npc4121",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73801_WILD07_BELATE",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
