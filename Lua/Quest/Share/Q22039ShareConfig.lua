main_id = 22039
local tbl = {}
local n = 2203902
local v = 2203903
local n2 = 2203904
tbl[1] = 2203901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2203901"] = {},
    ["2203902"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203903"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203904"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2203901"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203902"] = {},
    ["2203903"] = {},
    ["2203904"] = {}
}
