main_id = 2000
local tbl = {}
local n = 200002
local v = 200003
local n2 = 200004
local n3 = 200011
local n4 = 200005
local n5 = 200006
local n6 = 200007
local n7 = 200008
local n8 = 200009
local n9 = 200010
tbl[1] = 200001
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["200001"] = {},
    ["200003"] = {},
    ["200004"] = {},
    ["200009"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200004Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200004Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200010"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200103Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200011"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200004Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200004Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["200001"] = {},
    ["200002"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200002Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200003"] = {
        npcs = {
            {
                id = 207701,
                alias = "Npc207701",
                script = "Actor/Npc/TempNPC",
                pos = "Q200003Zhuzi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200004"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200004Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200004Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200005"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200004Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200004Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10415,
                alias = "Npc10415",
                script = "Actor/Npc/TempNPC",
                pos = "Q200006Npc",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200006"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200004Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200004Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10415,
                alias = "Npc10415",
                script = "Actor/Npc/TempNPC",
                pos = "Q200006Npc",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200007"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q200004Beidou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1032,
                alias = "Npc1032",
                script = "Actor/Npc/TempNPC",
                pos = "Q200004Kazuha",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10415,
                alias = "Npc10415",
                script = "Actor/Npc/TempNPC",
                pos = "Q200006Npc",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["200008"] = {},
    ["200009"] = {},
    ["200010"] = {},
    ["200011"] = {}
}
