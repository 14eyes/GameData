main_id = 25020
local tbl = {}
local n = 2502002
local v = 2502006
local n2 = 2502004
local n3 = 2502005
local n4 = 2502003
tbl[1] = 2502001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {}
local client = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133504301"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
client.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.CLIENT = client
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl4 = {}
local str2 = ""
tbl4[1] = "133504301,133504049"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2502001"] = {},
    ["2502002"] = {},
    ["2502003"] = {
        npcs = {
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400187:-1564.563,163.000,7723.980,0.000,289.287,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2502004"] = {
        npcs = {
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400145:-1555.196,163.742,7720.838,0.000,110.096,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2502005"] = {
        npcs = {
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400145:-1555.196,163.742,7720.838,0.000,110.096,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2502006"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400210:-1540.240,163.951,7740.782,0.000,83.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400145:-1555.196,163.742,7720.838,0.000,110.096,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2502001"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "Q2502001_N14267",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400070:-1549.705,164.162,7727.834]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2502002"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400210:-1540.240,163.951,7740.782,0.000,83.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400145:-1555.196,163.742,7720.838,0.000,110.096,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14378,
                alias = "Npc14378",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400143:-1555.555,165.361,7737.916]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2502003"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400148:-1553.129,164.113,7720.120,0.000,285.990,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2502004"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400210:-1540.240,163.951,7740.782,0.000,83.425,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14379,
                alias = "Npc14379",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400144:-1565.772,163.000,7724.652]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2502005"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400148:-1553.129,164.113,7720.120,0.000,285.990,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2502006"] = {}
}
