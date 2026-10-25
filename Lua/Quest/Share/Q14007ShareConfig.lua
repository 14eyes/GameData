main_id = 14007
local tbl = {}
local n = 1400702
local v = 1400703
local n2 = 1400704
local n3 = 1400719
local n4 = 1400705
local n5 = 1400714
local n6 = 1400715
local n7 = 1400706
local n8 = 1400707
local n9 = 1400708
local n10 = 1400709
local n11 = 1400710
local n12 = 1400717
local n13 = 1400718
local n14 = 1400711
local n15 = 1400712
local n16 = 1400713
local n17 = 1400716
tbl[1] = 1400701
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

local tbl2 = {
    ["1400701"] = {},
    ["1400702"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_44:-51.868,0.352,-15.361,0.000,76.471,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 5087,
                alias = "Npc5087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1083_45:-48.844,0.352,-14.945,0.000,272.731,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1400703"] = {}
}

local tbl3 = {
    npcs = {
        {
            id = 5038,
            alias = "Npc5038",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100246:3461.729,449.586,4432.211,0.000,55.384,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 5039,
            alias = "Npc5039",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100300:3463.071,449.586,4433.195,0.000,240.344,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        }
    }
}

local quest_var = {}
local n18 = 0
local n19 = 0
local n20 = 0
local n21 = 0
quest_var[1] = 1
quest_var[2] = n18
quest_var[3] = n19
quest_var[4] = n20
quest_var[5] = n21
tbl3.quest_var = quest_var
tbl2["1400704"] = tbl3

tbl2["1400705"] = {
    npcs = {
        {
            id = 13503,
            alias = "Npc13503",
            script = "Actor/Npc/TempNPC",
            pos = "[3_340100248:3541.424,445.949,4435.690,0.000,177.053,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 5038,
            alias = "Npc5038",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100246:3461.729,449.586,4432.211,0.000,55.384,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 5039,
            alias = "Npc5039",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100300:3463.071,449.586,4433.195,0.000,240.344,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        },
        {
            id = 5037,
            alias = "Npc5037",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100302:3541.390,446.167,4433.824]",
            scene_id = 3,
            room_id = 0,
            data_index = 4
        }
    }
}

tbl2["1400706"] = {
    npcs = {
        {
            id = 13503,
            alias = "Npc13503",
            script = "Actor/Npc/TempNPC",
            pos = "[3_340100419:3541.448,445.895,4435.966,0.000,262.739,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 5038,
            alias = "Npc5038",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100246:3461.729,449.586,4432.211,0.000,55.384,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 5039,
            alias = "Npc5039",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100300:3463.071,449.586,4433.195,0.000,240.344,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        },
        {
            id = 1077,
            alias = "Npc1077",
            script = "Actor/Npc/TempNPC",
            pos = "[3_340100418:3540.168,445.895,4435.854,0.000,89.741,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 4
        }
    }
}

tbl2["1400707"] = {
    npcs = {
        {
            id = 1076,
            alias = "Npc1076",
            script = "Actor/Npc/TempNPC",
            pos = "[1083_64:-53.868,0.352,-14.510,0.000,267.631,0.000]",
            scene_id = 1083,
            room_id = 1,
            data_index = 1
        }
    }
}

tbl2["1400708"] = {
    npcs = {
        {
            id = 1076,
            alias = "Npc1076",
            script = "Actor/Npc/TempNPC",
            pos = "[1083_71:-53.956,0.331,-16.799,0.000,263.837,0.000]",
            scene_id = 1083,
            room_id = 1,
            data_index = 1
        }
    }
}

tbl2["1400709"] = {
    npcs = {
        {
            id = 1076,
            alias = "Npc1076",
            script = "Actor/Npc/TempNPC",
            pos = "[1083_71:-53.956,0.331,-16.799,0.000,263.837,0.000]",
            scene_id = 1083,
            room_id = 1,
            data_index = 1
        }
    }
}

tbl2["1400710"] = {
    npcs = {
        {
            id = 1076,
            alias = "Npc1076",
            script = "Actor/Npc/TempNPC",
            pos = "[1083_71:-53.956,0.331,-16.799,0.000,263.837,0.000]",
            scene_id = 1083,
            room_id = 1,
            data_index = 1
        }
    }
}

