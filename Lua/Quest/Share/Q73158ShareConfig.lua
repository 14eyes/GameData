main_id = 73158
local tbl = {}
local n = 7315802
tbl[1] = 7315801
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7315802"] = {},
    ["7315801"] = {
        npcs = {
            {
                id = 20831,
                alias = "Npc20831",
                script = "Actor/Npc/TempNPC",
                pos = "Q7315801_N20831",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7315801"] = {
        npcs = {
            {
                id = 20831,
                alias = "Npc20831",
                script = "Actor/Npc/TempNPC",
                pos = "Q7315801_N20831",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7315802"] = {}
}
