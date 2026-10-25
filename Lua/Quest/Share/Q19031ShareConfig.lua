main_id = 19031
local tbl = {}
local n = 1903105
local v = 1903102
local n2 = 1903103
local n3 = 1903104
local n4 = 1903106
tbl[1] = 1903101
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
local str = "133102915,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133102916,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1903101"] = {},
    ["1903102"] = {},
    ["1903103"] = {},
    ["1903104"] = {},
    ["1903105"] = {},
    ["1903106"] = {}
}

quest_data = {
    ["1903101"] = {
        npcs = {
            {
                id = 10918,
                alias = "Npc10918",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903201male",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903102"] = {},
    ["1903103"] = {},
    ["1903104"] = {
        npcs = {
            {
                id = 10905,
                alias = "Npc10905",
                script = "Actor/Npc/TempNPC",
                pos = "Q19031021male",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19031021born"}}
    },
    ["1903105"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903202cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903106"] = {
        npcs = {
            {
                id = 10905,
                alias = "Npc10905",
                script = "Actor/Npc/TempNPC",
                pos = "Q19031021male",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19031021born"}}
    }
}
