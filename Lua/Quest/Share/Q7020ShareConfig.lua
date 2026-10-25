main_id = 7020
local tbl = {}
local n = 702001
local v = 702014
local n2 = 702002
local n3 = 702003
local n4 = 702004
local n5 = 702019
local n6 = 702015
local n7 = 702005
local n8 = 702018
local n9 = 702006
local n10 = 702017
local n11 = 702016
local n12 = 702007
local n13 = 702008
local n14 = 702009
local n15 = 702010
local n16 = 702011
local n17 = 702012
tbl[1] = 702013
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
tbl[16] = n14
tbl[17] = n15
tbl[18] = n16
tbl[19] = n17
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["702001"] = {},
    ["702002"] = {},
    ["702003"] = {},
    ["702004"] = {},
    ["702005"] = {},
    ["702006"] = {},
    ["702007"] = {},
    ["702008"] = {},
    ["702009"] = {},
    ["702010"] = {},
    ["702011"] = {},
    ["702012"] = {},
    ["702013"] = {},
    ["702014"] = {},
    ["702015"] = {},
    ["702016"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20366_3:382.846,203.512,579.004,0.000,327.126,0.000]",
                scene_id = 20366,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["702017"] = {},
    ["702018"] = {},
    ["702019"] = {}
}

quest_data = {
    ["702001"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_10:11.890,-0.077,-2.835]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17561:9521.144,385.717,6666.202,0.000,336.682,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17561:9521.144,385.717,6666.202,0.000,336.682,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1162, pos = "[1162_12:11.541,-0.077,-0.254,0.000,180.000,0.000]"}}
    },
    ["702002"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17556:8540.146,211.648,7829.897,0.000,217.118,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["702003"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17557:8526.140,215.460,7796.303,0.000,85.612,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20366, pos = "[20366_5:410.479,-204.238,652.823,0.000,270.000,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1334, pos = "[20366_39:410.500,-204.238,654.135]"}}
    },
    ["702004"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[20366_5:410.479,-204.238,652.823,0.000,270.000,0.000]",
                scene_id = 20366,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20366, pos = "[20366_37:375.268,203.491,595.406,0.000,147.210,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1334, pos = "[20366_39:410.500,-204.238,654.135]"}}
    },
    ["702005"] = {
        transmit_points = {{point_id = 1, scene_id = 20366, pos = "[20366_4:789.264,-488.310,355.901,0.000,270.000,0.000]"}}
    },
    ["702006"] = {
        transmit_points = {{point_id = 1, scene_id = 20366, pos = "[20366_1:376.260,203.480,592.300,0.000,147.320,0.000]"}}
    },
    ["702007"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20366_3:382.846,203.512,579.004,0.000,327.126,0.000]",
                scene_id = 20366,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20366, pos = "[20366_6:405.809,-204.214,656.130]"}}
    },
    ["702008"] = {
        npcs = {
            {
                id = 17566,
                alias = "Npc17566",
                script = "Actor/Npc/TempNPC",
                pos = "[20366_5:410.479,-204.238,652.823,0.000,270.000,0.000]",
                scene_id = 20366,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20366, pos = "[20366_1:376.260,203.480,592.300,0.000,147.320,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1334, pos = "[20366_39:410.500,-204.238,654.135]"}}
    },
    ["702009"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20366_3:382.846,203.512,579.004,0.000,327.126,0.000]",
                scene_id = 20366,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1334, pos = "[20366_37:375.268,203.491,595.406,0.000,147.210,0.000]"}}
    },
    ["702010"] = {},
    ["702011"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20366_3:382.846,203.512,579.004,0.000,327.126,0.000]",
                scene_id = 20366,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_17558:9762.745,450.451,6515.029,0.000,311.241,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1334, pos = "[20366_37:375.268,203.491,595.406,0.000,147.210,0.000]"}}
    },
    ["702012"] = {
        npcs = {
            {
                id = 1022,
                alias = "Npc1022",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17559:9760.782,450.451,6516.756,0.000,133.545,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["702013"] = {
        npcs = {
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17561:9521.144,385.717,6666.202,0.000,336.682,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17561:9521.144,385.717,6666.202,0.000,336.682,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["702014"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[1158_43:-13.537,5.997,40.921]",
                scene_id = 1158,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1080,
                alias = "Npc1080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17561:9521.144,385.717,6666.202,0.000,336.682,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17561:9521.144,385.717,6666.202,0.000,336.682,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 1158, pos = "[1158_42:-14.612,5.997,40.907]"}}
    },
    ["702015"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1334, pos = "[20366_37:375.268,203.491,595.406,0.000,147.210,0.000]"}}
    },
    ["702016"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1334, pos = "[20366_37:375.268,203.491,595.406,0.000,147.210,0.000]"}}
    },
    ["702017"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[20366_3:382.846,203.512,579.004,0.000,327.126,0.000]",
                scene_id = 20366,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["702018"] = {
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1334, pos = "[20366_38:789.264,-488.310,355.901,0.000,270.000,0.000]"}}
    },
    ["702019"] = {
        npcs = {
            {
                id = 16999,
                alias = "Npc16999",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17557:8526.140,215.460,7796.303,0.000,85.612,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_18951:8544.562,211.414,7799.862,0.000,257.299,0.000]"}},
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1334, pos = "[20366_37:375.268,203.491,595.406,0.000,147.210,0.000]"}}
    }
}
