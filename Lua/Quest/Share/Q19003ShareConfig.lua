main_id = 19003
local tbl = {}
local n = 1900302
local v = 1900303
local n2 = 1900304
local n3 = 1900305
local n4 = 1900306
local n5 = 1900307
local n6 = 1900308
tbl[1] = 1900301
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
local tbl2 = {}
local client = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133004434"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
client.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.CLIENT = client
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl4 = {}
local str2 = ""
tbl4[1] = "133004434"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1900301"] = {},
    ["1900303"] = {},
    ["1900304"] = {
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
    ["1900305"] = {},
    ["1900306"] = {
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
    ["1900307"] = {
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
    ["1900308"] = {
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
    }
}

quest_data = {
    ["1900301"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala03",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1900302"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala03",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1900303"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala03",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1900304"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1900305"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala04",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala04",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1900306"] = {},
    ["1900307"] = {},
    ["1900308"] = {}
}
