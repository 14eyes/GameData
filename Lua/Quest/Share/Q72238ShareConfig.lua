main_id = 72238
local tbl = {}
local n = 7223802
tbl[1] = 7223801
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7223801"] = {},
    ["7223802"] = {
        npcs = {
            {
                id = 20353,
                alias = "NPC20353",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T7223801_N20353",
                scene_id = 5,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7223801"] = {
        npcs = {
            {
                id = 20353,
                alias = "NPC20353",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "T7223801_N20353",
                scene_id = 5,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7223802"] = {}
}
