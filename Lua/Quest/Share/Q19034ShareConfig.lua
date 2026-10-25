main_id = 19034
local tbl = {}
local n = 1903402
tbl[1] = 1903401
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1903401"] = {}, ["1903402"] = {}}

quest_data = {
    ["1903401"] = {
        npcs = {
            {
                id = 10918,
                alias = "Npc10918",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903201male",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1903402"] = {
        npcs = {
            {
                id = 1023,
                alias = "Npc1023",
                script = "Actor/Npc/TempNPC",
                pos = "Q1903202cy",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
