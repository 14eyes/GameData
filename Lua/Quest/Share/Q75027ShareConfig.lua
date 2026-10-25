main_id = 75027
local tbl = {}
local n = 7502702
local v = 7502703
tbl[1] = 7502701
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7502701"] = {}, ["7502702"] = {}, ["7502703"] = {}}

quest_data = {
    ["7502701"] = {
        npcs = {
            {
                id = 6130,
                alias = "Npc6130",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_350400024:-1561.688,102.373,7973.326,0.000,13.002,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7502702"] = {},
    ["7502703"] = {
        npcs = {
            {
                id = 6130,
                alias = "Npc6130",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_350400024:-1561.688,102.373,7973.326,0.000,13.002,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
