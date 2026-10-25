main_id = 19001
local tbl = {}
local n = 1900102
local v = 1900103
local n2 = 1900104
local n3 = 1900105
local n4 = 1900106
local n5 = 1900107
local n6 = 1900108
local n7 = 1900109
tbl[1] = 1900101
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
tbl3[1] = "133002408"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
client.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
client.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100744"}}
tbl2.CLIENT = client
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl4 = {}
local str2 = ""
tbl4[1] = "133002408"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100744"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1900101"] = {},
    ["1900102"] = {
        npcs = {
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900103"] = {
        npcs = {
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1900104"] = {},
    ["1900105"] = {
        npcs = {
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1900106"] = {},
    ["1900107"] = {
        npcs = {
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1900108"] = {}
}

quest_data = {
    ["1900101"] = {
        npcs = {
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900102"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1900103"] = {
        npcs = {
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900104"] = {
        npcs = {
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1900105"] = {
        npcs = {
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900106"] = {
        npcs = {
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1900107"] = {
        npcs = {
            {
                id = 160201,
                alias = "Npc160201",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Albert01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1900108"] = {
        npcs = {
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 160201,
                alias = "Npc160201",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Albert01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1900109"] = {}
}
