main_id = 73174
local tbl = {}
local n = 7317402
local v = 7317403
tbl[1] = 7317401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7317402"] = {},
    ["7317403"] = {
        npcs = {
            {
                id = 20801,
                alias = "Npc20801",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317402_N20801",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7317401"] = {},
    ["7317402"] = {
        npcs = {
            {
                id = 20801,
                alias = "Npc20801",
                script = "Actor/Npc/TempNPC",
                pos = "Q7317402_N20801",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7317403"] = {}
}
