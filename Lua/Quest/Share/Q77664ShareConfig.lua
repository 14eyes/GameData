main_id = 77664
local tbl = {}
local n = 7766403
local v = 7766404
local n2 = 7766402
tbl[1] = 7766401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"121623"}}}}
rewind_data = {["7766401"] = {}, ["7766402"] = {}, ["7766403"] = {}, ["7766404"] = {}}

quest_data = {
    ["7766401"] = {},
    ["7766402"] = {
        npcs = {
            {
                id = 1339,
                alias = "Npc1339",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_13:1.177,-0.077,9.255]",
                scene_id = 1162,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1341,
                alias = "Npc1341",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_206:-1.860,0.568,-33.185]",
                scene_id = 1162,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1338,
                alias = "Npc1338",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_208:3.632,3.022,-48.931,0.000,337.950,0.000]",
                scene_id = 1162,
                room_id = 1,
                data_index = 3
            },
            {
                id = 7808,
                alias = "Npc7808",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_205:4.086,1.883,-45.025]",
                scene_id = 1162,
                room_id = 1,
                data_index = 4
            },
            {
                id = 1339,
                alias = "Npc1339_1",
                script = "Actor/Npc/TempNPC",
                pos = "[1162_207:-0.034,3.544,-54.109]",
                scene_id = 1162,
                room_id = 1,
                data_index = 5
            }
        }
    },
    ["7766403"] = {},
    ["7766404"] = {}
}
