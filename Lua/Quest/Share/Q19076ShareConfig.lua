main_id = 19076
local tbl = {}
local n = 1907602
local v = 1907603
local n2 = 1907604
local n3 = 1907608
local n4 = 1907605
local n5 = 1907606
local n6 = 1907607
tbl[1] = 1907601
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
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"507"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "201073008"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133309819"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_UNLOCK_AVATAR_TEAM_V2 = {{}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1907601"] = {},
    ["1907603"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907603_N515",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1907604"] = {},
    ["1907605"] = {},
    ["1907607"] = {}
}

quest_data = {
    ["1907601"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907601_N515",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_102:14.597,2.153,33.714,0.000,81.400,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907601_N515",
                scene_id = 1073,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1907602"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907601_N515",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_102:14.597,2.153,33.714,0.000,81.400,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907601_N515",
                scene_id = 1073,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1907603"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "[1073_102:14.597,2.153,33.714,0.000,81.400,0.000]",
                scene_id = 1073,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907603_N515",
                scene_id = 1073,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1907604"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400475:-1902.682,245.681,2539.009,0.000,74.659,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400475:-1902.682,245.681,2539.009,0.000,74.659,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1907605"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907605_N515",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907605_N515",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1907606"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907605_N515",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907605_N515",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1907607"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907605_N515",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "Q1907605_N515",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1907608"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400475:-1902.682,245.681,2539.009,0.000,74.659,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400475:-1902.682,245.681,2539.009,0.000,74.659,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
