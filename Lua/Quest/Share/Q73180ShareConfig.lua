main_id = 73180
local tbl = {}
local n = 7318002
local v = 7318003
tbl[1] = 7318001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7318002"] = {},
    ["7318003"] = {
        npcs = {
            {
                id = 20807,
                alias = "Npc20807",
                script = "Actor/Npc/TempNPC",
                pos = "Q7318002_N20807",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7318001"] = {},
    ["7318002"] = {
        npcs = {
            {
                id = 20807,
                alias = "Npc20807",
                script = "Actor/Npc/TempNPC",
                pos = "Q7318002_N20807",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7318003"] = {}
}
