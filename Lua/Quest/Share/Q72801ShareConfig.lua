main_id = 72801
local tbl = {}
local n = 7280102
local v = 7280103
local n2 = 7280105
local n3 = 7280106
local n4 = 7280107
local n5 = 7280108
local n6 = 7280109
local n7 = 7280110
local n8 = 7280116
local n9 = 7280111
local n10 = 7280112
local n11 = 7280113
local n12 = 7280114
local n13 = 7280115
tbl[1] = 7280101
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
tbl[14] = n12
tbl[15] = n13
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7280101"] = {},
    ["7280102"] = {},
    ["7280103"] = {},
    ["7280105"] = {
        npcs = {
            {
                id = 3013,
                alias = "Npc3013",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Heihachi05",
                scene_id = 1060,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7280106"] = {
        npcs = {
            {
                id = 3012,
                alias = "Npc3012",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Ramsay03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7280107"] = {
        npcs = {
            {
                id = 3012,
                alias = "Npc3012",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Ramsay03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3013,
                alias = "Npc3013",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Heihachi01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7280109"] = {
        npcs = {
            {
                id = 3012,
                alias = "Npc3012",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Ramsay03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3013,
                alias = "Npc3013",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Heihachi01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7280110"] = {},
    ["7280111"] = {},
    ["7280112"] = {},
    ["7280113"] = {
        npcs = {
            {
                id = 3013,
                alias = "Npc3013",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Heihachi03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7280114"] = {},
    ["7280115"] = {
        npcs = {
            {
                id = 3012,
                alias = "Npc3012",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Ramsay01",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            },
            {
                id = 3013,
                alias = "Npc3013",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Heihachi04",
                scene_id = 1060,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7280116"] = {},
    ["7280108"] = {
        npcs = {
            {
                id = 3012,
                alias = "Npc3012",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Ramsay03",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3013,
                alias = "Npc3013",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Heihachi01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

quest_data = {
    ["7280101"] = {},
    ["7280102"] = {},
    ["7280103"] = {
        npcs = {
            {
                id = 3012,
                alias = "Npc3012",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Ramsay01",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            },
            {
                id = 3013,
                alias = "Npc3013",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Heihachi05",
                scene_id = 1060,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7280105"] = {
        npcs = {
            {
                id = 3012,
                alias = "Npc3012",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Ramsay03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280106"] = {
        npcs = {
            {
                id = 3013,
                alias = "Npc3013",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Heihachi01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280107"] = {},
    ["7280108"] = {},
    ["7280109"] = {},
    ["7280110"] = {},
    ["7280111"] = {
        npcs = {
            {
                id = 3012,
                alias = "Npc3012",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Ramsay04",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280112"] = {
        npcs = {
            {
                id = 3013,
                alias = "Npc3013",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Heihachi03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280113"] = {
        npcs = {
            {
                id = 3012,
                alias = "Npc3012",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Ramsay05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280114"] = {
        npcs = {
            {
                id = 3012,
                alias = "Npc3012",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Ramsay01",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            },
            {
                id = 3013,
                alias = "Npc3013",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Heihachi04",
                scene_id = 1060,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7280115"] = {
        npcs = {
            {
                id = 3052,
                alias = "Npc3052",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72801Midori01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280116"] = {}
}
