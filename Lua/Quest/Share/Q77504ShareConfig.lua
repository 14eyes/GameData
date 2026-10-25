main_id = 77504
local tbl = {}
local n = 7750403
local v = 7750402
tbl[1] = 7750401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7750401"] = {}, ["7750402"] = {}, ["7750403"] = {}}

quest_data = {
    ["7750401"] = {},
    ["7750402"] = {
        npcs = {
            {
                id = 17182,
                alias = "Npc17182",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18163:9471.368,251.650,7650.402]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7750403"] = {
        npcs = {
            {
                id = 17182,
                alias = "Npc17182",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18163:9471.368,251.650,7650.402]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
