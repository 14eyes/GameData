main_id = 7018
local tbl = {}
local n = 701802
local v = 701803
local n2 = 701811
local n3 = 701804
local n4 = 701805
local n5 = 701806
local n6 = 701807
local n7 = 701808
local n8 = 701809
local n9 = 701810
tbl[1] = 701801
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
    ["701801"] = {},
    ["701802"] = {},
    ["701803"] = {},
    ["701804"] = {
        npcs = {
            {
                id = 17000,
                alias = "Npc17000",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_3:464.589,180.867,481.198,0.000,180.000,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17005,
                alias = "Npc17005",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_59:471.631,180.867,481.650,0.000,149.721,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2631,
                alias = "Npc2631",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_58:467.550,180.867,480.045,0.000,204.370,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["701805"] = {},
    ["701806"] = {},
    ["701807"] = {},
    ["701808"] = {},
    ["701809"] = {},
    ["701810"] = {},
    ["701811"] = {}
}

quest_data = {
    ["701801"] = {
        npcs = {
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[1158_107:-11.096,0.011,18.344,0.000,228.239,0.000]",
                scene_id = 1158,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1158_106:-12.795,0.011,18.283,0.000,129.144,0.000]",
                scene_id = 1158,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[1158_108:-12.939,0.011,16.666,0.000,38.638,0.000]",
                scene_id = 1158,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["701802"] = {
        npcs = {
            {
                id = 1330,
                alias = "Npc1330",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17460:9934.290,414.525,6700.111,0.000,344.671,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17461:9933.689,414.525,6702.121,0.000,168.399,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["701803"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_31:419.911,251.858,467.985,0.000,43.424,0.000]"}}
    },
    ["701804"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_58:467.550,180.867,480.045,0.000,204.370,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_58:467.550,180.867,480.045,0.000,204.370,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20367, pos = "[20367_4:465.464,170.796,448.950,0.000,180.000,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_29:465.418,180.867,485.658,0.000,180.000,0.000]"}}
    },
    ["701805"] = {},
    ["701806"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_5:465.550,171.024,449.277,0.000,180.000,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_4:465.464,170.796,448.950,0.000,180.000,0.000]"}}
    },
    ["701807"] = {},
    ["701808"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_5:465.550,171.024,449.277,0.000,180.000,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_4:465.464,170.796,448.950,0.000,180.000,0.000]"}}
    },
    ["701809"] = {},
    ["701810"] = {
        npcs = {
            {
                id = 17000,
                alias = "Npc17000",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_3:464.589,180.867,481.198,0.000,180.000,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17005,
                alias = "Npc17005",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_59:471.631,180.867,481.650,0.000,149.721,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_5:465.550,171.024,449.277,0.000,180.000,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_4:465.464,170.796,448.950,0.000,180.000,0.000]"}}
    },
    ["701811"] = {
        npcs = {
            {
                id = 17005,
                alias = "Npc17005",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_59:471.631,180.867,481.650,0.000,149.721,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2631,
                alias = "Npc2631",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_58:467.550,180.867,480.045,0.000,204.370,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[20367_58:467.550,180.867,480.045,0.000,204.370,0.000]",
                scene_id = 20367,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1335, pos = "[20367_31:419.911,251.858,467.985,0.000,43.424,0.000]"}}
    }
}
