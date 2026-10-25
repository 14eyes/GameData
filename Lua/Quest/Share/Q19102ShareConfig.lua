main_id = 19102
local tbl = {}
local n = 1910202
local v = 1910203
local n2 = 1910204
local n3 = 1910205
local n4 = 1910206
local n5 = 1910207
local n6 = 1910208
local n7 = 1910209
local n8 = 1910210
local n9 = 1910211
local n10 = 1910212
local n11 = 1910213
local n12 = 1910214
tbl[1] = 1910201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
tbl[13] = n11
tbl[14] = n12
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {}
local client = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100826"}, {"100827"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133004011"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133004017"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
client.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.CLIENT = client
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100826"}, {"100827"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl5 = {}
local str3 = ""
tbl5[1] = "133004011"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133004017"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[2] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1910201"] = {},
    ["1910202"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910203"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910204"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910205"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona04",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910206"] = {},
    ["1910207"] = {
        npcs = {
            {
                id = 10803,
                alias = "Npc10803",
                script = "Actor/Npc/FindCat",
                pos = "COOP103901Diona05_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910208"] = {},
    ["1910209"] = {
        npcs = {
            {
                id = 10804,
                alias = "Npc10804",
                script = "Actor/Npc/FindCat",
                pos = "COOP103901Diona06_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910210"] = {},
    ["1910212"] = {},
    ["1910213"] = {}
}

quest_data = {
    ["1910201"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910202"] = {},
    ["1910203"] = {
        npcs = {
            {
                id = 1435,
                alias = "Npc1435",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910204"] = {},
    ["1910205"] = {
        npcs = {
            {
                id = 1419,
                alias = "Npc1419",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70810SaraBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910206"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona04",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10803,
                alias = "Npc10803",
                script = "Actor/Npc/FindCat",
                pos = "COOP103901Diona05_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1910207"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona05_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910208"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona05_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10804,
                alias = "Npc10804",
                script = "Actor/Npc/FindCat",
                pos = "COOP103901Diona06_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1910209"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona06_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910210"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona06_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10805,
                alias = "Npc10805",
                script = "Actor/Npc/FindCat",
                pos = "COOP103901Diona07_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1910211"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona07_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10805,
                alias = "Npc10805",
                script = "Actor/Npc/FindCat",
                pos = "COOP103901Diona07_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1910212"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona07_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910213"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona01_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910214"] = {}
}
