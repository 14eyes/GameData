main_id = 19103
local tbl = {}
local n = 1910302
local v = 1910303
local n2 = 1910304
local n3 = 1910305
local n4 = 1910306
tbl[1] = 1910301
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
tbl3[1] = "133001008"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
client.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.CLIENT = client
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl4 = {}
local str2 = ""
tbl4[1] = "133001008"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1910301"] = {},
    ["1910302"] = {},
    ["1910303"] = {
        npcs = {
            {
                id = 153901,
                alias = "Npc153901",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Allan01_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910304"] = {
        npcs = {
            {
                id = 153901,
                alias = "Npc153901",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Allan01_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910305"] = {
        npcs = {
            {
                id = 153901,
                alias = "Npc153901",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Allan01_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1910301"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona08",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910302"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona08",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 153901,
                alias = "Npc153901",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Allan01_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1910303"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona08",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910304"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Allan01_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910305"] = {
        npcs = {
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "COOP103901Diona09",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1910306"] = {}
}
