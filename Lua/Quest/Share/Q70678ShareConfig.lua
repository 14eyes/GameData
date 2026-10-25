main_id = 70678
local tbl = {}
local n = 7067802
local v = 7067803
tbl[1] = 7067801
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7067801"] = {}, ["7067802"] = {}, ["7067803"] = {}}

quest_data = {
    ["7067801"] = {
        npcs = {
            {
                id = 9500,
                alias = "Npc9500",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[48000_6:28.904,0.490,30.517,0.000,284.600,0.000]",
                scene_id = 48000,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7067802"] = {},
    ["7067803"] = {
        npcs = {
            {
                id = 9500,
                alias = "Npc9500",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[48000_6:28.904,0.490,30.517,0.000,284.600,0.000]",
                scene_id = 48000,
                room_id = 1,
                data_index = 1
            }
        }
    }
}
