main_id = 73167
local tbl = {}
local n = 7316702
local v = 7316705
local n2 = 7316703
local n3 = 7316704
tbl[1] = 7316701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7316702"] = {},
    ["7316703"] = {},
    ["7316704"] = {
        npcs = {
            {
                id = 20705,
                alias = "Npc20705",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316702_N20705",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316705"] = {}
}

quest_data = {
    ["7316701"] = {},
    ["7316702"] = {
        npcs = {
            {
                id = 20705,
                alias = "Npc20705",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316702_N20705",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316703"] = {
        npcs = {
            {
                id = 20705,
                alias = "Npc20705",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316702_N20705",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7316704"] = {},
    ["7316705"] = {
        npcs = {
            {
                id = 20705,
                alias = "Npc20705",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316702_N20705",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}
