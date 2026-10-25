main_id = 2023
local tbl = {}
local n = 202302
local v = 202303
tbl[1] = 202301
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["202301"] = {}, ["202302"] = {}, ["202303"] = {}}

quest_data = {
    ["202301"] = {},
    ["202302"] = {
        npcs = {
            {
                id = 12163,
                alias = "Npc12163",
                script = "Actor/Npc/TempNPC",
                pos = "TestLockGuard01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "TestLockPlayer01"},
            {point_id = 2, scene_id = 3, pos = "TestLockPlayer02"},
            {point_id = 3, scene_id = 3, pos = "TestLockPlayer03"},
            {point_id = 4, scene_id = 3, pos = "TestLockPlayer04"},
            {point_id = 5, scene_id = 3, pos = "TestLockPlayer05"},
            {point_id = 6, scene_id = 3, pos = "TestLockPlayer06"},
            {point_id = 7, scene_id = 3, pos = "TestLockPlayer07"},
            {point_id = 8, scene_id = 3, pos = "TestLockPlayer08"},
            {point_id = 9, scene_id = 3, pos = "TestLockPlayer09"},
            {point_id = 10, scene_id = 3, pos = "TestLockPlayer10"},
            {point_id = 11, scene_id = 3, pos = "TestLockPlayer11"}
        }
    },
    ["202303"] = {
        npcs = {
            {
                id = 12163,
                alias = "Npc12163",
                script = "Actor/Npc/TempNPC",
                pos = "TestLockGuard01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
