main_id = 71525
local tbl = {}
local n = 7152502
local v = 7152503
tbl[1] = 7152501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7152501"] = {}, ["7152502"] = {}, ["7152503"] = {}}

quest_data = {
    ["7152501"] = {},
    ["7152502"] = {
        npcs = {
            {
                id = 13951,
                alias = "Npc13951",
                script = "Actor/Npc/TempNPC",
                pos = "[3_7026:-336.767,200.419,-709.591,0.000,348.785,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7152503"] = {
        npcs = {
            {
                id = 30471,
                alias = "Npc30471",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7026:-336.767,200.419,-709.591,0.000,348.785,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
