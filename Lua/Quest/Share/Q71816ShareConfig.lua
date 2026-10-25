main_id = 71816
local tbl = {}
local n = 7181601
local v = 7181603
local n2 = 7181604
local n3 = 7181605
local n4 = 7181606
local n5 = 7181608
local n6 = 7181607
local n7 = 7181610
local n8 = 7181602
tbl[1] = 7181609
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
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133107155"}}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133107156,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl4 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl5 = {}
local str2 = ""
tbl5[1] = "133107155"
tbl5[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl5
server2.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl6 = {}
local str3 = "133107156,1"
tbl6[1] = "3"
tbl6[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl6
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
tbl4.SERVER = server2
cancel_action = tbl4

rewind_data = {
    ["7181601"] = {},
    ["7181602"] = {},
    ["7181603"] = {
        npcs = {
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133902HuangshanTalk",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7181605"] = {
        npcs = {
            {
                id = 206301,
                alias = "Npc206301",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339FrancisBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7181606"] = {},
    ["7181608"] = {
        npcs = {
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339HuangshanEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7181609"] = {}
}

quest_data = {
    ["7181601"] = {
        npcs = {
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133901HuangshanBor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133902HuangshanTalk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 206301,
                alias = "Npc206301",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339FrancisBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339HuangshanEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7181602"] = {
        npcs = {
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133901HuangshanBor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133902HuangshanTalk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 206301,
                alias = "Npc206301",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339FrancisBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339HuangshanEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7181603"] = {
        npcs = {
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133901HuangshanBor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133902HuangshanTalk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 206301,
                alias = "Npc206301",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339FrancisBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339HuangshanEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7181604"] = {
        npcs = {
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133901HuangshanBor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133902HuangshanTalk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 206301,
                alias = "Npc206301",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339FrancisBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339HuangshanEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7181605"] = {
        npcs = {
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133901HuangshanBor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133902HuangshanTalk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 206301,
                alias = "Npc206301",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339FrancisBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339HuangshanEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7181606"] = {
        npcs = {
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133901HuangshanBor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133902HuangshanTalk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 206301,
                alias = "Npc206301",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339FrancisBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339HuangshanEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7181607"] = {
        npcs = {
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133901HuangshanBor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133902HuangshanTalk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 206301,
                alias = "Npc206301",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339FrancisBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339HuangshanEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7181608"] = {
        npcs = {
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133901HuangshanBor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q4133902HuangshanTalk",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 206301,
                alias = "Npc206301",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339FrancisBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 220701,
                alias = "Npc220701",
                script = "Actor/Npc/TempNPC",
                pos = "Q41339HuangshanEnd",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7181609"] = {}
}
