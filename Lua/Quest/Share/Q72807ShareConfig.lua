main_id = 72807
local tbl = {}
local n = 7280706
local v = 7280702
local n2 = 7280703
local n3 = 7280704
local n4 = 7280705
tbl[1] = 7280701
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
    ["7280701"] = {},
    ["7280702"] = {
        npcs = {
            {
                id = 3054,
                alias = "Npc3054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "LetterJiutiao01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280703"] = {
        npcs = {
            {
                id = 3026,
                alias = "Npc3026",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "LetterGuard01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280704"] = {},
    ["7280705"] = {}
}

quest_data = {
    ["7280701"] = {
        npcs = {
            {
                id = 3026,
                alias = "Npc3026",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "LetterGuard01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280702"] = {
        npcs = {
            {
                id = 3026,
                alias = "Npc3026",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "LetterGuard01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "LetterGateAvatar"}}
    },
    ["7280703"] = {
        npcs = {
            {
                id = 3054,
                alias = "Npc3054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "LetterJiutiao01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280704"] = {
        npcs = {
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "LetterFoodBoss01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280705"] = {
        npcs = {
            {
                id = 3086,
                alias = "Npc3086",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "LetterQianli01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280706"] = {
        npcs = {
            {
                id = 3054,
                alias = "Npc3054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "LetterJiutiao01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
