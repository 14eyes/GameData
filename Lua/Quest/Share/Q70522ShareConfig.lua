main_id = 70522
local tbl = {}
local n = 7052205
local v = 7052204
local n2 = 7052202
local n3 = 7052206
local n4 = 7052203
tbl[1] = 7052201
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
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120050"}, {"120083"}},
        QUEST_EXEC_STOP_BARGAIN = {{"8"}}
    }
}

rewind_data = {
    ["7052201"] = {},
    ["7052202"] = {
        npcs = {
            {
                id = 30238,
                alias = "Npc30238",
                script = "Actor/Npc/TempNPC",
                pos = "Q7052201_N30238",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7052203"] = {
        npcs = {
            {
                id = 30238,
                alias = "Npc30238",
                script = "Actor/Npc/TempNPC",
                pos = "Q7052201_N30238",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7052205"] = {},
    ["7052206"] = {
        npcs = {
            {
                id = 30238,
                alias = "Npc30238",
                script = "Actor/Npc/TempNPC",
                pos = "Q7052201_N30238",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30236,
                alias = "Npc30236",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7052202_N30236",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7052201"] = {},
    ["7052202"] = {
        npcs = {
            {
                id = 30236,
                alias = "Npc30236",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7052202_N30236",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7052203"] = {},
    ["7052204"] = {
        npcs = {
            {
                id = 30238,
                alias = "Npc30238",
                script = "Actor/Npc/TempNPC",
                pos = "Q7052201_N30238",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7052205"] = {
        npcs = {
            {
                id = 30238,
                alias = "Npc30238",
                script = "Actor/Npc/TempNPC",
                pos = "Q7052201_N30238",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7052206"] = {}
}
