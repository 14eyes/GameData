main_id = 71659
local tbl = {}
local n = 7165902
local v = 7165906
local n2 = 7165907
local n3 = 7165903
local n4 = 7165904
local n5 = 7165905
tbl[1] = 7165901
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
    ["7165901"] = {},
    ["7165902"] = {},
    ["7165903"] = {},
    ["7165904"] = {},
    ["7165905"] = {
        npcs = {
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7165904_N1587",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2083,
                alias = "Npc2083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7165904_N2083",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7165906"] = {},
    ["7165907"] = {}
}

quest_data = {
    ["7165901"] = {},
    ["7165902"] = {
        npcs = {
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7165902_N1587",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7165903"] = {},
    ["7165904"] = {
        npcs = {
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7165904_N1587",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2083,
                alias = "Npc2083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7165904_N2083",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7165905"] = {},
    ["7165906"] = {},
    ["7165907"] = {}
}
