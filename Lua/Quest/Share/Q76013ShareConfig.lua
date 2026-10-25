main_id = 76013
local tbl = {}
local n = 7601302
tbl[1] = 7601301
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7601301"] = {}, ["7601302"] = {}}

quest_data = {
    ["7601301"] = {
        npcs = {
            {
                id = 21842,
                alias = "Npc21842",
                script = "Actor/Npc/TempNPC",
                pos = "[3_14042:1811.422,240.114,10351.430,0.000,126.305,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7601302"] = {}
}
