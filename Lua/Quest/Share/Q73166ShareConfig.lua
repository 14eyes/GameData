main_id = 73166
local tbl = {}
local n = 7316602
local v = 7316605
local n2 = 7316603
local n3 = 7316604
tbl[1] = 7316601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7316602"] = {},
    ["7316603"] = {},
    ["7316604"] = {
        npcs = {
            {
                id = 20704,
                alias = "Npc20704",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316602_N20704",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316605"] = {}
}

quest_data = {
    ["7316601"] = {},
    ["7316602"] = {
        npcs = {
            {
                id = 20704,
                alias = "Npc20704",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316602_N20704",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7316603"] = {
        npcs = {
            {
                id = 20704,
                alias = "Npc20704",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316602_N20704",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7316604"] = {},
    ["7316605"] = {
        npcs = {
            {
                id = 20704,
                alias = "Npc20704",
                script = "Actor/Npc/TempNPC",
                pos = "Q7316602_N20704",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}
