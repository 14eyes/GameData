main_id = 13020
local tbl = {}
local n = 1302002
local v = 1302003
local n2 = 1302004
local n3 = 1302005
local n4 = 1302011
local n5 = 1302012
local n6 = 1302013
local n7 = 1302006
local n8 = 1302007
local n9 = 1302008
local n10 = 1302009
local n11 = 1302010
tbl[1] = 1302001
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
tbl[13] = n11
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1302001"] = {},
    ["1302002"] = {},
    ["1302004"] = {},
    ["1302006"] = {},
    ["1302009"] = {},
    ["1302010"] = {},
    ["1302011"] = {},
    ["1302013"] = {}
}

quest_data = {
    ["1302001"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302002_T1302003_N12772_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13003,
                alias = "Npc13003",
                script = "Actor/Npc/TempNPC",
                pos = "Q13020_guide_T1302001_N13003",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13030,
                alias = "Npc13030",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302001_N13030",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13031,
                alias = "Npc13031",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302001_N13031",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1302002"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302002_T1302003_N12772_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13030,
                alias = "Npc13030",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302001_N13030",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13031,
                alias = "Npc13031",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302001_N13031",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13091,
                alias = "Npc13091",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302002_T1302003_N12772_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 4086,
                alias = "Npc4086",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1302002_T1302003_N12772_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 4002,
                alias = "Npc4002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1302002_T1302003_N12772_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1302003"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302002_T1302003_N12772_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13030,
                alias = "Npc13030",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302001_N13030",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13031,
                alias = "Npc13031",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302001_N13031",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13091,
                alias = "Npc13091",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302002_T1302003_N12772_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 4086,
                alias = "Npc4086",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1302002_T1302003_N12772_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 4002,
                alias = "Npc4002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1302002_T1302003_N12772_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1302004"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302004_Q1302005_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1302005"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302004_Q1302005_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1302006"] = {
        npcs = {
            {
                id = 13008,
                alias = "Npc13008",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302006_N13008",
                scene_id = 1072,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1302007"] = {
        npcs = {
            {
                id = 13008,
                alias = "Npc13008",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302006_N13008",
                scene_id = 1072,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1302008"] = {
        npcs = {
            {
                id = 13008,
                alias = "Npc13008",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302006_N13008",
                scene_id = 1072,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1302009"] = {},
    ["1302010"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302005_N1053_Q1302010",
                scene_id = 1072,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1302011"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302011_Q1302012_T1302012_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4021,
                alias = "Npc4021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1302011_Q1302012_T1302012_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4020,
                alias = "Npc4020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1302011_Q1302012_T1302012_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1302012"] = {
        npcs = {
            {
                id = 1053,
                alias = "Npc1053",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302011_Q1302012_T1302012_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4021,
                alias = "Npc4021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1302011_Q1302012_T1302012_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4020,
                alias = "Npc4020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1302011_Q1302012_T1302012_N1053",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1302013"] = {
        npcs = {
            {
                id = 13003,
                alias = "Npc13003",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302013_T1302013_N13003",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
