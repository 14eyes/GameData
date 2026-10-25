main_id = 19030
local tbl = {}
local n = 1903002
local v = 1903007
local n2 = 1903003
local n3 = 1903004
local n4 = 1903005
local n5 = 1903006
local n6 = 1903008
tbl[1] = 1903001
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
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133102924,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133102926,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1903001"] = {},
    ["1903002"] = {},
    ["1903003"] = {},
    ["1903004"] = {},
    ["1903005"] = {},
    ["1903006"] = {},
    ["1903007"] = {},
    ["1903008"] = {}
}

quest_data = {
    ["1903001"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903001Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10917,
                alias = "Npc10917",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903001male",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1903002"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903002Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903007"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903002Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903003"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903003Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10903,
                alias = "Npc10903",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903003male",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10904,
                alias = "Npc10904",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903003female",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1903004"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903004Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10913,
                alias = "Npc10913",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903004Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1903005"] = {
        npcs = {
            {
                id = 10908,
                alias = "Npc10908",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903005male",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10909,
                alias = "Npc10909",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1903005female",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903004Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1903006"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903101cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903007"] = {},
    ["1903008"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903101cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
