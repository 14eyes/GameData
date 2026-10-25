main_id = 19143
local tbl = {}
local n = 1914301
local v = 1914302
local n2 = 1914306
local n3 = 1914304
local n4 = 1914305
local n5 = 1914307
local n6 = 1914309
local n7 = 1914308
tbl[1] = 1914303
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220749"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133221078"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1914303"] = {},
    ["1914306"] = {},
    ["1914307"] = {},
    ["1914308"] = {},
    ["1914309"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914307_C1914307_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914307_C1914307_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914307_C1914307_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1914301"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914301_C1914301_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3038,
                alias = "Npc3038",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914301_C1914301_N3038",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12540,
                alias = "Npc12540",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914302_C1914302_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3018,
                alias = "Npc3018",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914302_N3018",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914301_C1914301_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914302_C1914302_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1914302"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914302_C1914302_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3038,
                alias = "Npc3038",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914301_C1914301_N3038",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12540,
                alias = "Npc12540",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914302_C1914302_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3018,
                alias = "Npc3018",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1914302_N3018",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914302_C1914302_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914302_C1914302_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1914303"] = {},
    ["1914304"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914304_C1914304_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12509,
                alias = "Npc12509",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914304_C1914304_N12509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12510,
                alias = "Npc12510",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914304_C1914304_N12510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12511,
                alias = "Npc12511",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914304_C1914304_N12511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914304_C1914304_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1914305"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914302_C1914302_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12509,
                alias = "Npc12509",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914304_C1914304_N12509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12510,
                alias = "Npc12510",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914304_C1914304_N12510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12511,
                alias = "Npc12511",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914304_C1914304_N12511",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12539,
                alias = "Npc12539",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914305_C1914305_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914302_C1914302_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914305_C1914305_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1914306"] = {
        npcs = {
            {
                id = 12509,
                alias = "Npc12509",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914304_C1914304_N12509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12510,
                alias = "Npc12510",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914304_C1914304_N12510",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12511,
                alias = "Npc12511",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914304_C1914304_N12511",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12539,
                alias = "Npc12539",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914305_C1914305_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914305_C1914305_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1914307"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914307_C1914307_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12277,
                alias = "Npc12277",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914307_C1914307_N12277",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914307_C1914307_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914307_C1914307_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914308"] = {},
    ["1914309"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914307_C1914307_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914309_C1914309_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914307_C1914307_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
