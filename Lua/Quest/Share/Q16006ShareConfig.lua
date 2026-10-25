main_id = 16006
local tbl = {}
local n = 1600602
tbl[1] = 1600601
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1600601"] = {}, ["1600602"] = {}}

quest_data = {
    ["1600601"] = {},
    ["1600602"] = {
        npcs = {
            {
                id = 1320,
                alias = "Npc1320",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15014:1690.564,277.649,-1531.228]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
