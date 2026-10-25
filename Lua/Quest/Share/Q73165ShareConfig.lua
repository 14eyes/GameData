main_id = 73165
local tbl = {}
local n = 7316502
local v = 7316505
local n2 = 7316503
local n3 = 7316504
tbl[1] = 7316501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7316502"] = {},
    ["7316503"] = {},
    ["7316504"] = {
        npcs = {
            {
                id = 20703,
                alias = "Npc20703",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316502_N20703",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316505"] = {}
}

quest_data = {
    ["7316501"] = {},
    ["7316502"] = {
        npcs = {
            {
                id = 20703,
                alias = "Npc20703",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316502_N20703",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316503"] = {
        npcs = {
            {
                id = 20703,
                alias = "Npc20703",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316502_N20703",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7316504"] = {},
    ["7316505"] = {
        npcs = {
            {
                id = 20703,
                alias = "Npc20703",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316502_N20703",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}
