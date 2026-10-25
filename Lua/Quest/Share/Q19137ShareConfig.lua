main_id = 19137
local tbl = {}
local n = 1913702
local v = 1913703
local n2 = 1913704
local n3 = 1913705
local n4 = 1913706
local n5 = 1913707
local n6 = 1913708
local n7 = 1913709
local n8 = 1913710
tbl[1] = 1913701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101608"}}}}
fail_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101608"}}}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101608"}}}
local qUEST_EXEC_SET_QUEST_GLOBAL_VAR = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "1913101"
tbl3[2] = str
qUEST_EXEC_SET_QUEST_GLOBAL_VAR[1] = tbl3
server.QUEST_EXEC_SET_QUEST_GLOBAL_VAR = qUEST_EXEC_SET_QUEST_GLOBAL_VAR
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1913701"] = {},
    ["1913702"] = {
        npcs = {
            {
                id = 2145,
                alias = "Npc2145",
                script = "Actor/Npc/TempNPC",
                pos = "Q19137Counter",
                scene_id = 1033,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1913703"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913702_C1913702Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1913704"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12306,
                alias = "Npc12306",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703Stalker",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12307,
                alias = "Npc12307",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703FakeA",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12308,
                alias = "Npc12308",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703FakeB",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1913706"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12306,
                alias = "Npc12306",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703Stalker",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12308,
                alias = "Npc12308",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703FakeB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12309,
                alias = "Npc12309",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707FakeC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1913708"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913709_C1913711Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12306,
                alias = "Npc12306",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707Stalker",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12307,
                alias = "Npc12307",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707FakeB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12309,
                alias = "Npc12309",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707FakeC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1913709"] = {},
    ["1913710"] = {}
}

quest_data = {
    ["1913701"] = {
        npcs = {
            {
                id = 2145,
                alias = "Npc2145",
                script = "Actor/Npc/TempNPC",
                pos = "Q19137Counter",
                scene_id = 1033,
                room_id = 1,
                data_index = 1
            },
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913701_C1913701Ningguang",
                scene_id = 1033,
                room_id = 1,
                data_index = 2
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913701_C1913701Ningguang",
                scene_id = 1033,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1913702"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913702_C1913702Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913702_C1913702Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913703"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913702_C1913702Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12306,
                alias = "Npc12306",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703Stalker",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12307,
                alias = "Npc12307",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703FakeA",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12308,
                alias = "Npc12308",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703FakeB",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12309,
                alias = "Npc12309",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707FakeC",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913702_C1913702Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1913704"] = {
        npcs = {
            {
                id = 12309,
                alias = "Npc12309",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707FakeC",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913705"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12306,
                alias = "Npc12306",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703Stalker",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12307,
                alias = "Npc12307",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707FakeB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12308,
                alias = "Npc12308",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703FakeB",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12309,
                alias = "Npc12309",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707FakeC",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913704_C1913703Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1913706"] = {
        npcs = {
            {
                id = 12307,
                alias = "Npc12307",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707FakeB",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913707"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12306,
                alias = "Npc12306",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707Stalker",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12307,
                alias = "Npc12307",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707FakeB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12308,
                alias = "Npc12308",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913709_C1913711FakeB",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12309,
                alias = "Npc12309",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707FakeC",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1913708"] = {
        npcs = {
            {
                id = 12308,
                alias = "Npc12308",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913709_C1913711FakeB",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913709_C1913711Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1913709"] = {
        npcs = {
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913709_C1913711Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12306,
                alias = "Npc12306",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913709_C1913711Stalker",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12307,
                alias = "Npc12307",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913706_C1913707FakeB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12308,
                alias = "Npc12308",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913709_C1913711FakeB",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12309,
                alias = "Npc12309",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913709_C1913711FakeC",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913709_C1913711Ningguang",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1913710"] = {
        npcs = {
            {
                id = 2145,
                alias = "Npc2145",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913711_C1913715_yeka",
                scene_id = 1033,
                room_id = 1,
                data_index = 1
            },
            {
                id = 507,
                alias = "Coop_Ningguang",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913701_C1913701Ningguang",
                scene_id = 1033,
                room_id = 1,
                data_index = 2
            },
            {
                id = 12306,
                alias = "Npc12306",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913711_C1913715Stalker",
                scene_id = 1033,
                room_id = 1,
                data_index = 3
            },
            {
                id = 2059,
                alias = "Npc2059",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913711_C1913715_armboy",
                scene_id = 1033,
                room_id = 1,
                data_index = 4
            },
            {
                id = 2086,
                alias = "Npc2086",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1913711_C1913715_armgirl",
                scene_id = 1033,
                room_id = 1,
                data_index = 5
            },
            {
                id = 10211,
                alias = "Npc10211",
                script = "Actor/Npc/TempNPC",
                pos = "Q1913701_C1913701Ningguang",
                scene_id = 1033,
                room_id = 1,
                data_index = 6
            }
        }
    }
}
