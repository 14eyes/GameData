main_id = 72660
local tbl = {}
local n = 7266002
local v = 7266003
tbl[1] = 7266001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7266001"] = {}, ["7266002"] = {}}

quest_data = {
    ["7266001"] = {
        npcs = {
            {
                id = 30065,
                alias = "Npc30065",
                script = "Actor/Npc/TempNPC",
                pos = "Q7266001NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7266002"] = {
        npcs = {
            {
                id = 30065,
                alias = "Npc30065",
                script = "Actor/Npc/TempNPC",
                pos = "Q7266002NPC",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 7266002, scene_id = 3, pos = "Q7266002PLAYER"}}
    },
    ["7266003"] = {}
}
