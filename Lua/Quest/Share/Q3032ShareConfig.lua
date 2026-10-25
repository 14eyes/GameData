main_id = 3032
local tbl = {}
local n = 303202
local v = 303204
local n2 = 303203
local n3 = 303205
tbl[1] = 303201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["303201"] = {},
    ["303202"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q303201_N1056",
                scene_id = 1075,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "Q303202_N12827",
                scene_id = 1075,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["303204"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q303201_N1056",
                scene_id = 1075,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "Q303202_N12827",
                scene_id = 1075,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["303205"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q303201_N1056",
                scene_id = 1075,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["303201"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q303201_N1056",
                scene_id = 1075,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "Q303202_N12827",
                scene_id = 1075,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["303202"] = {},
    ["303203"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q303201_N1056",
                scene_id = 1075,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "Q303202_N12827",
                scene_id = 1075,
                room_id = 1,
                data_index = 2
            },
            {
                id = 12991,
                alias = "Npc12991",
                script = "Actor/Npc/TempNPC",
                pos = "Q303203_T303203_N12991",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12992,
                alias = "Npc12992",
                script = "Actor/Npc/TempNPC",
                pos = "Q303203_T303203_N12992",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["303204"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q303201_N1056",
                scene_id = 1075,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "Q303202_N12827",
                scene_id = 1075,
                room_id = 1,
                data_index = 2
            },
            {
                id = 12991,
                alias = "Npc12991",
                script = "Actor/Npc/TempNPC",
                pos = "Q303203_T303203_N12991",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12992,
                alias = "Npc12992",
                script = "Actor/Npc/TempNPC",
                pos = "Q303203_T303203_N12992",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q30320_guide"}}
    },
    ["303205"] = {
        npcs = {
            {
                id = 1065,
                alias = "Npc1065",
                script = "Actor/Npc/TempNPC",
                pos = "Q303202_N12827",
                scene_id = 1075,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q303205_T303205_N1005",
                scene_id = 3,
                room_id = 1,
                data_index = 2
            },
            {
                id = 12991,
                alias = "Npc12991",
                script = "Actor/Npc/TempNPC",
                pos = "Q303203_T303203_N12991",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12992,
                alias = "Npc12992",
                script = "Actor/Npc/TempNPC",
                pos = "Q303203_T303203_N12992",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12999,
                alias = "Npc12999",
                script = "Actor/Npc/TempNPC",
                pos = "Q303205_T303205_N12999",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}
