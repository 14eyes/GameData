main_id = 74216
local tbl = {}
local n = 7421611
local v = 7421601
local n2 = 7421613
local n3 = 7421602
local n4 = 7421603
local n5 = 7421604
local n6 = 7421605
local n7 = 7421606
local n8 = 7421607
local n9 = 7421608
local n10 = 7421609
local n11 = 7421610
tbl[1] = 7421612
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
    ["7421601"] = {},
    ["7421602"] = {},
    ["7421603"] = {},
    ["7421604"] = {},
    ["7421605"] = {},
    ["7421606"] = {},
    ["7421607"] = {},
    ["7421608"] = {},
    ["7421609"] = {},
    ["7421610"] = {},
    ["7421611"] = {},
    ["7421612"] = {}
}

quest_data = {
    ["7421601"] = {
        npcs = {
            {
                id = 21484,
                alias = "Npc21484",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8001:1232.530,280.426,4466.810,0.000,317.434,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7421602"] = {
        npcs = {
            {
                id = 21408,
                alias = "Npc21408",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8003:420.666,281.802,3259.978,0.000,50.231,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21484,
                alias = "Npc21484",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8002:428.351,281.752,3254.667,0.000,317.110,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_7744:426.613,281.815,3256.301,0.000,135.212,0.000]"}}
    },
    ["7421603"] = {
        npcs = {
            {
                id = 5338,
                alias = "Npc5338",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_8004:427.194,281.804,3260.348,0.000,200.398,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21408,
                alias = "Npc21408",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8003:420.666,281.802,3259.978,0.000,50.231,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21484,
                alias = "Npc21484",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8002:428.351,281.752,3254.667,0.000,317.110,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_7565:1234.639,280.704,4451.496,357.726,220.848,0.573]"}}
    },
    ["7421604"] = {
        npcs = {
            {
                id = 5338,
                alias = "Npc5338",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_8005:1233.526,280.631,4449.629,0.000,29.847,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7421605"] = {
        npcs = {
            {
                id = 5337,
                alias = "Npc5337",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7564:1193.891,292.576,4378.747,0.000,50.234,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5347,
                alias = "Npc5347",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500105:1212.301,287.423,4395.797,0.000,21.218,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5351,
                alias = "Npc5351",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500106:1211.443,292.603,4375.346,0.000,326.493,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7421606"] = {
        npcs = {
            {
                id = 5337,
                alias = "Npc5337",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_8008:1086.261,280.461,4357.555,0.000,247.034,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5338,
                alias = "Npc5338",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_8007:1076.946,280.609,4353.220,0.000,90.821,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21408,
                alias = "Npc21408",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8006:1079.434,280.694,4354.530,0.000,252.406,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7421607"] = {
        npcs = {
            {
                id = 5337,
                alias = "Npc5337",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_8008:1086.261,280.461,4357.555,0.000,247.034,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5338,
                alias = "Npc5338",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_8007:1076.946,280.609,4353.220,0.000,90.821,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21408,
                alias = "Npc21408",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8006:1079.434,280.694,4354.530,0.000,252.406,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7421608"] = {
        npcs = {
            {
                id = 5337,
                alias = "Npc5337",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_8196:1081.468,281.386,4352.204,0.000,293.737,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5338,
                alias = "Npc5338",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_8195:1079.867,281.304,4351.004,0.000,332.608,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7421609"] = {
        npcs = {
            {
                id = 5337,
                alias = "Npc5337",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_8009:1077.764,280.561,4354.571,354.039,146.948,359.696]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5338,
                alias = "Npc5338",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_8007:1076.946,280.609,4353.220,0.000,90.821,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21408,
                alias = "Npc21408",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8006:1079.434,280.694,4354.530,0.000,252.406,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7421610"] = {
        npcs = {
            {
                id = 5337,
                alias = "Npc5337",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500107:1219.055,287.264,4397.939,0.000,34.360,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5338,
                alias = "Npc5338",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500108:1219.903,287.264,4399.287,0.000,211.914,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7421611"] = {},
    ["7421612"] = {},
    ["7421613"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_7744:426.613,281.815,3256.301,0.000,135.212,0.000]"}}
    }
}
