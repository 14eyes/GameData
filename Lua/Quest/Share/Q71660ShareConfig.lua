main_id = 71660
local tbl = {}
local n = 7166002
tbl[1] = 7166001
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
local v = {}
local tbl2 = {}
local quest_var = {}
local n2 = -1
local n3 = -1
local n4 = -1
local n5 = -1
quest_var[1] = 1
quest_var[2] = n2
quest_var[3] = n3
quest_var[4] = n4
quest_var[5] = n5
tbl2.quest_var = quest_var
v["7166001"] = tbl2

v["7166002"] = {
    npcs = {
        {
            id = 1587,
            alias = "Npc1587",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "Q7165904_N1587",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 2083,
            alias = "Npc2083",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "Q7165904_N2083",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        }
    }
}

rewind_data = v

quest_data = {
    ["7166001"] = {
        npcs = {
            {
                id = 1587,
                alias = "Npc1587",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7165904_N1587",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2083,
                alias = "Npc2083",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7165904_N2083",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7166002"] = {}
}
