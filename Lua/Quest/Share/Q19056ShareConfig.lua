main_id = 19056
local tbl = {}
local n = 1905602
local v = 1905606
local n2 = 1905603
local n3 = 1905604
local n4 = 1905605
local n5 = 1905607
local n6 = 1905608
tbl[1] = 1905601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133221091"
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
    ["1905601"] = {},
    ["1905602"] = {
        npcs = {
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905601_N3020",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905606"] = {
        npcs = {
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905606_N3020",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905608"] = {
        npcs = {
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905606_N3020",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905603_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905601_N3019",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

quest_data = {
    ["1905601"] = {
        npcs = {
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905601_N3020",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905601_N3019",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905602"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905601_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905601_N3019",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905601_N1038",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905601_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1905603"] = {
        npcs = {
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905606_N3020",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905603_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905601_N3019",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905603_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1905604"] = {
        npcs = {
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905606_N3020",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905603_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905601_N3019",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905603_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1905605"] = {
        npcs = {
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905606_N3020",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905603_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905601_N3019",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905603_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1905606"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905603_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905601_N3019",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905603_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905607"] = {
        npcs = {
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905606_N3020",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905603_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905601_N3019",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905603_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1905608"] = {
        npcs = {
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905603_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
