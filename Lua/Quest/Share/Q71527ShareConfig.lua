main_id = 71527
local tbl = {}
local n = 7152702
local v = 7152703
tbl[1] = 7152701
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7152701"] = {}, ["7152702"] = {}, ["7152703"] = {}}

quest_data = {
    ["7152701"] = {},
    ["7152702"] = {
        npcs = {
            {
                id = 13953,
                alias = "Npc13953",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7028:-347.962,200.495,-711.101,0.000,22.879,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7152703"] = {
        npcs = {
            {
                id = 30467,
                alias = "Npc30467",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7028:-347.962,200.495,-711.101,0.000,22.879,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
