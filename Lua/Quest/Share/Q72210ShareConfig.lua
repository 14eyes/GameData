main_id = 72210
local tbl = {}
local n = 7221002
local v = 7221006
local n2 = 7221003
local n3 = 7221007
local n4 = 7221005
local n5 = 7221004
tbl[1] = 7221001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7221002"] = {},
    ["7221004"] = {},
    ["7221005"] = {},
    ["7221006"] = {
        npcs = {
            {
                id = 20378,
                alias = "Npc20378",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ72210_Babao",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7221007"] = {
        npcs = {
            {
                id = 20379,
                alias = "Npc20379",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ72210_Kunbuwan",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7221001"] = {},
    ["7221002"] = {
        npcs = {
            {
                id = 20378,
                alias = "Npc20378",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ72210_Babao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7221003"] = {
        npcs = {
            {
                id = 20379,
                alias = "Npc20379",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ72210_Kunbuwan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7221004"] = {
        npcs = {
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ72155_Qinzi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20378,
                alias = "Npc20378",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ72210_BabaoLast",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20379,
                alias = "Npc20379",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ72210_KunbuwanLast",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7221005"] = {
        npcs = {
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ72155_Qinzi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7221006"] = {},
    ["7221007"] = {}
}
