main_id = 10006
local tbl = {}
local n = 1000607
local v = 1000609
local n2 = 1000602
local n3 = 1000608
local n4 = 1000603
local n5 = 1000604
local n6 = 1000605
local n7 = 1000610
local n8 = 1000606
tbl[1] = 1000601
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
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1000601"] = {}, ["1000608"] = {}, ["1000609"] = {}, ["1000610"] = {}}

quest_data = {
    ["1000601"] = {
        npcs = {
            {
                id = 2624,
                alias = "Npc2624",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_257:-0.058,0.000,10.479]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_257:-0.058,0.000,10.479]",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1280, pos = "[20302_5:-0.041,56.703,-6.077,0.000,348.733,0.000]"}}
    },
    ["1000602"] = {
        npcs = {
            {
                id = 2624,
                alias = "Npc2624",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_1:1.160,56.703,-21.727,0.000,199.424,0.000]",
                scene_id = 20302,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15861,
                alias = "Npc15861",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_4:-0.119,59.263,-35.013]",
                scene_id = 20302,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_1:1.160,56.703,-21.727,0.000,199.424,0.000]",
                scene_id = 20302,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1000603"] = {
        npcs = {
            {
                id = 15861,
                alias = "Npc15861",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_4:-0.119,59.263,-35.013]",
                scene_id = 20302,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1000604"] = {
        npcs = {
            {
                id = 15861,
                alias = "Npc15861",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_4:-0.119,59.263,-35.013]",
                scene_id = 20302,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1000605"] = {
        npcs = {
            {
                id = 15861,
                alias = "Npc15861",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_4:-0.119,59.263,-35.013]",
                scene_id = 20302,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1000606"] = {
        npcs = {
            {
                id = 2624,
                alias = "Npc2624",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_1:1.160,56.703,-21.727,0.000,199.424,0.000]",
                scene_id = 20302,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15861,
                alias = "Npc15861",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_4:-0.119,59.263,-35.013]",
                scene_id = 20302,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_1:1.160,56.703,-21.727,0.000,199.424,0.000]",
                scene_id = 20302,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1000607"] = {
        npcs = {
            {
                id = 2624,
                alias = "Npc2624",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_257:-0.058,0.000,10.479]",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[1004_257:-0.058,0.000,10.479]",
                scene_id = 1004,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1000608"] = {
        npcs = {
            {
                id = 15861,
                alias = "Npc15861",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_4:-0.119,59.263,-35.013]",
                scene_id = 20302,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1000609"] = {
        npcs = {
            {
                id = 2624,
                alias = "Npc2624",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_1:1.160,56.703,-21.727,0.000,199.424,0.000]",
                scene_id = 20302,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_1:1.160,56.703,-21.727,0.000,199.424,0.000]",
                scene_id = 20302,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1000610"] = {
        npcs = {
            {
                id = 15861,
                alias = "Npc15861",
                script = "Actor/Npc/TempNPC",
                pos = "[20302_4:-0.119,59.263,-35.013]",
                scene_id = 20302,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
