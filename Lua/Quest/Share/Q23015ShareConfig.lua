main_id = 23015
local tbl = {}
local n = 2301502
local v = 2301503
tbl[1] = 2301501
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2301501"] = {},
    ["2301502"] = {
        npcs = {
            {
                id = 4042,
                alias = "Npc4042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2301501_N4042",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301501_N20657",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301501_N20658",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2301503"] = {
        npcs = {
            {
                id = 4042,
                alias = "Npc4042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2301501_N4042",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301501_N20657",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301501_N20658",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

quest_data = {
    ["2301501"] = {
        npcs = {
            {
                id = 4042,
                alias = "Npc4042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2301501_N4042",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301501_N20657",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301501_N20658",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2301502"] = {},
    ["2301503"] = {}
}
