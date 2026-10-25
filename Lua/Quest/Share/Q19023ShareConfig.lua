main_id = 19023
local tbl = {}
local n = 1902302
local v = 1902303
local n2 = 1902304
local n3 = 1902305
local n4 = 1902306
tbl[1] = 1902301
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
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133102923,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133102925,1"
tbl4[1] = "3"
tbl4[2] = str2
local tbl5 = {}
local str3 = "133102913,1"
tbl5[1] = "3"
tbl5[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
qUEST_EXEC_REFRESH_GROUP_SUITE[3] = tbl5
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1902301"] = {},
    ["1902302"] = {},
    ["1902303"] = {},
    ["1902304"] = {},
    ["1902305"] = {},
    ["1902306"] = {}
}

quest_data = {
    ["1902301"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902301CY",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1902302"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902302Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1902303"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902303Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10913,
                alias = "Npc10913",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902303Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1902304"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902304Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10914,
                alias = "Npc10914",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902304Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1902305"] = {},
    ["1902306"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1902305Cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1902305Born"}}
    }
}
