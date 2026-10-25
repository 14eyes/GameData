main_id = 75016
local tbl = {}
local n = 7501602
local v = 7501604
local n2 = 7501605
local n3 = 7501601
tbl[1] = 7501603
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7501601"] = {}, ["7501602"] = {}, ["7501603"] = {}, ["7501604"] = {}, ["7501605"] = {}}

quest_data = {
    ["7501601"] = {},
    ["7501602"] = {
        npcs = {
            {
                id = 21554,
                alias = "Npc21554",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400023:-1557.757,102.970,7959.011,0.000,222.116,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7501603"] = {
        npcs = {
            {
                id = 21553,
                alias = "Npc21553",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100016:-1863.082,118.401,8718.640,0.000,121.189,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21697,
                alias = "Npc21697",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100016:-1863.082,118.401,8718.640,0.000,121.189,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7501604"] = {},
    ["7501605"] = {}
}
