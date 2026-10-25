main_id = 19020
local tbl = {}
local n = 1902002
local v = 1902003
local n2 = 1902004
local n3 = 1902005
local n4 = 1902006
local n5 = 1902007
local n6 = 1902008
local n7 = 1902009
local n8 = 1902010
tbl[1] = 1902001
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
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"503"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133220679"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["1902001"] = {}, ["1902003"] = {}, ["1902007"] = {}, ["1902009"] = {}}

quest_data = {
    ["1902001"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3091,
                alias = "Npc3091",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19020_Wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1902002"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3091,
                alias = "Npc3091",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19020_Wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1902003"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1902004"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1902005"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1902006"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1902007"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1902008"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang4",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1902009"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang4",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1902010"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang5",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19020_Wulang5",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
