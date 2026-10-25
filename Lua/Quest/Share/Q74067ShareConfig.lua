main_id = 74067
local tbl = {}
local n = 7406702
local v = 7406703
local n2 = 7406704
tbl[1] = 7406701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7406701"] = {}, ["7406702"] = {}, ["7406703"] = {}, ["7406704"] = {}}

quest_data = {
    ["7406701"] = {},
    ["7406702"] = {},
    ["7406703"] = {
        npcs = {
            {
                id = 5252,
                alias = "Npc5252",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4935:4358.750,188.744,4782.540,0.000,40.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7406704"] = {
        npcs = {
            {
                id = 5252,
                alias = "Npc5252",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4935:4358.750,188.744,4782.540,0.000,40.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
