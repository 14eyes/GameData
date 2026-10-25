main_id = 19148
local tbl = {}
local n = 1914802
local v = 1914803
local n2 = 1914804
local n3 = 1914808
local n4 = 1914805
local n5 = 1914806
local n6 = 1914807
tbl[1] = 1914801
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
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"505"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220760"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133220748"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133220769"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1914801"] = {},
    ["1914802"] = {},
    ["1914803"] = {},
    ["1914804"] = {
        npcs = {
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12512,
                alias = "Npc12512",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12595,
                alias = "Npc12595",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12595",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12596,
                alias = "Npc12596",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12596",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914805"] = {
        npcs = {
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12512,
                alias = "Npc12512",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12512",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12595,
                alias = "Npc12595",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12595",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12596,
                alias = "Npc12596",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12596",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1914807"] = {}
}

quest_data = {
    ["1914801"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914801_C1914801_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12536,
                alias = "Npc12536",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914801_N12536",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914801_C1914801_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914801_N12536",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914802"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914802_C1914802_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914802_C1914802_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1914803"] = {
        npcs = {
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12512,
                alias = "Npc12512",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12595,
                alias = "Npc12595",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12595",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12596,
                alias = "Npc12596",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12596",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1914804"] = {},
    ["1914805"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12512,
                alias = "Npc12512",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12512",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12595,
                alias = "Npc12595",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12595",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12596,
                alias = "Npc12596",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12596",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1914806"] = {},
    ["1914807"] = {
        npcs = {
            {
                id = 510,
                alias = "Coop_Shinobu",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914807_C1914807_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914807_C1914807_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914807_C1914807_N510",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1914808"] = {
        npcs = {
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12512,
                alias = "Npc12512",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12512",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12595,
                alias = "Npc12595",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12595",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12596,
                alias = "Npc12596",
                script = "Actor/Npc/TempNPC",
                pos = "Q1914805_C1914805_N12596",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
