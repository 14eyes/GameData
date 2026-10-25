main_id = 73038
local tbl = {}
local n = 7303802
local v = 7303803
tbl[1] = 7303801
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7303801"] = {}, ["7303802"] = {}, ["7303803"] = {}}

quest_data = {
    ["7303801"] = {
        npcs = {
            {
                id = 20647,
                alias = "Npc20647",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303708_N20647",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7303802"] = {
        npcs = {
            {
                id = 20740,
                alias = "Npc20740",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303802_N20740",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7303803"] = {
        npcs = {
            {
                id = 4198,
                alias = "Npc4198",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7303801_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20647,
                alias = "Npc20647",
                script = "Actor/Npc/TempNPC",
                pos = "Q7303803_N20647",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
