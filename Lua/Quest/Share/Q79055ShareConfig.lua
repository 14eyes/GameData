main_id = 79055
local tbl = {}
local n = 7905502
local v = 7905503
tbl[1] = 7905501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7905501"] = {},
    ["7905502"] = {
        npcs = {
            {
                id = 21064,
                alias = "Npc21064",
                script = "Actor/Npc/TempNPC",
                pos = "Studio1_Read",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7905503"] = {}
}

quest_data = {
    ["7905501"] = {
        npcs = {
            {
                id = 21064,
                alias = "Npc21064",
                script = "Actor/Npc/TempNPC",
                pos = "Studio1_Read",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7905502"] = {
        npcs = {
            {
                id = 21065,
                alias = "Npc21065",
                script = "Actor/Npc/TempNPC",
                pos = "Studio1_Shot",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7905503"] = {}
}
