main_id = 79047
local tbl = {}
local n = 7904702
local v = 7904703
local n2 = 7904705
local n3 = 7904706
local n4 = 7904707
local n5 = 7904704
tbl[1] = 7904701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7904701"] = {},
    ["7904702"] = {},
    ["7904703"] = {},
    ["7904704"] = {},
    ["7904705"] = {},
    ["7904706"] = {},
    ["7904707"] = {}
}

quest_data = {
    ["7904701"] = {
        npcs = {
            {
                id = 20978,
                alias = "Npc20978",
                script = "Actor/Npc/TempNPC",
                pos = "Q7904701_N20978_32",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7904702"] = {
        npcs = {
            {
                id = 20986,
                alias = "Npc20986",
                script = "Actor/Npc/TempNPC",
                pos = "Q7904702_N20978",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7904703"] = {},
    ["7904704"] = {
        npcs = {
            {
                id = 20978,
                alias = "Npc20978",
                script = "Actor/Npc/TempNPC",
                pos = "Q7904704_N20978",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7904705"] = {
        npcs = {
            {
                id = 20978,
                alias = "Npc20978",
                script = "Actor/Npc/TempNPC",
                pos = "Q7904703_guide",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7904706"] = {},
    ["7904707"] = {
        npcs = {
            {
                id = 20978,
                alias = "Npc20978",
                script = "Actor/Npc/TempNPC",
                pos = "Q7904703_guide",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
