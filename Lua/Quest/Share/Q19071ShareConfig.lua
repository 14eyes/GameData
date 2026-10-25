main_id = 19071
local tbl = {}
local n = 1907102
local v = 1907103
local n2 = 1907104
tbl[1] = 1907101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"507"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133303669"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133303673"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1907101"] = {}, ["1907103"] = {}, ["1907104"] = {}}

quest_data = {
    ["1907101"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330300387:-1911.351,275.676,3963.766,0.000,209.754,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13277,
                alias = "Npc13277",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330300387:-1911.351,275.676,3963.766,0.000,209.754,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330300387:-1911.351,275.676,3963.766,0.000,209.754,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13235,
                alias = "Npc13235",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330300387:-1911.351,275.676,3963.766,0.000,209.754,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1907102"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330300387:-1911.351,275.676,3963.766,0.000,209.754,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13277,
                alias = "Npc13277",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330300387:-1911.351,275.676,3963.766,0.000,209.754,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330300387:-1911.351,275.676,3963.766,0.000,209.754,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13235,
                alias = "Npc13235",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330300387:-1911.351,275.676,3963.766,0.000,209.754,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1907103"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330300387:-1911.351,275.676,3963.766,0.000,209.754,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13277,
                alias = "Npc13277",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330300387:-1911.351,275.676,3963.766,0.000,209.754,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330300387:-1911.351,275.676,3963.766,0.000,209.754,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13235,
                alias = "Npc13235",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330300387:-1911.351,275.676,3963.766,0.000,209.754,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1907104"] = {
        npcs = {
            {
                id = 515,
                alias = "Coop_Kaveh",
                script = "Actor/Npc/TempNPC",
                pos = "C1907104_N515",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1064,
                alias = "Npc1064",
                script = "Actor/Npc/TempNPC",
                pos = "C1907104_N515",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
