main_id = 12017
local tbl = {}
local n = 1201702
local v = 1201704
local n2 = 1201705
local n3 = 1201706
local n4 = 1201707
tbl[1] = 1201701
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
    ["1201701"] = {},
    ["1201702"] = {},
    ["1201704"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12017ShougunYing1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201705"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12017ShougunYing1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201706"] = {},
    ["1201707"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12017ShougunYing2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12077,
                alias = "Npc12077",
                script = "Actor/Npc/TempNPC",
                pos = "Q12017Yiping1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1201701"] = {},
    ["1201702"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12017ShougunYing1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201704"] = {
        npcs = {
            {
                id = 12130,
                alias = "Npc12130",
                script = "Actor/Npc/TempNPC",
                pos = "Q12017Watch1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201705"] = {},
    ["1201706"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12017ShougunYing1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12077,
                alias = "Npc12077",
                script = "Actor/Npc/TempNPC",
                pos = "Q12017Yiping1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1201707"] = {}
}
