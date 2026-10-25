main_id = 3000
local tbl = {}
local n = 300011
local v = 300001
local n2 = 300002
local n3 = 300003
local n4 = 300004
local n5 = 300005
local n6 = 300006
local n7 = 300007
local n8 = 300008
local n9 = 300009
local n10 = 300010
tbl[1] = 300012
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["300001"] = {},
    ["300002"] = {},
    ["300003"] = {},
    ["300005"] = {avatar = {offline_dungeon_id = 1155, scene_id = 20150, pos = "Q300005_guide_avatar"}},
    ["300007"] = {avatar = {offline_dungeon_id = 1155, scene_id = 20150, pos = "Q300007_guide_avatar"}},
    ["300009"] = {},
    ["300010"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["300011"] = {},
    ["300012"] = {}
}

quest_data = {
    ["300001"] = {
        npcs = {
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q300001_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["300002"] = {
        npcs = {
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q300003_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["300003"] = {
        npcs = {
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q300003_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["300004"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["300005"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["300006"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 300006, scene_id = 20150, pos = "Q300007_guide_avatar"}}
    },
    ["300007"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["300008"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["300009"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 300009, scene_id = 3, pos = "Q300010_N10000005"}}
    },
    ["300010"] = {
        npcs = {
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1051",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4302,
                alias = "Npc4302",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q300010_N4302",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["300011"] = {
        npcs = {
            {
                id = 12554,
                alias = "Npc12554",
                script = "Actor/Npc/TempNPC",
                pos = "Q300001_N12554",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q300010_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["300012"] = {}
}
