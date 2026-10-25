main_id = 2014
local tbl = {}
local n = 201402
local v = 201403
local n2 = 201404
local n3 = 201405
local n4 = 201406
local n5 = 201407
local n6 = 201408
tbl[1] = 201401
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
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["201401"] = {},
    ["201405"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        avatar = {offline_dungeon_id = 0, scene_id = 3, pos = "Q201402Player"}
    },
    ["201406"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201407"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Dajiu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["201401"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201402"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201403"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201404"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201405"] = {
        npcs = {
            {
                id = 12071,
                alias = "Npc12071",
                script = "Actor/Npc/TempNPC",
                pos = "Q201403Target",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201406"] = {
        npcs = {
            {
                id = 12071,
                alias = "Npc12071",
                script = "Actor/Npc/TempNPC",
                pos = "Q201407Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Dajiu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201407"] = {
        npcs = {
            {
                id = 12072,
                alias = "Npc12072",
                script = "Actor/Npc/TempNPC",
                pos = "Q201407Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3146,
                alias = "Npc3146",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201407Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201408"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201006Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12072,
                alias = "Npc12072",
                script = "Actor/Npc/TempNPC",
                pos = "Q201407Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3146,
                alias = "Npc3146",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201407Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        gadgets = {
            {
                id = 70710504,
                alias = "Gadget70710504",
                pos = "Q201011_Xieyan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
