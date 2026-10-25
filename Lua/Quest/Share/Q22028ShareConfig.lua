main_id = 22028
local tbl = {}
local n = 2202802
local v = 2202803
local n2 = 2202804
local n3 = 2202806
local n4 = 2202805
local n5 = 2202807
local n6 = 2202808
local n7 = 2202809
tbl[1] = 2202801
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
rewind_data = {["2202801"] = {}, ["2202804"] = {}, ["2202807"] = {}}

quest_data = {
    ["2202801"] = {
        npcs = {
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202701xiangtai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202802"] = {},
    ["2202803"] = {},
    ["2202804"] = {},
    ["2202805"] = {
        npcs = {
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202805xiangtai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202806"] = {},
    ["2202807"] = {},
    ["2202808"] = {},
    ["2202809"] = {
        npcs = {
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202809xiangtai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
