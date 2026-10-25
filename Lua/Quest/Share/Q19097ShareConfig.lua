main_id = 19097
local tbl = {}
local n = 1909701
local v = 1909702
local n2 = 1909703
local n3 = 1909705
local n4 = 1909706
local n5 = 1909707
tbl[1] = 1909708
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133002142"
tbl3[2] = str
local tbl4 = {}
local str2 = "0"
tbl4[1] = "133002144"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_MODIFY_WEATHER_AREA = {}
local tbl5 = {}
local str3 = "0"
tbl5[1] = "1015"
tbl5[2] = str3
qUEST_EXEC_MODIFY_WEATHER_AREA[1] = tbl5
server.QUEST_EXEC_MODIFY_WEATHER_AREA = qUEST_EXEC_MODIFY_WEATHER_AREA
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1909701"] = {},
    ["1909702"] = {},
    ["1909703"] = {},
    ["1909705"] = {},
    ["1909706"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4242:1756.046,221.863,-386.594,0.000,102.904,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1909707"] = {},
    ["1909708"] = {}
}

quest_data = {
    ["1909701"] = {
        npcs = {
            {
                id = 1527,
                alias = "Npc1527",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4245:8.318,0.007,4.287,0.000,275.040,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4486:1769.296,221.863,-397.254,0.000,62.401,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4486:1769.296,221.863,-397.254,0.000,62.401,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1018, pos = "[1018_82:-0.021,0.015,1.049,0.000,180.000,0.000]"}}
    },
    ["1909702"] = {
        npcs = {
            {
                id = 1527,
                alias = "Npc1527",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1018_71:8.595,0.007,4.489,0.000,272.772,0.000]",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4486:1769.296,221.863,-397.254,0.000,62.401,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4486:1769.296,221.863,-397.254,0.000,62.401,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 1018, pos = "[1018_82:-0.021,0.015,1.049,0.000,180.000,0.000]"},
            {point_id = 2, scene_id = 3, pos = "[3_4503:1775.475,221.863,-388.403,0.000,21.780,0.000]"}
        }
    },
    ["1909703"] = {
        npcs = {
            {
                id = 1527,
                alias = "Npc1527",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4365:1776.577,221.863,-385.749,0.000,180.300,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4365:1776.577,221.863,-385.749,0.000,180.300,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4365:1776.577,221.863,-385.749,0.000,180.300,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_4503:1775.475,221.863,-388.403,0.000,21.780,0.000]"}}
    },
    ["1909705"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4240:1788.187,221.863,-395.807,0.000,286.862,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4242:1756.046,221.863,-386.594,0.000,102.904,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4242:1756.046,221.863,-386.594,0.000,102.904,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1909706"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5079:1788.474,221.863,-394.991,0.000,300.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4242:1756.046,221.863,-386.594,0.000,102.904,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1909707"] = {
        npcs = {
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4240:1788.187,221.863,-395.807,0.000,286.862,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13319,
                alias = "Npc13319",
                script = "Actor/Npc/TempNPC",
                pos = "[1018_70:8.660,0.019,3.815,0.000,309.429,0.000]",
                scene_id = 1018,
                room_id = 1,
                data_index = 2
            },
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[1018_68:8.634,0.020,5.458,0.000,236.779,0.000]",
                scene_id = 1018,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[1018_68:8.634,0.020,5.458,0.000,236.779,0.000]",
                scene_id = 1018,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["1909708"] = {}
}
