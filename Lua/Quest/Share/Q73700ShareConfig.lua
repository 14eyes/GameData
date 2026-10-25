main_id = 73700
local tbl = {}
local n = 7370002
local v = 7370003
local n2 = 7370004
local n3 = 7370005
local n4 = 7370006
tbl[1] = 7370001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7370001"] = {}, ["7370002"] = {}, ["7370004"] = {}, ["7370006"] = {}}

quest_data = {
    ["7370001"] = {
        npcs = {
            {
                id = 4284,
                alias = "Npc4284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7370001_N4284_T7370001",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7370002"] = {},
    ["7370003"] = {},
    ["7370004"] = {},
    ["7370005"] = {},
    ["7370006"] = {
        npcs = {
            {
                id = 13210,
                alias = "Npc13210",
                script = "Actor/Npc/TempNPC",
                pos = "Q7370006_N13210",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
