main_id = 71809
local tbl = {}
local n = 7180902
local v = 7180903
local n2 = 7180904
local n3 = 7180905
local n4 = 7180906
local n5 = 7180907
local n6 = 7180908
local n7 = 7180909
tbl[1] = 7180901
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
    ["7180902"] = {},
    ["7180903"] = {},
    ["7180904"] = {},
    ["7180908"] = {
        npcs = {
            {
                id = 2060,
                alias = "Npc2060",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71809Haozai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71809Fanerye",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7180909"] = {
        npcs = {
            {
                id = 2060,
                alias = "Npc2060",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71809Haozai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71809Fanerye",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7180901"] = {},
    ["7180902"] = {},
    ["7180903"] = {},
    ["7180904"] = {
        npcs = {
            {
                id = 2060,
                alias = "Npc2060",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71809Haozai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2011,
                alias = "Npc2011",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71809Fanerye",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7180905"] = {},
    ["7180906"] = {},
    ["7180907"] = {},
    ["7180908"] = {},
    ["7180909"] = {}
}
