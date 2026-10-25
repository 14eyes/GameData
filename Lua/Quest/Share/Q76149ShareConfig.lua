main_id = 76149
local tbl = {}
local n = 7614903
local v = 7614902
tbl[1] = 7614901
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7614901"] = {}, ["7614902"] = {}, ["7614903"] = {}}

quest_data = {
    ["7614901"] = {},
    ["7614902"] = {
        npcs = {
            {
                id = 22311,
                alias = "Npc22311",
                script = "Actor/Npc/TempNPC",
                pos = "[103_43:317.178,-644.971,511.138,0.000,88.626,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 1
            },
            {
                id = 22306,
                alias = "Npc22306",
                script = "Actor/Npc/TempNPC",
                pos = "[103_183:318.411,-644.679,513.665,0.000,104.098,0.000]",
                scene_id = 103,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7614903"] = {}
}
