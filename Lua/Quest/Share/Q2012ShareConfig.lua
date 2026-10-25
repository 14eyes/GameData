main_id = 2012
local tbl = {}
local n = 201202
local v = 201203
local n2 = 201204
local n3 = 201205
local n4 = 201206
local n5 = 201210
local n6 = 201211
local n7 = 201216
local n8 = 201217
local n9 = 201212
local n10 = 201207
local n11 = 201213
local n12 = 201208
local n13 = 201214
local n14 = 201209
local n15 = 201215
tbl[1] = 201201
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["201201"] = {},
    ["201202"] = {},
    ["201203"] = {},
    ["201204"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q2012TuomaWait01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201205"] = {
        npcs = {
            {
                id = 12043,
                alias = "Npc12043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Heishang01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201206"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q2012TuomaWait01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201207"] = {},
    ["201208"] = {},
    ["201209"] = {},
    ["201210"] = {
        npcs = {
            {
                id = 12043,
                alias = "Npc12043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Heishang01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201211"] = {
        npcs = {
            {
                id = 12043,
                alias = "Npc12043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Heishang01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201216"] = {
        npcs = {
            {
                id = 12043,
                alias = "Npc12043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Heishang01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201217"] = {
        npcs = {
            {
                id = 12043,
                alias = "Npc12043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Heishang01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201212"] = {},
    ["201213"] = {},
    ["201214"] = {},
    ["201215"] = {
        npcs = {
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012JiulixuLast",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3083,
                alias = "Npc3083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012LiyueShangren01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["201201"] = {
        npcs = {
            {
                id = 3075,
                alias = "Npc3075",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Check01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q2012Tuoma01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201202"] = {
        npcs = {
            {
                id = 3089,
                alias = "Npc3089",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Check02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q2012Tuoma02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201203"] = {
        npcs = {
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Wgshanghui01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q2012TuomaWait01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201204"] = {
        npcs = {
            {
                id = 12043,
                alias = "Npc12043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Heishang01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Wgshanghui01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201205"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q2012TuomaWait01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201206"] = {
        npcs = {
            {
                id = 12043,
                alias = "Npc12043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Heishang01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201207"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2012AvatarFail"}},
        npcs = {
            {
                alias = "Npc12051",
                script = "Actor/Npc/FollowNPC",
                id = 12051,
                pos = "Q2012Zuqing01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12043,
                alias = "Npc12043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Heishang02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3078,
                alias = "Npc3078",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Liangzi01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["201208"] = {
        npcs = {
            {
                id = 12043,
                alias = "Npc12043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Heishang02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 71700283,
                alias = "Gadget71700283",
                pos = "Q2012ZhangbenPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201209"] = {
        npcs = {
            {
                id = 3084,
                alias = "Npc3084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012JiulixuLast",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12044,
                alias = "Npc12044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012QCLLast",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3083,
                alias = "Npc3083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012LiyueShangren01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12045,
                alias = "Npc12045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Player03",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["201210"] = {},
    ["201211"] = {},
    ["201212"] = {
        npcs = {
            {
                id = 12043,
                alias = "Npc12043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Heishang03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12044,
                alias = "Npc12044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Zuqing01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201213"] = {
        npcs = {
            {
                id = 12043,
                alias = "Npc12043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Heishang02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12044,
                alias = "Npc12044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Zuqing01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201214"] = {
        npcs = {
            {
                id = 12043,
                alias = "Npc12043",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2012Heishang02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201215"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q2012TuomaLast",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
