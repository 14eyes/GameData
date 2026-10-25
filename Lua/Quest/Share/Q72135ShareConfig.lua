main_id = 72135
local tbl = {}
local n = 7213505
local v = 7213501
local n2 = 7213502
local n3 = 7213503
tbl[1] = 7213504
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7213501"] = {}, ["7213502"] = {}, ["7213503"] = {}, ["7213504"] = {}, ["7213505"] = {}}

quest_data = {
    ["7213501"] = {
        npcs = {
            {
                id = 20272,
                alias = "Npc20272",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72135_1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7213502"] = {
        npcs = {
            {
                id = 20273,
                alias = "Npc20273",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72135_2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7213503"] = {
        npcs = {
            {
                id = 20274,
                alias = "Npc20274",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_72135_3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7213504"] = {},
    ["7213505"] = {}
}
