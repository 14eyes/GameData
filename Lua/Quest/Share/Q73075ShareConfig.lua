main_id = 73075
local tbl = {}
local n = 7307503
local v = 7307502
tbl[1] = 7307501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7307502"] = {
        npcs = {
            {
                id = 20607,
                alias = "Npc20607",
                script = "Actor/Npc/TempNPC",
                pos = "Q73075_N20607",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20816,
                alias = "Npc20816",
                script = "Actor/Npc/TempNPC",
                pos = "Q73075_N20578",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7307503"] = {
        npcs = {
            {
                id = 20607,
                alias = "Npc20607",
                script = "Actor/Npc/TempNPC",
                pos = "Q7326803_N4189",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20816,
                alias = "Npc20816",
                script = "Actor/Npc/TempNPC",
                pos = "Q7326803_N4224",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7307501"] = {},
    ["7307502"] = {
        npcs = {
            {
                id = 20607,
                alias = "Npc20607",
                script = "Actor/Npc/TempNPC",
                pos = "Q73075_N20607",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20816,
                alias = "Npc20816",
                script = "Actor/Npc/TempNPC",
                pos = "Q73075_N20578",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4189,
                alias = "Npc4189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73075_N20607",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7307503"] = {
        npcs = {
            {
                id = 20607,
                alias = "Npc20607",
                script = "Actor/Npc/TempNPC",
                pos = "Q7326803_N4189",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20816,
                alias = "Npc20816",
                script = "Actor/Npc/TempNPC",
                pos = "Q7326803_N4224",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4189,
                alias = "Npc4189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7326803_N4189",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
