main_id = 19044
local tbl = {}
local n = 1904420
local v = 1904402
local n2 = 1904403
local n3 = 1904404
local n4 = 1904415
local n5 = 1904416
local n6 = 1904407
local n7 = 1904417
local n8 = 1904409
local n9 = 1904412
local n10 = 1904413
local n11 = 1904410
local n12 = 1904419
local n13 = 1904411
tbl[1] = 1904401
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
finish_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100739"}}}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100739"}}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "220035005,2"
tbl3[1] = "20035"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1904401"] = {},
    ["1904402"] = {
        npcs = {
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044BennettCook",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904403"] = {},
    ["1904404"] = {},
    ["1904407"] = {
        npcs = {
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Bennett2",
                scene_id = 20035,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904409"] = {
        npcs = {
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Route105",
                scene_id = 20035,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10374,
                alias = "Npc10374",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044NpcBorn",
                scene_id = 20035,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10371,
                alias = "Npc10371",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Readable1",
                scene_id = 20035,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10372,
                alias = "Npc10372",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Readable2",
                scene_id = 20035,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1904411"] = {
        npcs = {
            {
                id = 10374,
                alias = "Npc10374",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044NpcBorn",
                scene_id = 20035,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10371,
                alias = "Npc10371",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Readable1",
                scene_id = 20035,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10372,
                alias = "Npc10372",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Readable2",
                scene_id = 20035,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10373,
                alias = "Npc10373",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Readable3",
                scene_id = 20035,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1904419"] = {
        npcs = {
            {
                id = 10374,
                alias = "Npc10374",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044NpcBorn",
                scene_id = 20035,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10371,
                alias = "Npc10371",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Readable1",
                scene_id = 20035,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10372,
                alias = "Npc10372",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Readable2",
                scene_id = 20035,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10373,
                alias = "Npc10373",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Readable3",
                scene_id = 20035,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

quest_data = {
    ["1904401"] = {
        npcs = {
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q19041Bennett",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904402"] = {},
    ["1904403"] = {},
    ["1904404"] = {
        npcs = {
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Bennett1",
                scene_id = 20035,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904407"] = {
        npcs = {
            {
                id = 10374,
                alias = "Npc10374",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044NpcBorn",
                scene_id = 20035,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10371,
                alias = "Npc10371",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Readable1",
                scene_id = 20035,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10372,
                alias = "Npc10372",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Readable2",
                scene_id = 20035,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1904409"] = {},
    ["1904410"] = {
        npcs = {
            {
                id = 10373,
                alias = "Npc10373",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Readable3",
                scene_id = 20035,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904411"] = {
        npcs = {
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Bennett3",
                scene_id = 20035,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904412"] = {},
    ["1904413"] = {},
    ["1904415"] = {
        npcs = {
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Bennett2",
                scene_id = 20035,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904416"] = {
        npcs = {
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Bennett2",
                scene_id = 20035,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904417"] = {
        npcs = {
            {
                id = 1024,
                alias = "Npc1024",
                script = "Actor/Npc/TempNPC",
                pos = "Q19044Bennett2",
                scene_id = 20035,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1904419"] = {},
    ["1904420"] = {}
}
