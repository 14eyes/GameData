main_id = 25034
local tbl = {}
local n = 2503403
local v = 2503404
tbl[1] = 2503401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133504109"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["2503401"] = {}, ["2503404"] = {}}

quest_data = {
    ["2503401"] = {
        npcs = {
            {
                id = 14371,
                alias = "Npc14371",
                script = "Actor/Npc/TempNPC",
                pos = "Q2503401_N14371",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14372,
                alias = "Npc14372",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8629:-1907.748,162.501,8060.708,0.000,120.975,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14373,
                alias = "Npc14373",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8630:-1902.241,161.682,8058.256,0.000,300.067,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14374,
                alias = "Npc14374",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8631:-1904.915,161.792,8055.927,0.000,334.668,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 14450,
                alias = "Npc14450",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9321:-1902.030,161.566,8055.586,0.000,315.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["2503403"] = {
        npcs = {
            {
                id = 14371,
                alias = "Npc14371",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8633:-1910.754,163.396,8070.616,0.000,164.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14372,
                alias = "Npc14372",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8634:-1912.210,163.922,8070.451,0.000,147.136,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2503404"] = {
        npcs = {
            {
                id = 14371,
                alias = "Npc14371",
                script = "Actor/Npc/TempNPC",
                pos = "Q2503401_N14371",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
