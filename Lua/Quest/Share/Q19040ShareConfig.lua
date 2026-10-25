main_id = 19040
local tbl = {}
local n = 1904002
local v = 1904003
local n2 = 1904009
local n3 = 1904012
local n4 = 1904011
local n5 = 1904010
local n6 = 1904004
local n7 = 1904008
local n8 = 1904005
local n9 = 1904006
local n10 = 1904007
tbl[1] = 1904001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1904001"] = {},
    ["1904003"] = {},
    ["1904004"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904009_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904006"] = {},
    ["1904008"] = {},
    ["1904009"] = {},
    ["1904010"] = {},
    ["1904011"] = {},
    ["1904012"] = {},
    ["1904007"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904007_C1904003_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1904001"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904002_C1904001_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904002_C1904001_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904002"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904002_C1904001_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904002_C1904001_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904003"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904009_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2044,
                alias = "Npc2044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "C1904003_N2044",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904009_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1904004"] = {
        npcs = {
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904009_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904009_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904005"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904008_Yunjin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904008_Yunjin",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904006"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904007_C1904003_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904007_C1904003_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904007"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904007_C1904003_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904007_C1904003_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904008"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904008_Yunjin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12426,
                alias = "Npc12426",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904008_Photo",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904008_Yunjin",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1904009"] = {
        npcs = {
            {
                id = 509,
                alias = "Coop_Yunjin",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904009_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1046,
                alias = "Npc1046",
                script = "Actor/Npc/TempNPC",
                pos = "Q1904009_N509",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1904010"] = {},
    ["1904011"] = {},
    ["1904012"] = {}
}
