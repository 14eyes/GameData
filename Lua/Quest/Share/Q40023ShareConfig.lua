main_id = 40023
local tbl = {}
local n = 4002302
tbl[1] = 4002301
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4002301"] = {}, ["4002302"] = {}}

quest_data = {
    ["4002301"] = {
        npcs = {
            {
                id = 30067,
                alias = "Npc30067",
                script = "Actor/Npc/TempNPC",
                pos = "Q40020gate",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002302"] = {}
}
