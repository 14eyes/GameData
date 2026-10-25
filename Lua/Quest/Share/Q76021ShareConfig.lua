main_id = 76021
local tbl = {}
local n = 7602102
tbl[1] = 7602101
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7602101"] = {}, ["7602102"] = {}}

quest_data = {
    ["7602101"] = {
        npcs = {
            {
                id = 21927,
                alias = "Npc21927",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11446:2161.722,-146.395,8996.729]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21928,
                alias = "Npc21928",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11448:2174.225,198.207,8671.315,358.532,313.121,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 21930,
                alias = "Npc21930",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11450:2221.648,-205.469,8775.113]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7602102"] = {
        npcs = {
            {
                id = 21924,
                alias = "Npc21924",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11410:2189.326,200.406,8783.789,0.000,136.912,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
