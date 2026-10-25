main_id = 22050
local tbl = {}
local n = 2205002
local v = 2205003
local n2 = 2205004
local n3 = 2205005
local n4 = 2205006
local n5 = 2205007
tbl[1] = 2205001
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
    ["2205001"] = {},
    ["2205002"] = {},
    ["2205003"] = {},
    ["2205004"] = {},
    ["2205005"] = {
        npcs = {
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2205004Cat",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3105,
                alias = "Npc3105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2205004Cat",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2205006"] = {
        npcs = {
            {
                id = 3105,
                alias = "Npc3105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2205004Cat",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2205007"] = {}
}

quest_data = {
    ["2205001"] = {
        npcs = {
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2205001Cat",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2205002"] = {
        npcs = {
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2205002Cat",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2205003"] = {
        npcs = {
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2205003Cat",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2205004"] = {
        npcs = {
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2205004Cat",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3105,
                alias = "Npc3105",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2205004Cat",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2205005"] = {},
    ["2205006"] = {
        npcs = {
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2205005Letter",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2205007"] = {
        npcs = {
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2205001Cat",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
