main_id = 73698
local tbl = {}
local n = 7369802
local v = 7369803
local n2 = 7369804
local n3 = 7369805
local n4 = 7369806
tbl[1] = 7369801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7369801"] = {}, ["7369802"] = {}, ["7369804"] = {}, ["7369806"] = {}}

quest_data = {
    ["7369801"] = {
        npcs = {
            {
                id = 4284,
                alias = "Npc4284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7369801_N4284_T7369801",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7369802"] = {},
    ["7369803"] = {},
    ["7369804"] = {},
    ["7369805"] = {},
    ["7369806"] = {
        npcs = {
            {
                id = 13210,
                alias = "Npc13210",
                script = "Actor/Npc/TempNPC",
                pos = "Q7369806_N13210",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
