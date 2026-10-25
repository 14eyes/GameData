main_id = 79058
local tbl = {}
local n = 7905803
local v = 7905804
local n2 = 7905805
local n3 = 7905806
local n4 = 7905802
tbl[1] = 7905801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7905801"] = {},
    ["7905802"] = {},
    ["7905803"] = {},
    ["7905804"] = {},
    ["7905805"] = {},
    ["7905806"] = {}
}

quest_data = {
    ["7905801"] = {
        npcs = {
            {
                id = 21108,
                alias = "Npc21108",
                script = "Actor/Npc/TempNPC",
                pos = "Studio2_Read",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7905802"] = {
        npcs = {
            {
                id = 21108,
                alias = "Npc21108",
                script = "Actor/Npc/TempNPC",
                pos = "Studio2_Read",
                scene_id = 10,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21109,
                alias = "Npc21109",
                script = "Actor/Npc/TempNPC",
                pos = "Studio2_Shot",
                scene_id = 10,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7905803"] = {},
    ["7905804"] = {},
    ["7905805"] = {},
    ["7905806"] = {}
}
