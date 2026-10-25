main_id = 76078
local tbl = {}
local n = 7607802
local v = 7607803
local n2 = 7607804
tbl[1] = 7607801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7607801"] = {}, ["7607802"] = {}, ["7607803"] = {}, ["7607804"] = {}}

quest_data = {
    ["7607801"] = {},
    ["7607802"] = {
        npcs = {
            {
                id = 22183,
                alias = "Npc22183",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13634:2387.261,202.785,9652.078,0.000,227.218,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7607803"] = {},
    ["7607804"] = {
        npcs = {
            {
                id = 22183,
                alias = "Npc22183",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13635:2425.144,212.042,9660.840,0.000,289.819,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
