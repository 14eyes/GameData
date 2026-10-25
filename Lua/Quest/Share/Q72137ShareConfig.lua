main_id = 72137
local tbl = {}
local n = 7213705
local v = 7213701
local n2 = 7213702
local n3 = 7213703
tbl[1] = 7213704
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7213701"] = {}, ["7213702"] = {}, ["7213703"] = {}, ["7213704"] = {}}

quest_data = {
    ["7213701"] = {
        npcs = {
            {
                id = 20278,
                alias = "Npc20278",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72137_1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7213702"] = {
        npcs = {
            {
                id = 20279,
                alias = "Npc20279",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72137_2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7213703"] = {
        npcs = {
            {
                id = 20280,
                alias = "Npc20280",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72137_3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7213704"] = {}
}
