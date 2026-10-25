main_id = 13009
local tbl = {}
local n = 1300902
local v = 1300903
local n2 = 1300910
local n3 = 1300904
local n4 = 1300905
local n5 = 1300906
local n6 = 1300907
local n7 = 1300908
local n8 = 1300909
tbl[1] = 1300901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"52"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133303394"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133302418"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120115"}, {"120123"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1300901"] = {},
    ["1300903"] = {
        npcs = {
            {
                id = 12772,
                alias = "Npc12772",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300901_N12772",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1300904"] = {},
    ["1300905"] = {
        npcs = {
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300905_N1055",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1300906"] = {},
    ["1300909"] = {},
    ["1300910"] = {}
}

quest_data = {
    ["1300901"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300903",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12772,
                alias = "Npc12772",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300901_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1300902"] = {},
    ["1300903"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300903",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1300904"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300905_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300905_N1055",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1300905"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300905_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1300906"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300906_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1300907"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300906_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1300908"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300906_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1300909"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300906_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1300910"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300902_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12773,
                alias = "Npc12773",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300902_N12773",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12774,
                alias = "Npc12774",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300902_N12774",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12775,
                alias = "Npc12775",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300902_N12775",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
