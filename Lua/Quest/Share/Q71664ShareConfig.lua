main_id = 71664
local tbl = {}
local n = 7166402
tbl[1] = 7166401
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7166401"] = {}, ["7166402"] = {}}

quest_data = {
    ["7166401"] = {
        npcs = {
            {
                id = 2078,
                alias = "Npc2078",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1901701_T1901701_N2078_310701434",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7166402"] = {
        npcs = {
            {
                id = 30152,
                alias = "Npc30152",
                script = "Actor/Npc/TempNPC",
                pos = "Q7166402_N30152",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
