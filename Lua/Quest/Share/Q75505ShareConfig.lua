main_id = 75505
local tbl = {}
local n = 7550502
local v = 7550503
local n2 = 7550504
tbl[1] = 7550501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7550501"] = {}, ["7550502"] = {}, ["7550503"] = {}, ["7550504"] = {}}

quest_data = {
    ["7550501"] = {
        npcs = {
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400212:-1373.984,169.188,7663.666,0.000,92.393,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7550502"] = {
        npcs = {
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400211:-1343.265,198.891,7177.317]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14830,
                alias = "Npc14830",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400248:-1343.785,198.814,7183.645,0.000,301.271,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7550503"] = {},
    ["7550504"] = {
        npcs = {
            {
                id = 1095,
                alias = "Npc1095",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400240:-1338.625,199.249,7178.035]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
