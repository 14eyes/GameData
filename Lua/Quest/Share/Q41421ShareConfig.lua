main_id = 41421
local tbl = {}
local n = 4142102
local v = 4142103
local n2 = 4142104
local n3 = 4142105
local n4 = 4142106
local n5 = 4142107
local n6 = 4142108
local n7 = 4142109
local n8 = 4142110
local n9 = 4142111
tbl[1] = 4142101
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_DEL_PACK_ITEM = {}
local tbl3 = {}
local str = "1"
tbl3[1] = "100766"
tbl3[2] = str
qUEST_EXEC_DEL_PACK_ITEM[1] = tbl3
server.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl4 = {}
local str2 = ""
tbl4[1] = "133002941"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133002945"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
fail_action = tbl2
local tbl6 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_DEL_PACK_ITEM2 = {}
local tbl7 = {}
local str4 = "1"
tbl7[1] = "100766"
tbl7[2] = str4
qUEST_EXEC_DEL_PACK_ITEM2[1] = tbl7
server2.QUEST_EXEC_DEL_PACK_ITEM = qUEST_EXEC_DEL_PACK_ITEM2
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl8 = {}
local str5 = ""
tbl8[1] = "133002941"
tbl8[2] = str5
local tbl9 = {}
local str6 = ""
tbl9[1] = "133002945"
tbl9[2] = str6
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl8
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[2] = tbl9
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl6.SERVER = server2
cancel_action = tbl6

rewind_data = {
    ["4142101"] = {},
    ["4142102"] = {},
    ["4142103"] = {
        npcs = {
            {
                id = 152901,
                alias = "Npc152901",
                script = "Actor/Npc/TempNPC",
                pos = "Q41421_Kangna_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142105"] = {},
    ["4142106"] = {},
    ["4142107"] = {},
    ["4142108"] = {
        npcs = {
            {
                id = 165001,
                alias = "Npc165001",
                script = "Actor/Npc/TempNPC",
                pos = "Q41421_Laofenqi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142109"] = {
        npcs = {
            {
                id = 165001,
                alias = "Npc165001",
                script = "Actor/Npc/TempNPC",
                pos = "Q41421_Laofenqi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142110"] = {}
}

quest_data = {
    ["4142101"] = {},
    ["4142102"] = {
        npcs = {
            {
                id = 152901,
                alias = "Npc152901",
                script = "Actor/Npc/TempNPC",
                pos = "Q41421_Kangna_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142103"] = {},
    ["4142104"] = {},
    ["4142105"] = {
        npcs = {
            {
                id = 10367,
                alias = "Npc10367",
                script = "Actor/Npc/TempNPC",
                pos = "Q41421_Water_Battle1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710311,
                alias = "Gadget70710311",
                pos = "Q41421_Water_Battle1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142106"] = {
        npcs = {
            {
                id = 10367,
                alias = "Npc10367",
                script = "Actor/Npc/TempNPC",
                pos = "Q41421_Water_Qingquan1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710311,
                alias = "Gadget70710311",
                pos = "Q41421_Water_Qingquan1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142107"] = {
        npcs = {
            {
                id = 165001,
                alias = "Npc165001",
                script = "Actor/Npc/TempNPC",
                pos = "Q41421_Laofenqi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710311,
                alias = "Gadget70710311",
                pos = "Q41421_Water_Laofenqi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142108"] = {
        npcs = {
            {
                id = 10367,
                alias = "Npc10367",
                script = "Actor/Npc/TempNPC",
                pos = "Q41421_Water_Qingquan2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710311,
                alias = "Gadget70710311",
                pos = "Q41421_Water_Qingquan2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142109"] = {},
    ["4142110"] = {
        npcs = {
            {
                id = 10367,
                alias = "Npc10367",
                script = "Actor/Npc/TempNPC",
                pos = "Q4142110_Water_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710311,
                alias = "Gadget70710311",
                pos = "Q4142110_Water_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142111"] = {}
}