tbl2["1400712"] = {
    npcs = {
        {
            id = 1076,
            alias = "Npc1076",
            script = "Actor/Npc/TempNPC",
            pos = "[1083_71:-53.956,0.331,-16.799,0.000,263.837,0.000]",
            scene_id = 1083,
            room_id = 1,
            data_index = 1
        }
    }
}

tbl2["1400713"] = {
    npcs = {
        {
            id = 1076,
            alias = "Npc1076",
            script = "Actor/Npc/TempNPC",
            pos = "[1083_71:-53.956,0.331,-16.799,0.000,263.837,0.000]",
            scene_id = 1083,
            room_id = 1,
            data_index = 1
        }
    }
}

tbl2["1400714"] = {
    npcs = {
        {
            id = 13503,
            alias = "Npc13503",
            script = "Actor/Npc/TempNPC",
            pos = "[3_340100420:3542.123,446.196,4434.724,0.000,220.840,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 5038,
            alias = "Npc5038",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100246:3461.729,449.586,4432.211,0.000,55.384,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 5039,
            alias = "Npc5039",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100300:3463.071,449.586,4433.195,0.000,240.344,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        },
        {
            id = 5037,
            alias = "Npc5037",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100417:3541.438,446.167,4433.743,0.000,35.916,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 4
        }
    }
}

tbl2["1400715"] = {
    npcs = {
        {
            id = 13503,
            alias = "Npc13503",
            script = "Actor/Npc/TempNPC",
            pos = "[3_340100248:3541.424,445.949,4435.690,0.000,177.053,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 5038,
            alias = "Npc5038",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100246:3461.729,449.586,4432.211,0.000,55.384,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 5039,
            alias = "Npc5039",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100300:3463.071,449.586,4433.195,0.000,240.344,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        },
        {
            id = 5037,
            alias = "Npc5037",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100302:3541.390,446.167,4433.824]",
            scene_id = 3,
            room_id = 0,
            data_index = 4
        }
    }
}

tbl2["1400717"] = {
    npcs = {
        {
            id = 1076,
            alias = "Npc1076",
            script = "Actor/Npc/TempNPC",
            pos = "[1083_71:-53.956,0.331,-16.799,0.000,263.837,0.000]",
            scene_id = 1083,
            room_id = 1,
            data_index = 1
        }
    }
}

tbl2["1400718"] = {
    npcs = {
        {
            id = 1076,
            alias = "Npc1076",
            script = "Actor/Npc/TempNPC",
            pos = "[1083_71:-53.956,0.331,-16.799,0.000,263.837,0.000]",
            scene_id = 1083,
            room_id = 1,
            data_index = 1
        }
    }
}

tbl2["1400719"] = {
    npcs = {
        {
            id = 13503,
            alias = "Npc13503",
            script = "Actor/Npc/TempNPC",
            pos = "[3_340100245:3486.265,449.597,4420.541]",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 5038,
            alias = "Npc5038",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100246:3461.729,449.586,4432.211,0.000,55.384,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 5039,
            alias = "Npc5039",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100300:3463.071,449.586,4433.195,0.000,240.344,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        },
        {
            id = 5037,
            alias = "Npc5037",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340100302:3541.390,446.167,4433.824]",
            scene_id = 3,
            room_id = 0,
            data_index = 4
        }
    }
}

rewind_data = tbl2

