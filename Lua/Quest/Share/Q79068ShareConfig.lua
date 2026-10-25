main_id = 79068
local tbl = {}
local n = 7906803
local v = 7906802
tbl[1] = 7906801
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7906801"] = {}}

quest_data = {
    ["7906801"] = {},
    ["7906802"] = {
        npcs = {
            {
                id = 21518,
                alias = "Npc21518",
                script = "Actor/Npc/TempNPC",
                pos = "[100_133:260.268,455.610,147.138,0.000,250.000,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7906803"] = {
        npcs = {
            {
                id = 21518,
                alias = "Npc21518",
                script = "Actor/Npc/TempNPC",
                pos = "[100_135:260.876,456.424,148.278,0.000,222.148,0.000]",
                scene_id = 100,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 100, pos = "[100_134:247.204,455.415,144.365,0.000,103.500,0.000]"}}
    }
}
