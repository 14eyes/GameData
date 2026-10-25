main_id = 76192
local tbl = {}
local n = 7619202
local v = 7619203
local n2 = 7619204
local n3 = 7619205
tbl[1] = 7619201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7619201"] = {}, ["7619202"] = {}, ["7619203"] = {}, ["7619205"] = {}}

quest_data = {
    ["7619201"] = {},
    ["7619202"] = {
        npcs = {
            {
                id = 16562,
                alias = "Npc16562",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15849:2121.535,200.396,9895.766,0.000,32.096,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 16573,
                alias = "Npc16573",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15852:2141.598,200.625,9920.973,0.000,355.667,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 7088,
                alias = "Npc7088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15853:2140.116,200.475,9921.271]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7619203"] = {
        npcs = {
            {
                id = 16573,
                alias = "Npc16573",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15852:2141.598,200.625,9920.973,0.000,355.667,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7088,
                alias = "Npc7088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15853:2140.116,200.475,9921.271]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7619204"] = {
        npcs = {
            {
                id = 16573,
                alias = "Npc16573",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15852:2141.598,200.625,9920.973,0.000,355.667,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7088,
                alias = "Npc7088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15853:2140.116,200.475,9921.271]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 16704,
                alias = "Npc16704",
                script = "Actor/Npc/TempNPC",
                pos = "[3_16637:2141.489,200.534,9922.194]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7619205"] = {
        npcs = {
            {
                id = 16573,
                alias = "Npc16573",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15852:2141.598,200.625,9920.973,0.000,355.667,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7088,
                alias = "Npc7088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15853:2140.116,200.475,9921.271]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
