main_id = 13030
local tbl = {}
local n = 1303002
local v = 1303009
local n2 = 1303003
local n3 = 1303004
local n4 = 1303005
local n5 = 1303007
local n6 = 1303006
tbl[1] = 1303001
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
    ["1303001"] = {},
    ["1303002"] = {},
    ["1303003"] = {},
    ["1303004"] = {
        npcs = {
            {
                id = 30213,
                alias = "Npc30213",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303003_SHOP",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1303005"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303004_XIAOGONG",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1303006"] = {},
    ["1303007"] = {},
    ["1303009"] = {}
}

quest_data = {
    ["1303001"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303001_xiaogong",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3035,
                alias = "Npc3035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303001_laodiee",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303005_NXD",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30213,
                alias = "Npc30213",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303003_SHOP",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13261,
                alias = "Npc13261",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303007_GIRL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 4091,
                alias = "Npc4091",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303005_NXD",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3036,
                alias = "Npc3036",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303001_laodiee",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 3037,
                alias = "Npc3037",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303001_laodiee",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 3066,
                alias = "Npc3066",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303001_laodiee",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1303002"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303001_xiaogong",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3035,
                alias = "Npc3035",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303001_laodiee",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303005_NXD",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 30213,
                alias = "Npc30213",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303003_SHOP",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13261,
                alias = "Npc13261",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303007_GIRL",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 4091,
                alias = "Npc4091",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303005_NXD",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3036,
                alias = "Npc3036",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303001_laodiee",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 3037,
                alias = "Npc3037",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303001_laodiee",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 3066,
                alias = "Npc3066",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303001_laodiee",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1303002_XIAOGONG"}}
    },
    ["1303003"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303003_XIAOGONG",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303005_NXD",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30213,
                alias = "Npc30213",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303003_SHOP",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13261,
                alias = "Npc13261",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303007_GIRL",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 4091,
                alias = "Npc4091",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303005_NXD",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1303004"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303004_XIAOGONG",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303005_NXD",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13261,
                alias = "Npc13261",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303007_GIRL",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 4091,
                alias = "Npc4091",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303005_NXD",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1303005"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303005_NXD",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13261,
                alias = "Npc13261",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303007_GIRL",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4091,
                alias = "Npc4091",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303005_NXD",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1303006"] = {},
    ["1303007"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303007_XIAOGONG",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13261,
                alias = "Npc13261",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303007_GIRL",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1303009"] = {
        npcs = {
            {
                id = 1035,
                alias = "Npc1035",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303002_XIAOGONG",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303005_NXD",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30213,
                alias = "Npc30213",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303003_SHOP",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13261,
                alias = "Npc13261",
                script = "Actor/Npc/TempNPC",
                pos = "Q1303007_GIRL",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 4091,
                alias = "Npc4091",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1303005_NXD",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}
