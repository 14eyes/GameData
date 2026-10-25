main_id = 21038
local tbl = {}
local n = 2103802
local v = 2103803
tbl[1] = 2103801
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2103801"] = {},
    ["2103802"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21038_SUNYU",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103803"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21038_SUNYU",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2103801"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q21038_SUNYU",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103802"] = {
        npcs = {
            {
                id = 13057,
                alias = "Npc13057",
                script = "Actor/Npc/TempNPC",
                pos = "Q21038_TAKEPHOTO",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103803"] = {}
}
