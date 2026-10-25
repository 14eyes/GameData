main_id = 12020
local tbl = {}
local n = 1202009
local v = 1202002
local n2 = 1202003
local n3 = 1202004
local n4 = 1202005
local n5 = 1202006
local n6 = 1202007
local n7 = 1202008
tbl[1] = 1202001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1202001"] = {},
    ["1202003"] = {},
    ["1202004"] = {},
    ["1202005"] = {
        npcs = {
            {
                id = 12059,
                alias = "Npc12059",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1202006"] = {
        npcs = {
            {
                id = 12059,
                alias = "Npc12059",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12060,
                alias = "Npc12060",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingB",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1202007"] = {
        npcs = {
            {
                id = 12059,
                alias = "Npc12059",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12060,
                alias = "Npc12060",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingB",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12061,
                alias = "Npc12061",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingC",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12095,
                alias = "Npc12095",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingE",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1202009"] = {
        npcs = {
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_wulang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12097,
                alias = "Npc12097",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_zuqingA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1202008"] = {
        npcs = {
            {
                id = 12062,
                alias = "Npc12062",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shangren",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3140,
                alias = "Npc3140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12020_shibingD",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1202001"] = {
        npcs = {
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_wulang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12097,
                alias = "Npc12097",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_zuqingA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12098,
                alias = "Npc12098",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_zuqingB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1202002"] = {},
    ["1202003"] = {
        npcs = {
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_wulang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12097,
                alias = "Npc12097",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_zuqingA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12098,
                alias = "Npc12098",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_zuqingB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1202004"] = {
        npcs = {
            {
                id = 12059,
                alias = "Npc12059",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingA",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3140,
                alias = "Npc3140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12020_shibingD",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3135,
                alias = "Npc3135",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12020_shibingD",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1202005"] = {
        npcs = {
            {
                id = 12060,
                alias = "Npc12060",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingB",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3140,
                alias = "Npc3140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12020_shibingD",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3135,
                alias = "Npc3135",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12020_shibingD",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1202006"] = {
        npcs = {
            {
                id = 12061,
                alias = "Npc12061",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingC",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12095,
                alias = "Npc12095",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingE",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3140,
                alias = "Npc3140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12020_shibingD",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3135,
                alias = "Npc3135",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12020_shibingD",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1202007"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12062,
                alias = "Npc12062",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shangren",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12096,
                alias = "Npc12096",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingF",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3140,
                alias = "Npc3140",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12020_shibingD",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3135,
                alias = "Npc3135",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12020_shibingD",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1202008"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12059,
                alias = "Npc12059",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingA",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12060,
                alias = "Npc12060",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingB",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12061,
                alias = "Npc12061",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingC",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12095,
                alias = "Npc12095",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingE",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12096,
                alias = "Npc12096",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_shibingF",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 3135,
                alias = "Npc3135",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12020_shibingD",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1202009"] = {
        npcs = {
            {
                id = 12098,
                alias = "Npc12098",
                script = "Actor/Npc/TempNPC",
                pos = "Q12020_zuqingB",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
