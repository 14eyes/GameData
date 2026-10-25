main_id = 40146
local tbl = {}
local n = 4014601
local v = 4014602
tbl[1] = 4014603
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["4014601"] = {},
    ["4014602"] = {
        npcs = {
            {
                id = 30501,
                alias = "Npc30501",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300300736:2507.581,205.371,-1149.271,0.000,3.829,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4014603"] = {}
}

quest_data = {
    ["4014601"] = {
        npcs = {
            {
                id = 30501,
                alias = "Npc30501",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300300736:2507.581,205.371,-1149.271,0.000,3.829,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4014602"] = {},
    ["4014603"] = {}
}
