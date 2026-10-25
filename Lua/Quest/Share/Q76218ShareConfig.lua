main_id = 76218
local tbl = {}
local n = 7621803
local v = 7621804
local n2 = 7621802
tbl[1] = 7621801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7621801"] = {}, ["7621802"] = {}, ["7621803"] = {}, ["7621804"] = {}}

quest_data = {
    ["7621801"] = {},
    ["7621802"] = {
        npcs = {
            {
                id = 1336,
                alias = "Npc1336",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17252:2870.312,456.817,4188.580,0.000,68.975,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17252:2870.312,456.817,4188.580,0.000,68.975,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7621803"] = {},
    ["7621804"] = {
        npcs = {
            {
                id = 1319,
                alias = "Npc1319",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17252:2870.312,456.817,4188.580,0.000,68.975,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
