main_id = 4026
local tbl = {}
local n = 402602
local v = 402603
local n2 = 402604
tbl[1] = 402601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["402601"] = {}, ["402603"] = {}, ["402604"] = {}}

quest_data = {
    ["402601"] = {},
    ["402602"] = {
        npcs = {
            {
                id = 13626,
                alias = "Npc13626",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340800113:4448.399,122.395,4617.038,0.000,166.623,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["402603"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340200117:3529.557,470.298,3602.129,0.000,317.650,0.000]"}}
    },
    ["402604"] = {}
}
