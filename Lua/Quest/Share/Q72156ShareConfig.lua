main_id = 72156
local tbl = {}
local n = 7215603
local v = 7215604
local n2 = 7215607
local n3 = 7215601
local n4 = 7215609
local n5 = 7215610
local n6 = 7215605
local n7 = 7215608
local n8 = 7215606
tbl[1] = 7215602
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7215602"] = {},
    ["7215603"] = {},
    ["7215605"] = {},
    ["7215606"] = {},
    ["7215608"] = {},
    ["7215609"] = {},
    ["7215610"] = {}
}

quest_data = {
    ["7215601"] = {},
    ["7215602"] = {},
    ["7215603"] = {},
    ["7215604"] = {},
    ["7215605"] = {},
    ["7215606"] = {
        npcs = {
            {
                id = 3180,
                alias = "Npc3180",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ72156_Yuezi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3181,
                alias = "Npc3181",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ72156_Dayou",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7215607"] = {},
    ["7215608"] = {},
    ["7215609"] = {},
    ["7215610"] = {}
}
