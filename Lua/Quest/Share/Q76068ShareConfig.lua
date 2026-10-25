main_id = 76068
local tbl = {}
local n = 7606801
local v = 7606802
local n2 = 7606803
tbl[1] = 7606804
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7606802"] = {}, ["7606803"] = {}, ["7606804"] = {}}

quest_data = {
    ["7606801"] = {},
    ["7606802"] = {
        npcs = {
            {
                id = 22433,
                alias = "Npc22433",
                script = "Actor/Npc/TempNPC",
                pos = "[102_910224006:-295.000,-3957.000,7016.000,0.000,44.490,0.000]",
                scene_id = 102,
                room_id = 0,
                data_index = 1
            },
            {
                id = 22434,
                alias = "Npc22434",
                script = "Actor/Npc/TempNPC",
                pos = "[102_351:-294.772,-3956.918,7017.296,0.000,206.900,0.000]",
                scene_id = 102,
                room_id = 0,
                data_index = 2
            },
            {
                id = 22435,
                alias = "Npc22435",
                script = "Actor/Npc/TempNPC",
                pos = "[102_352:-292.888,-3956.918,7015.365,0.000,285.474,0.000]",
                scene_id = 102,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {
            {
                point_id = 1,
                scene_id = 102,
                pos = "[102_910209001:-3080.377,150.771,-1557.261,0.000,286.267,0.000]"
            }
        }
    },
    ["7606803"] = {},
    ["7606804"] = {
        transmit_points = {
            {
                point_id = 1,
                scene_id = 102,
                pos = "[102_910224007:-295.000,-3957.000,7016.000,0.000,255.000,0.000]"
            }
        }
    }
}
