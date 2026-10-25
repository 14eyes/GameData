main_id = 22500
local tbl = {}
local n = 2250002
local v = 2250003
local n2 = 2250004
local n3 = 2250005
local n4 = 2250006
local n5 = 2250007
local n6 = 2250008
local n7 = 2250009
local n8 = 2250010
tbl[1] = 2250001
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
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100545,100546"}}}}

rewind_data = {
    ["2250001"] = {},
    ["2250002"] = {
        npcs = {
            {
                id = 207401,
                alias = "Npc207401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2250006"] = {
        npcs = {
            {
                id = 207401,
                alias = "Npc207401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2250007"] = {
        npcs = {
            {
                id = 207401,
                alias = "Npc207401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 208301,
                alias = "Npc208301",
                script = "Actor/Npc/TempNPC",
                pos = "Q22500yinger",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2250008"] = {
        npcs = {
            {
                id = 207401,
                alias = "Npc207401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 208301,
                alias = "Npc208301",
                script = "Actor/Npc/TempNPC",
                pos = "Q22500yinger",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2250009"] = {
        npcs = {
            {
                id = 207401,
                alias = "Npc207401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 208301,
                alias = "Npc208301",
                script = "Actor/Npc/TempNPC",
                pos = "Q22500yinger",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2250010"] = {}
}

quest_data = {
    ["2250001"] = {
        npcs = {
            {
                id = 207401,
                alias = "Npc207401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2250002"] = {
        npcs = {
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2250003"] = {
        npcs = {
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2250004"] = {
        npcs = {
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2250005"] = {
        npcs = {
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2250006"] = {
        npcs = {
            {
                id = 208301,
                alias = "Npc208301",
                script = "Actor/Npc/TempNPC",
                pos = "Q22500yinger",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2250007"] = {
        gadgets = {
            {
                id = 70710134,
                alias = "2250007aozhixainggao",
                pos = "Q2250007aozhixianggao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        npcs = {
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2250008"] = {
        npcs = {
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2250009"] = {
        npcs = {
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2250010"] = {
        npcs = {
            {
                id = 2030,
                alias = "Npc2030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2031,
                alias = "Npc2031",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22500lulu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
