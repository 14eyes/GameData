main_id = 19064
local tbl = {}
local n = 1906402
local v = 1906403
local n2 = 1906404
local n3 = 1906405
tbl[1] = 1906401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133004445,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl5 = {}
local str2 = "133004445,1"
tbl5[1] = "3"
tbl5[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl5
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
tbl4.SERVER = server2
cancel_action = tbl4

rewind_data = {
    ["1906401"] = {},
    ["1906404"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19064TrainingNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1906401"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19064TrainingNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 160501,
                alias = "Npc160501",
                script = "Actor/Npc/TempNPC",
                pos = "Q19064TrainingEllin",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19064TrainingPlayer"}}
    },
    ["1906402"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19064TrainingNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 160501,
                alias = "Npc160501",
                script = "Actor/Npc/TempNPC",
                pos = "Q19064TrainingEllin",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19064TrainingPlayer"}}
    },
    ["1906403"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19064TrainingNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 160501,
                alias = "Npc160501",
                script = "Actor/Npc/TempNPC",
                pos = "Q19064TrainingEllin",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19064TrainingPlayer"}}
    },
    ["1906404"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19064TrainingNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 160501,
                alias = "Npc160501",
                script = "Actor/Npc/TempNPC",
                pos = "Q19064TrainingEllin",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19064TrainingPlayer"}}
    }
}
