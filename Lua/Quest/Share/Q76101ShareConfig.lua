main_id = 76101
local tbl = {}
local n = 7610102
local v = 7610103
local n2 = 7610104
local n3 = 7610105
local n4 = 7610106
local n5 = 7610108
local n6 = 7610114
local n7 = 7610116
local n8 = 7610117
local n9 = 7610115
local n10 = 7610124
local n11 = 7610118
local n12 = 7610119
local n13 = 7610109
local n14 = 7610110
local n15 = 7610111
local n16 = 7610113
local n17 = 7610112
local n18 = 7610107
local n19 = 7610120
local n20 = 7610121
local n21 = 7610122
tbl[1] = 7610101
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
tbl[20] = n18
tbl[21] = n19
tbl[22] = n20
tbl[23] = n21
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7610101"] = {},
    ["7610102"] = {},
    ["7610103"] = {},
    ["7610104"] = {
        npcs = {
            {
                id = 22320,
                alias = "Npc22320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15379:5265.033,337.489,9465.838,0.000,274.342,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7180,
                alias = "Npc7180",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13908:5270.514,342.768,9430.721,0.000,307.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7610105"] = {},
    ["7610106"] = {},
    ["7610108"] = {},
    ["7610109"] = {},
    ["7610110"] = {},
    ["7610111"] = {},
    ["7610113"] = {},
    ["7610114"] = {},
    ["7610115"] = {},
    ["7610116"] = {},
    ["7610117"] = {},
    ["7610118"] = {},
    ["7610119"] = {},
    ["7610120"] = {},
    ["7610121"] = {},
    ["7610124"] = {}
}

quest_data = {
    ["7610101"] = {},
    ["7610102"] = {
        npcs = {
            {
                id = 22320,
                alias = "Npc22320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14731:5260.754,337.460,9467.839,0.000,262.878,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7610103"] = {
        npcs = {
            {
                id = 22320,
                alias = "Npc22320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15379:5265.033,337.489,9465.838,0.000,274.342,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7180,
                alias = "Npc7180",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13908:5270.514,342.768,9430.721,0.000,307.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7648,
                alias = "Npc7648",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_13908:5270.514,342.768,9430.721,0.000,307.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7610104"] = {
        npcs = {
            {
                id = 7648,
                alias = "Npc7648",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_13908:5270.514,342.768,9430.721,0.000,307.662,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7610105"] = {},
    ["7610106"] = {},
    ["7610107"] = {},
    ["7610108"] = {},
    ["7610109"] = {},
    ["7610110"] = {},
    ["7610111"] = {},
    ["7610112"] = {
        transmit_points = {{point_id = 5, scene_id = 3, pos = "[3_14866:5607.492,376.149,9960.280,0.000,97.658,0.000]"}}
    },
    ["7610113"] = {
        npcs = {
            {
                id = 7181,
                alias = "Npc7181",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15330:5265.075,400.596,9394.845]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1324,
                alias = "Npc1324",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15330:5265.075,400.596,9394.845]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 4, scene_id = 3, pos = "[3_13925:5234.273,341.942,9460.558,0.000,134.097,0.000]"}}
    },
    ["7610114"] = {},
    ["7610115"] = {},
    ["7610116"] = {},
    ["7610117"] = {},
    ["7610118"] = {},
    ["7610119"] = {},
    ["7610120"] = {
        npcs = {
            {
                id = 22320,
                alias = "Npc22320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15146:5270.436,342.514,9440.346,0.000,220.616,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7183,
                alias = "Npc7183",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13914:5268.743,342.031,9434.984,-0.610,0.000,1.580]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7184,
                alias = "Npc7184",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13913:5268.257,342.602,9435.916,0.070,167.603,2.647]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 7180,
                alias = "Npc7180",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14868:5266.671,342.609,9432.528]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 7181,
                alias = "Npc7181",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14867:5269.259,342.514,9433.830,0.000,247.709,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 7659,
                alias = "Npc7659",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_13914:5268.743,342.031,9434.984,-0.610,0.000,1.580]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 7663,
                alias = "Npc7663",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_13913:5268.257,342.602,9435.916,0.070,167.603,2.647]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 7648,
                alias = "Npc7648",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_14868:5266.671,342.609,9432.528]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1324,
                alias = "Npc1324",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14867:5269.259,342.514,9433.830,0.000,247.709,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["7610121"] = {
        npcs = {
            {
                id = 22320,
                alias = "Npc22320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15146:5270.436,342.514,9440.346,0.000,220.616,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7183,
                alias = "Npc7183",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13914:5268.743,342.031,9434.984,-0.610,0.000,1.580]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7184,
                alias = "Npc7184",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13913:5268.257,342.602,9435.916,0.070,167.603,2.647]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 7180,
                alias = "Npc7180",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14868:5266.671,342.609,9432.528]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 7181,
                alias = "Npc7181",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14867:5269.259,342.514,9433.830,0.000,247.709,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 7659,
                alias = "Npc7659",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_13914:5268.743,342.031,9434.984,-0.610,0.000,1.580]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 7663,
                alias = "Npc7663",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_13913:5268.257,342.602,9435.916,0.070,167.603,2.647]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 7648,
                alias = "Npc7648",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_14868:5266.671,342.609,9432.528]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 1324,
                alias = "Npc1324",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14867:5269.259,342.514,9433.830,0.000,247.709,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["7610122"] = {},
    ["7610124"] = {}
}
