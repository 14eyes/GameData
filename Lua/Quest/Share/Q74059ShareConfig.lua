main_id = 74059
local tbl = {}
local n = 7405905
local v = 7405902
local n2 = 7405906
local n3 = 7405903
local n4 = 7405904
tbl[1] = 7405901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7405901"] = {}, ["7405902"] = {}, ["7405903"] = {}, ["7405905"] = {}}

quest_data = {
    ["7405901"] = {},
    ["7405902"] = {},
    ["7405903"] = {
        npcs = {
            {
                id = 5322,
                alias = "Npc5322",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340300152:2397.848,183.977,4921.841,0.000,281.339,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                inWater = true
            }
        }
    },
    ["7405904"] = {},
    ["7405905"] = {},
    ["7405906"] = {}
}
