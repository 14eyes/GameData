main_id = 19171
local tbl = {}
local n = 1917102
local v = 1917103
local n2 = 1917104
local n3 = 1917105
local n4 = 1917106
tbl[1] = 1917101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133302721"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1917101"] = {},
    ["1917102"] = {},
    ["1917103"] = {},
    ["1917104"] = {
        npcs = {
            {
                id = 12923,
                alias = "Npc12923",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917103_N12923",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1917105"] = {
        npcs = {
            {
                id = 12924,
                alias = "Npc12924",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917104_N12924",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1917106"] = {}
}

quest_data = {
    ["1917101"] = {
        npcs = {
            {
                id = 513,
                alias = "Coop_Faruzan",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917102_N513",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917102_N513",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917102_N513",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1917102"] = {
        npcs = {
            {
                id = 513,
                alias = "Coop_Faruzan",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917102_N513",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917102_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917102_N513",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1917103"] = {
        npcs = {
            {
                id = 513,
                alias = "Coop_Faruzan",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917103_N513",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917103_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12923,
                alias = "Npc12923",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917103_N12923",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917103_N513",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1917104"] = {
        npcs = {
            {
                id = 513,
                alias = "Coop_Faruzan",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917104_N513",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917104_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12924,
                alias = "Npc12924",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917104_N12924",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917104_N513",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1917105"] = {
        npcs = {
            {
                id = 513,
                alias = "Coop_Faruzan",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917104_N513",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917104_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4003,
                alias = "Npc4003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1917105_N4003",
                scene_id = 1074,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917104_N513",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1917106"] = {
        npcs = {
            {
                id = 513,
                alias = "Coop_Faruzan",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917106_N513",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917106_N1051",
                scene_id = 1074,
                room_id = 1,
                data_index = 2
            },
            {
                id = 4003,
                alias = "Npc4003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1917105_N4003",
                scene_id = 1074,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1067,
                alias = "Npc1067",
                script = "Actor/Npc/TempNPC",
                pos = "Q1917106_N513",
                scene_id = 1074,
                room_id = 1,
                data_index = 4
            }
        }
    }
}
