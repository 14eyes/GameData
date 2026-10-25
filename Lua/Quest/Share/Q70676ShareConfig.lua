main_id = 70676
local tbl = {}
local n = 7067602
tbl[1] = 7067601
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7067601"] = {}}

quest_data = {
    ["7067601"] = {
        npcs = {
            {
                id = 9500,
                alias = "Npc9500",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[48000_8:32.207,0.490,45.953,0.000,154.630,0.000]",
                scene_id = 48000,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7067602"] = {
        npcs = {
            {
                id = 9500,
                alias = "Npc9500",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[48000_8:32.207,0.490,45.953,0.000,154.630,0.000]",
                scene_id = 48000,
                room_id = 1,
                data_index = 1
            }
        }
    }
}
