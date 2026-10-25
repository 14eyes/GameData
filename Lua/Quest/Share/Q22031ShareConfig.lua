main_id = 22031
local tbl = {}
local n = 2203102
local v = 2203103
local n2 = 2203104
tbl[1] = 2203101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133221004"}}}}

rewind_data = {
    ["2203101"] = {},
    ["2203102"] = {
        npcs = {
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202901NPC3060",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203104"] = {}
}

quest_data = {
    ["2203101"] = {
        npcs = {
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202901NPC3060",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203102"] = {},
    ["2203103"] = {},
    ["2203104"] = {
        npcs = {
            {
                id = 3060,
                alias = "Npc3060",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202903NPC3060",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2202903PLAYER"}}
    }
}
