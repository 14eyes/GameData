main_id = 76163
local tbl = {}
local n = 7616302
local v = 7616306
local n2 = 7616307
local n3 = 7616303
local n4 = 7616304
local n5 = 7616305
tbl[1] = 7616301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7616301"] = {},
    ["7616302"] = {},
    ["7616304"] = {},
    ["7616305"] = {},
    ["7616306"] = {},
    ["7616307"] = {}
}

quest_data = {
    ["7616301"] = {},
    ["7616302"] = {},
    ["7616303"] = {},
    ["7616304"] = {
        npcs = {
            {
                id = 22506,
                alias = "Npc22506",
                script = "Actor/Npc/TempNPC",
                pos = "[102_215:-297.423,-3956.918,7013.670,0.000,28.431,0.000]",
                scene_id = 102,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 102, pos = "[102_216:-2605.538,745.624,805.637,0.000,108.270,0.000]"}}
    },
    ["7616305"] = {},
    ["7616306"] = {},
    ["7616307"] = {
        transmit_points = {{point_id = 1, scene_id = 102, pos = "[102_214:-295.000,-3957.000,7016.000,0.000,255.093,0.000]"}}
    }
}
