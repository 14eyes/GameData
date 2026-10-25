main_id = 40116
local tbl = {}
local n = 4011602
local v = 4011603
local n2 = 4011604
local n3 = 4011605
local n4 = 4011606
local n5 = 4011614
local n6 = 4011607
local n7 = 4011608
local n8 = 4011612
local n9 = 4011615
local n10 = 4011609
local n11 = 4011611
local n12 = 4011610
local n13 = 4011613
tbl[1] = 4011601
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

cancel_action = {
    CLIENT = {},
    SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120321"}, {"120320"}, {"120319"}}}
}

rewind_data = {
    ["4011601"] = {},
    ["4011602"] = {},
    ["4011603"] = {},
    ["4011605"] = {},
    ["4011607"] = {},
    ["4011608"] = {
        npcs = {
            {
                id = 13252,
                alias = "Npc13252",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011608_N13252",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011609"] = {
        npcs = {
            {
                id = 13252,
                alias = "Npc13252",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011608_N13252",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13246,
                alias = "Npc13246",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100037:397.110,411.971,-191.940,0.860,259.647,359.950]",
                scene_id = 10,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4011610"] = {},
    ["4011611"] = {
        npcs = {
            {
                id = 13252,
                alias = "Npc13252",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011608_N13252",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011612"] = {
        npcs = {
            {
                id = 13252,
                alias = "Npc13252",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011608_N13252",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011613"] = {},
    ["4011614"] = {},
    ["4011615"] = {
        npcs = {
            {
                id = 13252,
                alias = "Npc13252",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011608_N13252",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13246,
                alias = "Npc13246",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100037:397.110,411.971,-191.940,0.860,259.647,359.950]",
                scene_id = 10,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["4011601"] = {},
    ["4011602"] = {
        npcs = {
            {
                id = 13247,
                alias = "Npc13247",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011601_Q4011602_N13247",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100100:443.653,87.885,462.196,0.000,173.928,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13253,
                alias = "Npc13253",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100102:442.792,87.885,461.901,0.000,142.574,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100101:445.188,87.885,462.559,0.000,209.156,0.000]",
                scene_id = 10,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4011603"] = {},
    ["4011604"] = {
        npcs = {
            {
                id = 13247,
                alias = "Npc13247",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011604_N13247",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011605"] = {
        npcs = {
            {
                id = 13252,
                alias = "Npc13252",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011606_N13252",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011606"] = {
        npcs = {
            {
                id = 13252,
                alias = "Npc13252",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011606_N13252",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011607"] = {
        npcs = {
            {
                id = 13252,
                alias = "Npc13252",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011608_N13252",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011608"] = {},
    ["4011609"] = {
        transmit_points = {{point_id = 1, scene_id = 10, pos = "[10_100161:407.129,362.079,-202.534,0.000,206.743,0.000]"}}
    },
    ["4011610"] = {},
    ["4011611"] = {},
    ["4011612"] = {
        npcs = {
            {
                id = 13246,
                alias = "Npc13246",
                script = "Actor/Npc/TempNPC",
                pos = "[10_100037:397.110,411.971,-191.940,0.860,259.647,359.950]",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011613"] = {
        npcs = {
            {
                id = 13252,
                alias = "Npc13252",
                script = "Actor/Npc/TempNPC",
                pos = "Q4011613_N13252",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4011614"] = {},
    ["4011615"] = {}
}
