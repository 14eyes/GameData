main_id = 19106
local tbl = {}
local n = 1910602
local v = 1910603
local n2 = 1910604
local n3 = 1910605
local n4 = 1910606
local n5 = 1910607
local n6 = 1910608
local n7 = 1910609
tbl[1] = 1910601
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
local tbl2 = {}
local client = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133002002"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133002003"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
client.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
client.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100840"}, {"100828"}, {"100846"}}
tbl2.CLIENT = client
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100840"}, {"100828"}, {"100846"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl5 = {}
local str3 = ""
tbl5[1] = "133002002"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "133002003"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[2] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1910601"] = {},
    ["1910602"] = {},
    ["1910603"] = {},
    ["1910604"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona11",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910605"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona11",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910606"] = {},
    ["1910607"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona12",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910608"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona12",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1910601"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona10",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1423,
                alias = "Npc1423",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "NpcFemaleInsomniaStand06Born",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1910602"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona10",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910603"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona11",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910604"] = {},
    ["1910605"] = {},
    ["1910606"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona12",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910607"] = {},
    ["1910608"] = {
        npcs = {
            {
                id = 152901,
                alias = "Npc152901",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901KangNa01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910609"] = {}
}
