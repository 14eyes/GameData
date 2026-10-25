main_id = 75270
local tbl = {}
local n = 7527003
local v = 7527004
local n2 = 7527001
tbl[1] = 7527002
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7527001"] = {},
    ["7527002"] = {},
    ["7527004"] = {
        npcs = {
            {
                id = 22031,
                alias = "Npc22031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200047:1545.996,263.573,15134.020,0.000,146.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7527001"] = {},
    ["7527002"] = {
        npcs = {
            {
                id = 22031,
                alias = "Npc22031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_352200047:1545.996,263.573,15134.020,0.000,146.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7527003"] = {},
    ["7527004"] = {}
}
