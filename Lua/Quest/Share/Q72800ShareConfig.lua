main_id = 72800
local tbl = {}
local n = 7280002
local v = 7280003
local n2 = 7280004
local n3 = 7280005
local n4 = 7280006
local n5 = 7280007
local n6 = 7280008
local n7 = 7280009
local n8 = 7280010
local n9 = 7280011
tbl[1] = 7280001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7280002"] = {},
    ["7280003"] = {
        npcs = {
            {
                id = 20329,
                alias = "Npc20329",
                script = "Actor/Npc/TempNPC",
                pos = "Q7280003",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7280004"] = {
        npcs = {
            {
                id = 20329,
                alias = "Npc20329",
                script = "Actor/Npc/TempNPC",
                pos = "Q7280003",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7280005"] = {},
    ["7280006"] = {},
    ["7280007"] = {},
    ["7280008"] = {},
    ["7280009"] = {},
    ["7280010"] = {},
    ["7280011"] = {
        npcs = {
            {
                id = 20268,
                alias = "Npc20268",
                script = "Actor/Npc/TempNPC",
                pos = "Q7280010",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7280001"] = {},
    ["7280002"] = {
        npcs = {
            {
                id = 20329,
                alias = "Npc20329",
                script = "Actor/Npc/TempNPC",
                pos = "Q7280003",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280003"] = {},
    ["7280004"] = {},
    ["7280005"] = {},
    ["7280006"] = {},
    ["7280007"] = {},
    ["7280008"] = {},
    ["7280009"] = {},
    ["7280010"] = {},
    ["7280011"] = {
        npcs = {
            {
                id = 20268,
                alias = "Npc20268",
                script = "Actor/Npc/TempNPC",
                pos = "Q7280010",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
