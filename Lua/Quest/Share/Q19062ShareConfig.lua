main_id = 19062
local tbl = {}
local n = 1906204
local v = 1906205
local n2 = 1906206
local n3 = 1906207
local n4 = 1906208
local n5 = 1906209
local n6 = 1906210
local n7 = 1906211
local n8 = 1906212
local n9 = 1906213
local n10 = 1906202
local n11 = 1906203
tbl[1] = 1906201
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
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133004443,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133004444,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
local tbl5 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl6 = {}
local str3 = "133004444,1"
tbl6[1] = "3"
tbl6[2] = str3
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl6
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
tbl5.SERVER = server2
cancel_action = tbl5

rewind_data = {
    ["1906201"] = {},
    ["1906202"] = {},
    ["1906204"] = {},
    ["1906206"] = {},
    ["1906208"] = {},
    ["1906211"] = {},
    ["1906213"] = {}
}

quest_data = {
    ["1906201"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 143701,
                alias = "Npc143701",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateSwan",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    },
    ["1906202"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q19062MengdeInPlayer"}}
    },
    ["1906203"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["1906204"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "Q19062WinePlayer"}}
    },
    ["1906205"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["1906206"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        },
        transmit_points = {{point_id = 3, scene_id = 3, pos = "Q19062FoodPlayer"}}
    },
    ["1906207"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["1906208"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["1906209"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["1906210"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        }
    },
    ["1906211"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        },
        transmit_points = {{point_id = 4, scene_id = 3, pos = "Q19062AfraidOutPlayer"}}
    },
    ["1906212"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            }
        },
        transmit_points = {{point_id = 4, scene_id = 3, pos = "Q19062AfraidOutPlayer"}}
    },
    ["1906213"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeGateLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 143901,
                alias = "Npc143901",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeGateLaurence",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 143501,
                alias = "Npc143501",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand11Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062MengdeInNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062SouvenirNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062MengdeInLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062WineNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062WineLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062FoodNoel",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062FoodLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 11001,
                alias = "Npc11001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19062AfraidOutLiar",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q19062HENoelAdded",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            }
        }
    }
}
