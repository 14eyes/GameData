main_id = 73699
local tbl = {}
local n = 7369902
local v = 7369903
local n2 = 7369904
local n3 = 7369905
local n4 = 7369906
tbl[1] = 7369901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7369901"] = {}, ["7369902"] = {}, ["7369904"] = {}, ["7369906"] = {}}

quest_data = {
    ["7369901"] = {
        npcs = {
            {
                id = 4284,
                alias = "Npc4284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7369901_N4284_T7369901",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7369902"] = {},
    ["7369903"] = {},
    ["7369904"] = {},
    ["7369905"] = {},
    ["7369906"] = {
        npcs = {
            {
                id = 13210,
                alias = "Npc13210",
                script = "Actor/Npc/TempNPC",
                pos = "Q7369906_N13210",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
