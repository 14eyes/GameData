main_id = 804
local tbl = {}
local n = 80402
local v = 80403
local n2 = 80404
local n3 = 80405
local n4 = 80406
local n5 = 80407
local n6 = 80408
local n7 = 80409
tbl[1] = 80401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["80401"] = {},
    ["80402"] = {},
    ["80403"] = {},
    ["80404"] = {},
    ["80405"] = {},
    ["80406"] = {},
    ["80407"] = {},
    ["80408"] = {},
    ["80409"] = {}
}

quest_data = {
    ["80401"] = {
        npcs = {
            {
                id = 13623,
                alias = "Npc13623",
                script = "Actor/Npc/TempNPC",
                pos = "Q301GaiaFollow1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70290744,
                alias = "Gadget70290744",
                pos = "TalkTestPlayer1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["80402"] = {},
    ["80403"] = {},
    ["80404"] = {},
    ["80405"] = {},
    ["80406"] = {},
    ["80407"] = {},
    ["80408"] = {},
    ["80409"] = {}
}
