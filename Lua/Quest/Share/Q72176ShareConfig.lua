main_id = 72176
local tbl = {}
local n = 7217603
local v = 7217604
local n2 = 7217602
local n3 = 7217605
tbl[1] = 7217601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7217602"] = {}, ["7217603"] = {}, ["7217605"] = {}}

quest_data = {
    ["7217601"] = {
        npcs = {
            {
                id = 20338,
                alias = "Npc20338",
                script = "Actor/Npc/TempNPC",
                pos = "WQ72176_XiaoDi01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "WQ72176_Player01"}}
    },
    ["7217602"] = {
        npcs = {
            {
                id = 20338,
                alias = "Npc20338",
                script = "Actor/Npc/TempNPC",
                pos = "WQ72176_XiaoDi01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "WQ72176_Player01"}}
    },
    ["7217603"] = {
        npcs = {
            {
                id = 20338,
                alias = "Npc20338",
                script = "Actor/Npc/TempNPC",
                pos = "WQ72176_XiaoDi01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7217604"] = {
        npcs = {
            {
                id = 20338,
                alias = "Npc20338",
                script = "Actor/Npc/TempNPC",
                pos = "WQ72176_XiaoDi01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7217605"] = {
        npcs = {
            {
                id = 20338,
                alias = "Npc20338",
                script = "Actor/Npc/TempNPC",
                pos = "WQ72176_XiaoDi01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
