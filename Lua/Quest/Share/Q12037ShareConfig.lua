main_id = 12037
local tbl = {}
local n = 1203702
local v = 1203703
local n2 = 1203704
local n3 = 1203705
local n4 = 1203706
tbl[1] = 1203701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220776"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1203701"] = {},
    ["1203704"] = {},
    ["1203705"] = {},
    ["1203706"] = {
        npcs = {
            {
                id = 12590,
                alias = "Npc12590",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203704",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12592,
                alias = "Npc12592",
                script = "Actor/Npc/TempNPC",
                pos = "Q12037_N12592",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12591,
                alias = "Npc12591",
                script = "Actor/Npc/TempNPC",
                pos = "Q12037_N12591",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12632,
                alias = "Npc12632",
                script = "Actor/Npc/TempNPC",
                pos = "Q12037_N12632",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12633,
                alias = "Npc12633",
                script = "Actor/Npc/TempNPC",
                pos = "Q12037_N12633",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12634,
                alias = "Npc12634",
                script = "Actor/Npc/TempNPC",
                pos = "Q12037_N12634",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    }
}

quest_data = {
    ["1203701"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203703",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203702"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203703",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203703"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203703",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203704"] = {
        npcs = {
            {
                id = 12589,
                alias = "Npc12589",
                script = "Actor/Npc/TempNPC",
                pos = "guide_Q1203703",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1203705"] = {
        npcs = {
            {
                id = 12590,
                alias = "Npc12590",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203704",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12592,
                alias = "Npc12592",
                script = "Actor/Npc/TempNPC",
                pos = "Q12037_N12592",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12591,
                alias = "Npc12591",
                script = "Actor/Npc/TempNPC",
                pos = "Q12037_N12591",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12632,
                alias = "Npc12632",
                script = "Actor/Npc/TempNPC",
                pos = "Q12037_N12632",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12633,
                alias = "Npc12633",
                script = "Actor/Npc/TempNPC",
                pos = "Q12037_N12633",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12634,
                alias = "Npc12634",
                script = "Actor/Npc/TempNPC",
                pos = "Q12037_N12634",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203704_N10000005",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1203706"] = {
        npcs = {
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q1203706_N1032",
                scene_id = 1064,
                room_id = 1,
                data_index = 1
            },
            {
                id = 3054,
                alias = "Npc3054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203706_N3054",
                scene_id = 1064,
                room_id = 1,
                data_index = 2
            },
            {
                id = 3057,
                alias = "Npc3057",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1203706_N10000005",
                scene_id = 1064,
                room_id = 1064,
                data_index = 3
            }
        }
    }
}
