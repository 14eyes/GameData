main_id = 73676
local tbl = {}
local n = 7367602
local v = 7367603
local n2 = 7367605
local n3 = 7367604
tbl[1] = 7367601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133303346"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133303654"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133303655"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7367601"] = {}, ["7367602"] = {}, ["7367603"] = {}, ["7367604"] = {}, ["7367605"] = {}}

quest_data = {
    ["7367601"] = {
        npcs = {
            {
                id = 12760,
                alias = "Npc12760",
                script = "Actor/Npc/TempNPC",
                pos = "Q7367601_N12760",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7367602"] = {
        npcs = {
            {
                id = 12760,
                alias = "Npc12760",
                script = "Actor/Npc/TempNPC",
                pos = "Q7367602_guide_Q7367604_N12760",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7367603"] = {
        npcs = {
            {
                id = 12760,
                alias = "Npc12760",
                script = "Actor/Npc/TempNPC",
                pos = "Q7367602_guide_Q7367604_N12760",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7367604"] = {
        npcs = {
            {
                id = 12760,
                alias = "Npc12760",
                script = "Actor/Npc/TempNPC",
                pos = "Q7367602_guide_Q7367604_N12760",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12761,
                alias = "Npc12761",
                script = "Actor/Npc/TempNPC",
                pos = "T7367603_T7367604_N12761",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12762,
                alias = "Npc12762",
                script = "Actor/Npc/TempNPC",
                pos = "T7367604_N12762",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7367605"] = {
        npcs = {
            {
                id = 12760,
                alias = "Npc12760",
                script = "Actor/Npc/TempNPC",
                pos = "Q7367602_guide_Q7367604_N12760",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
