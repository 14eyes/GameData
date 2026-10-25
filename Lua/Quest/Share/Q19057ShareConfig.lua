main_id = 19057
local tbl = {}
local n = 1905707
local v = 1905702
local n2 = 1905708
local n3 = 1905703
local n4 = 1905704
local n5 = 1905705
local n6 = 1905706
tbl[1] = 1905701
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
tbl3[1] = "133220777"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133220768"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1905701"] = {},
    ["1905702"] = {
        npcs = {
            {
                id = 12552,
                alias = "Npc12552",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905701_N12552",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905701_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905703"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905703_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12553,
                alias = "Npc12553",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905702_N12553",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12549,
                alias = "Npc12549",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905703_N12549",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905704"] = {},
    ["1905705"] = {},
    ["1905707"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905701_N3002",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905708"] = {
        npcs = {
            {
                id = 12553,
                alias = "Npc12553",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905702_N12553",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1905701"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905701_N3002",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1905702"] = {
        npcs = {
            {
                id = 12553,
                alias = "Npc12553",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905702_N12553",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905702_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905702_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905703"] = {
        npcs = {
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905703_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905703_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1905704"] = {},
    ["1905705"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12552,
                alias = "Npc12552",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N12552",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12553,
                alias = "Npc12553",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N12553",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905802_N3045",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1905706"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12552,
                alias = "Npc12552",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N12552",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12553,
                alias = "Npc12553",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N12553",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1905802_N3045",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905802_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1905707"] = {
        npcs = {
            {
                id = 12552,
                alias = "Npc12552",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905701_N12552",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 511,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905701_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1057,
                alias = "Npc1057",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905701_N511",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1905708"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905703_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12549,
                alias = "Npc12549",
                script = "Actor/Npc/TempNPC",
                pos = "Q1905703_N12549",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
