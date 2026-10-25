main_id = 7006
local tbl = {}
local n = 700602
local v = 700611
local n2 = 700603
local n3 = 700604
local n4 = 700605
local n5 = 700609
local n6 = 700606
local n7 = 700610
local n8 = 700607
local n9 = 700608
tbl[1] = 700601
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
    ["700601"] = {},
    ["700602"] = {},
    ["700603"] = {},
    ["700604"] = {},
    ["700605"] = {},
    ["700606"] = {},
    ["700607"] = {},
    ["700608"] = {},
    ["700609"] = {},
    ["700610"] = {},
    ["700611"] = {}
}

quest_data = {
    ["700601"] = {
        npcs = {
            {
                id = 16645,
                alias = "Npc16645",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_45:30.053,0.270,-358.326]",
                scene_id = 20352,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20352, pos = "[20352_45:30.053,0.270,-358.326]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1321, pos = "[20352_45:30.053,0.270,-358.326]"}}
    },
    ["700602"] = {
        npcs = {
            {
                id = 16645,
                alias = "Npc16645",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_100:36.527,0.039,-374.873,0.000,35.121,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1331,
                alias = "Npc1331",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_8:35.558,0.039,-374.453,0.000,52.100,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1333,
                alias = "Npc1333",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_101:35.694,0.039,-373.767,0.000,51.600,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1335,
                alias = "Npc1335",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_102:33.753,0.039,-373.810,0.000,79.898,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 4
            },
            {
                id = 16641,
                alias = "Npc16641",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_99:35.563,0.039,-375.347,0.000,36.074,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 5
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1321, pos = "[20352_45:30.053,0.270,-358.326]"}}
    },
    ["700603"] = {
        npcs = {
            {
                id = 16645,
                alias = "Npc16645",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_34:14.327,-5.955,-420.103,0.000,110.325,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1331,
                alias = "Npc1331",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_51:37.189,-4.138,-489.614,0.000,150.432,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1333,
                alias = "Npc1333",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_46:21.876,-3.960,-447.151,0.000,214.215,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1335,
                alias = "Npc1335",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_50:37.748,-4.171,-490.437,0.000,313.749,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 4
            },
            {
                id = 16641,
                alias = "Npc16641",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_35:15.599,-5.955,-420.346,0.000,283.462,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_9:22.354,-3.960,-471.768]",
                scene_id = 20352,
                room_id = 0,
                data_index = 6
            },
            {
                id = 16646,
                alias = "Npc16646",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_48:21.176,-3.960,-469.837,0.000,138.393,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 7
            },
            {
                id = 16642,
                alias = "Npc16642",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_33:22.497,-3.960,-470.006,0.000,198.766,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1334,
                alias = "Npc1334",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_49:21.497,-3.960,-448.780]",
                scene_id = 20352,
                room_id = 0,
                data_index = 9
            },
            {
                id = 16647,
                alias = "Npc16647",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_47:20.618,-3.960,-447.008,0.000,157.049,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 10
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1321, pos = "[20352_74:-1.566,-5.955,-420.240,0.000,172.441,0.000]"}}
    },
    ["700604"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_10:0.261,-4.180,-451.592]",
                scene_id = 20352,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1321, pos = "[20352_10:0.261,-4.180,-451.592]"}}
    },
    ["700605"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_11:6.060,-4.180,-460.344]",
                scene_id = 20352,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20352, pos = "[20352_73:1.687,-3.960,-442.802]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1321, pos = "[20352_11:6.060,-4.180,-460.344]"}}
    },
    ["700606"] = {
        npcs = {
            {
                id = 16646,
                alias = "Npc16646",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_65:1371.000,186.000,631.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20352, pos = "[20352_65:1371.000,186.000,631.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1321, pos = "[20352_65:1371.000,186.000,631.000]"}}
    },
    ["700607"] = {
        npcs = {
            {
                id = 16646,
                alias = "Npc16646",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_70:1332.862,271.330,633.271]",
                scene_id = 20352,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["700608"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_67:1338.464,328.125,629.116,0.000,92.910,0.000]",
                scene_id = 20352,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1321, pos = "[20352_67:1338.464,328.125,629.116,0.000,92.910,0.000]"}}
    },
    ["700609"] = {
        npcs = {
            {
                id = 1334,
                alias = "Npc1334",
                script = "Actor/Npc/TempNPC",
                pos = "[20352_73:1.687,-3.960,-442.802]",
                scene_id = 20352,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20352, pos = "[20352_65:1371.000,186.000,631.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1321, pos = "[20352_73:1.687,-3.960,-442.802]"}}
    },
    ["700610"] = {},
    ["700611"] = {}
}
