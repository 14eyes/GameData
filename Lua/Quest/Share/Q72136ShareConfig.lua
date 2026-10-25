main_id = 72136
local tbl = {}
local n = 7213605
local v = 7213601
local n2 = 7213602
local n3 = 7213603
tbl[1] = 7213604
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7213601"] = {}, ["7213602"] = {}, ["7213603"] = {}, ["7213604"] = {}}

quest_data = {
    ["7213601"] = {
        npcs = {
            {
                id = 20275,
                alias = "Npc20275",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72136_1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7213602"] = {
        npcs = {
            {
                id = 20276,
                alias = "Npc20276",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72136_2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7213603"] = {
        npcs = {
            {
                id = 20277,
                alias = "Npc20277",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72136_3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7213604"] = {}
}
