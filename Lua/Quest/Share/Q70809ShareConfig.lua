main_id = 70809
local tbl = {}
local n = 7080904
local v = 7080902
local n2 = 7080903
local n3 = 7080907
local n4 = 7080906
local n5 = 7080905
tbl[1] = 7080901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7080901"] = {},
    ["7080902"] = {},
    ["7080903"] = {},
    ["7080904"] = {},
    ["7080905"] = {},
    ["7080906"] = {},
    ["7080907"] = {}
}

quest_data = {
    ["7080901"] = {},
    ["7080902"] = {},
    ["7080903"] = {},
    ["7080904"] = {
        npcs = {
            {
                id = 1827,
                alias = "Npc1827_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16753:3048.129,237.658,-131.896,0.000,176.721,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7080905"] = {},
    ["7080906"] = {},
    ["7080907"] = {}
}
