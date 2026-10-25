main_id = 2003
local tbl = {}
local n = 200301
local v = 200302
local n2 = 200303
local n3 = 200304
tbl[1] = 200305
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["200301"] = {}, ["200302"] = {}, ["200303"] = {}, ["200304"] = {}, ["200305"] = {}}

quest_data = {
    ["200301"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q2003tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 1
            },
            {
                id = 3009,
                alias = "Npc3009",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2003neta",
                scene_id = 1060,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q2003paimon",
                scene_id = 1060,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["200302"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q200302tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q200302paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["200303"] = {
        npcs = {
            {
                id = 12021,
                alias = "Npc12021",
                script = "Actor/Npc/TempNPC",
                pos = "Q200302task",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["200304"] = {
        npcs = {
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q2004shenli",
                scene_id = 1061,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["200305"] = {
        npcs = {
            {
                id = 3010,
                alias = "Npc3010",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q200301trigger",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
