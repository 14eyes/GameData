main_id = 75506
local tbl = {}
local n = 7550604
local v = 7550602
local n2 = 7550603
tbl[1] = 7550601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7550601"] = {}, ["7550602"] = {}, ["7550603"] = {}, ["7550604"] = {}}

quest_data = {
    ["7550601"] = {},
    ["7550602"] = {},
    ["7550603"] = {
        npcs = {
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100182:-1276.152,223.116,8776.073,0.000,168.005,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1094,
                alias = "Npc1094",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100184:-1273.595,223.105,8774.408]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7550604"] = {
        npcs = {
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100181:-1275.467,223.128,8776.243,0.000,183.881,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
