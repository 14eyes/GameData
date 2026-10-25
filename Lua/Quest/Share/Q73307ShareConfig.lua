main_id = 73307
local tbl = {}
local n = 7330705
local v = 7330706
local n2 = 7330702
local n3 = 7330703
local n4 = 7330704
tbl[1] = 7330701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7330702"] = {}, ["7330703"] = {}, ["7330704"] = {}, ["7330706"] = {}}

quest_data = {
    ["7330701"] = {},
    ["7330702"] = {
        npcs = {
            {
                id = 4284,
                alias = "Npc4284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4176:389.312,314.212,5704.602,0.000,137.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7330703"] = {},
    ["7330704"] = {
        npcs = {
            {
                id = 4284,
                alias = "Npc4284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4176:389.312,314.212,5704.602,0.000,137.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7330705"] = {},
    ["7330706"] = {}
}
