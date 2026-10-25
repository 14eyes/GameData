main_id = 22040
local tbl = {}
local n = 2204002
local v = 2204003
local n2 = 2204004
tbl[1] = 2204001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2204001"] = {},
    ["2204002"] = {
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
    ["2204003"] = {
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
    ["2204004"] = {
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
    ["2204001"] = {
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
    ["2204002"] = {},
    ["2204003"] = {},
    ["2204004"] = {}
}
