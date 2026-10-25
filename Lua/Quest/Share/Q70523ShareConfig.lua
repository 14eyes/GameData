main_id = 70523
local tbl = {}
local n = 7052305
local v = 7052304
local n2 = 7052302
local n3 = 7052306
local n4 = 7052303
tbl[1] = 7052301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120051"}, {"120084"}},
        QUEST_EXEC_STOP_BARGAIN = {{"9"}}
    }
}

rewind_data = {
    ["7052301"] = {},
    ["7052302"] = {
        npcs = {
            {
                id = 30239,
                alias = "Npc30239",
                script = "Actor/Npc/TempNPC",
                pos = "Q7052305_N30239",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7052303"] = {
        npcs = {
            {
                id = 30239,
                alias = "Npc30239",
                script = "Actor/Npc/TempNPC",
                pos = "Q7052305_N30239",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7052305"] = {},
    ["7052306"] = {
        npcs = {
            {
                id = 30239,
                alias = "Npc30239",
                script = "Actor/Npc/TempNPC",
                pos = "Q7052305_N30239",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30235,
                alias = "Npc30235",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7052302_N30235",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7052301"] = {},
    ["7052302"] = {
        npcs = {
            {
                id = 30235,
                alias = "Npc30235",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7052302_N30235",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7052303"] = {},
    ["7052304"] = {
        npcs = {
            {
                id = 30239,
                alias = "Npc30239",
                script = "Actor/Npc/TempNPC",
                pos = "Q7052305_N30239",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7052305"] = {
        npcs = {
            {
                id = 30239,
                alias = "Npc30239",
                script = "Actor/Npc/TempNPC",
                pos = "Q7052305_N30239",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7052306"] = {}
}