quest_data = {
    ["1400701"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_44:-51.868,0.352,-15.361,0.000,76.471,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 5087,
                alias = "Npc5087",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1083_45:-48.844,0.352,-14.945,0.000,272.731,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 2
            },
            {
                id = 13503,
                alias = "Npc13503",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100245:3486.265,449.597,4420.541]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5038,
                alias = "Npc5038",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100246:3461.729,449.586,4432.211,0.000,55.384,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5039,
                alias = "Npc5039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100300:3463.071,449.586,4433.195,0.000,240.344,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1077,
                alias = "Npc1077",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100247:3540.688,445.895,4436.405,0.000,161.221,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5037,
                alias = "Npc5037",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100302:3541.390,446.167,4433.824]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 13625,
                alias = "Npc13625",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_63:-51.094,1.125,-14.710]",
                scene_id = 1083,
                room_id = 1,
                data_index = 9
            },
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 5075,
                alias = "Npc5075",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["1400702"] = {
        npcs = {
            {
                id = 13503,
                alias = "Npc13503",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100245:3486.265,449.597,4420.541]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5038,
                alias = "Npc5038",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100246:3461.729,449.586,4432.211,0.000,55.384,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5039,
                alias = "Npc5039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100300:3463.071,449.586,4433.195,0.000,240.344,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1077,
                alias = "Npc1077",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100247:3540.688,445.895,4436.405,0.000,161.221,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5037,
                alias = "Npc5037",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100302:3541.390,446.167,4433.824]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 13625,
                alias = "Npc13625",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_63:-51.094,1.125,-14.710]",
                scene_id = 1083,
                room_id = 1,
                data_index = 7
            },
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 5075,
                alias = "Npc5075",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        }
    },
    ["1400703"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100301:3485.587,449.597,4422.111,0.000,158.888,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13503,
                alias = "Npc13503",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100245:3486.265,449.597,4420.541]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5038,
                alias = "Npc5038",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100246:3461.729,449.586,4432.211,0.000,55.384,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5039,
                alias = "Npc5039",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100300:3463.071,449.586,4433.195,0.000,240.344,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1077,
                alias = "Npc1077",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100247:3540.688,445.895,4436.405,0.000,161.221,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5037,
                alias = "Npc5037",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100302:3541.390,446.167,4433.824]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 13625,
                alias = "Npc13625",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_63:-51.094,1.125,-14.710]",
                scene_id = 1083,
                room_id = 1,
                data_index = 8
            },
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 5075,
                alias = "Npc5075",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            }
        }
    },
    ["1400704"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100301:3485.587,449.597,4422.111,0.000,158.888,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13503,
                alias = "Npc13503",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100245:3486.265,449.597,4420.541]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1077,
                alias = "Npc1077",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100247:3540.688,445.895,4436.405,0.000,161.221,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5037,
                alias = "Npc5037",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100302:3541.390,446.167,4433.824]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5075,
                alias = "Npc5075",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1400705"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100301:3485.587,449.597,4422.111,0.000,158.888,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1077,
                alias = "Npc1077",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100247:3540.688,445.895,4436.405,0.000,161.221,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5075,
                alias = "Npc5075",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1400706"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_64:-53.868,0.352,-14.510,0.000,267.631,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5037,
                alias = "Npc5037",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100302:3541.390,446.167,4433.824]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5075,
                alias = "Npc5075",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1400707"] = {},
    ["1400708"] = {},
    ["1400709"] = {},
    ["1400710"] = {},
    ["1400711"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[1083_71:-53.956,0.331,-16.799,0.000,263.837,0.000]",
                scene_id = 1083,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1400712"] = {},
    ["1400713"] = {},
    ["1400714"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100301:3485.587,449.597,4422.111,0.000,158.888,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1077,
                alias = "Npc1077",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100247:3540.688,445.895,4436.405,0.000,161.221,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5075,
                alias = "Npc5075",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1400715"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100301:3485.587,449.597,4422.111,0.000,158.888,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1077,
                alias = "Npc1077",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100247:3540.688,445.895,4436.405,0.000,161.221,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5075,
                alias = "Npc5075",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1400716"] = {},
    ["1400717"] = {},
    ["1400718"] = {},
    ["1400719"] = {
        npcs = {
            {
                id = 1076,
                alias = "Npc1076",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100301:3485.587,449.597,4422.111,0.000,158.888,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1077,
                alias = "Npc1077",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100247:3540.688,445.895,4436.405,0.000,161.221,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5029,
                alias = "Npc5029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5040,
                alias = "Npc5040",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5075,
                alias = "Npc5075",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340100275:3558.190,446.167,4432.545,0.000,278.322,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    }
}
