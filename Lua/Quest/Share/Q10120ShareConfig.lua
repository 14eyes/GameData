main_id = 10120
local tbl = {}
local n = 1012002
local v = 1012003
local n2 = 1012004
local n3 = 1012005
local n4 = 1012006
local n5 = 1012007
local n6 = 1012008
local n7 = 1012009
tbl[1] = 1012001
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
    ["1012001"] = {},
    ["1012002"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q10120_QIN",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            }
        }
    },
    ["1012003"] = {
        npcs = {
            {
                id = 1421,
                alias = "Npc1421",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q10120_michelle",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10423,
                alias = "Npc10423",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q10120_Noble",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1012004"] = {},
    ["1012006"] = {},
    ["1012009"] = {}
}

quest_data = {
    ["1012001"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q10120_QIN",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            }
        }
    },
    ["1012002"] = {
        npcs = {
            {
                id = 1421,
                alias = "Npc1421",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q10120_michelle",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10423,
                alias = "Npc10423",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q10120_Noble",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1012003"] = {},
    ["1012004"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q10120_anbor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012005"] = {
        npcs = {
            {
                id = 1002,
                alias = "Ambor",
                script = "Actor/Quest/Q301/Ambor301",
                pos = "Q10120_anbor",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012006"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10120_youla",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012007"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10120_youla",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012008"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10120_youla",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1012009"] = {
        npcs = {
            {
                id = 1029,
                alias = "Npc1029",
                script = "Actor/Npc/TempNPC",
                pos = "Q10120_youla",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
