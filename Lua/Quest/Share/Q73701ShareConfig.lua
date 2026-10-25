main_id = 73701
local tbl = {}
local n = 7370102
local v = 7370103
local n2 = 7370104
local n3 = 7370105
local n4 = 7370106
tbl[1] = 7370101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7370101"] = {}, ["7370102"] = {}, ["7370104"] = {}, ["7370106"] = {}}

quest_data = {
    ["7370101"] = {
        npcs = {
            {
                id = 4284,
                alias = "Npc4284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7370101_N4284_T7370101",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7370102"] = {},
    ["7370103"] = {},
    ["7370104"] = {},
    ["7370105"] = {},
    ["7370106"] = {
        npcs = {
            {
                id = 13210,
                alias = "Npc13210",
                script = "Actor/Npc/TempNPC",
                pos = "Q7370106_N13210",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
