main_id = 72202
local tbl = {}
local n = 7220202
local v = 7220203
tbl[1] = 7220201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7220201"] = {}, ["7220202"] = {}, ["7220203"] = {}}

quest_data = {
    ["7220201"] = {
        npcs = {
            {
                id = 20424,
                alias = "Npc20424",
                script = "Actor/Npc/TempNPC",
                pos = "72202_kanshou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7220202"] = {
        npcs = {
            {
                id = 20424,
                alias = "Npc20424",
                script = "Actor/Npc/TempNPC",
                pos = "72202_kanshou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7220203"] = {
        npcs = {
            {
                id = 20424,
                alias = "Npc20424",
                script = "Actor/Npc/TempNPC",
                pos = "72202_kanshou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
