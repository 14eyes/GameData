main_id = 19016
local tbl = {}
local n = 1901602
local v = 1901603
local n2 = 1901604
local n3 = 1901605
local n4 = 1901607
tbl[1] = 1901601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"502"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133209059"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl4 = {CLIENT = {}}
local server2 = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"502"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2 = {}
local tbl5 = {}
local str2 = ""
tbl5[1] = "133209059"
tbl5[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2[1] = tbl5
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP2
tbl4.SERVER = server2
cancel_action = tbl4

rewind_data = {
    ["1901601"] = {},
    ["1901602"] = {},
    ["1901604"] = {},
    ["1901605"] = {},
    ["1901607"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Ayaka_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1901601"] = {
        npcs = {
            {
                id = 12167,
                alias = "Npc12167",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Guanyuan1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Sayu1_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1901602"] = {
        npcs = {
            {
                id = 12167,
                alias = "Npc12167",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Guanyuan2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12168,
                alias = "Npc12168",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Xiaohai_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12169,
                alias = "Npc12169",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Hailuangui_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12316,
                alias = "Npc12316",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Damo_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12317,
                alias = "Npc12317",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Damo2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1901603"] = {
        npcs = {
            {
                id = 12167,
                alias = "Npc12167",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Guanyuan2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12168,
                alias = "Npc12168",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Xiaohai_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12169,
                alias = "Npc12169",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Hailuangui_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1901604"] = {
        npcs = {
            {
                id = 12167,
                alias = "Npc12167",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Guanyuan2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12168,
                alias = "Npc12168",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Xiaohai_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12169,
                alias = "Npc12169",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Hailuangui_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12170,
                alias = "Npc12170",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Hailuangui_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12209,
                alias = "Npc12209",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Hailuangui_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12210,
                alias = "Npc12210",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Soldier2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 12211,
                alias = "Npc12211",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Soldier3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Sayu2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        },
        gadgets = {
            {
                id = 70710502,
                alias = "Gadget70710502",
                pos = "Q19016_SayuTumbler_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1901605"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Ayaka_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12167,
                alias = "Npc12167",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Guanyuan3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Sayu3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1901607"] = {
        npcs = {
            {
                id = 504,
                alias = "Coop_Sayu",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Sayu_Ayaka_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19014_InagiHotomi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1040,
                alias = "Npc1040",
                script = "Actor/Npc/TempNPC",
                pos = "Q19016_Sayu_Ayaka_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
