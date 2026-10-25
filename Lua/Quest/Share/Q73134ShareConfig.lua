main_id = 73134
local tbl = {}
local n = 7313402
local v = 7313403
tbl[1] = 7313401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7313402"] = {},
    ["7313403"] = {
        npcs = {
            {
                id = 20674,
                alias = "Npc20674",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313402_N20674",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7313401"] = {},
    ["7313402"] = {
        npcs = {
            {
                id = 20674,
                alias = "Npc20674",
                script = "Actor/Npc/TempNPC",
                pos = "Q7313402_N20674",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7313403"] = {}
}
