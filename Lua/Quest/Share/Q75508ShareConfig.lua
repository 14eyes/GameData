main_id = 75508
local tbl = {}
local n = 7550801
tbl[1] = 7550802
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7550801"] = {}, ["7550802"] = {}}

quest_data = {
    ["7550801"] = {
        npcs = {
            {
                id = 1087,
                alias = "Npc1087",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10738:-3021.366,204.665,8956.718,0.000,64.468,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10739:-3020.990,204.665,8957.749,0.000,160.406,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1097,
                alias = "Npc1097",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10740:-3020.337,204.665,8956.376,0.000,304.468,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7550802"] = {}
}
