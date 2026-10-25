main_id = 76126
local tbl = {}
local n = 7612602
local v = 7612603
tbl[1] = 7612601
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7612601"] = {}, ["7612602"] = {}, ["7612603"] = {}}

quest_data = {
    ["7612601"] = {},
    ["7612602"] = {
        npcs = {
            {
                id = 7046,
                alias = "Npc7046",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700180:1640.593,228.472,9492.981]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7612603"] = {
        npcs = {
            {
                id = 7046,
                alias = "Npc7046",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700182:1624.145,227.867,9481.578,0.000,223.256,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7058,
                alias = "Npc7058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700181:1619.887,227.914,9478.204,0.000,25.876,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
