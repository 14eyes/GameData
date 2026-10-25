main_id = 19036
local tbl = {}
local n = 1903606
local v = 1903602
local n2 = 1903603
local n3 = 1903604
local n4 = 1903607
local n5 = 1903605
tbl[1] = 1903601
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
tbl3[1] = "133211022"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133211023"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1903601"] = {},
    ["1903602"] = {
        npcs = {
            {
                id = 3142,
                alias = "Npc3142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903906_N3142",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903605"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903602_N3041",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903606"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3041",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1903607"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903602_N3041",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903605_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1903601"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3041",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903601_N3042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1903602"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903602_N3041",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903602_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903602_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1903603"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903602_N3041",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903602_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3142,
                alias = "Npc3142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903906_N3142",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903602_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1903604"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903602_N3041",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903602_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3142,
                alias = "Npc3142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903906_N3142",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903602_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1903605"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903605_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903605_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1903606"] = {
        npcs = {
            {
                id = 3142,
                alias = "Npc3142",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903906_N3142",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903607"] = {
        npcs = {
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903605_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
