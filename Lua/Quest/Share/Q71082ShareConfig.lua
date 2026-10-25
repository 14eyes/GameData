main_id = 71082
local tbl = {}
local n = 7108202
tbl[1] = 7108201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7108201"] = {}, ["7108202"] = {}}

quest_data = {
    ["7108201"] = {
        npcs = {
            {
                id = 20552,
                alias = "Npc20552",
                script = "Actor/Npc/TempNPC",
                pos = "Q7108201_N20552",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20526,
                alias = "Npc20526",
                script = "Actor/Npc/TempNPC",
                pos = "Q7108201_N20552",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7108202"] = {
        npcs = {
            {
                id = 20553,
                alias = "Npc20553",
                script = "Actor/Npc/TempNPC",
                pos = "Q7108202_N20553",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20552,
                alias = "Npc20552",
                script = "Actor/Npc/TempNPC",
                pos = "Q7108201_N20552",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20526,
                alias = "Npc20526",
                script = "Actor/Npc/TempNPC",
                pos = "Q7108201_N20552",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
