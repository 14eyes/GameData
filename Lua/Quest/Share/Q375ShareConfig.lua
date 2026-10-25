main_id = 375
local tbl = {}
local n = 37502
local v = 37503
local n2 = 37504
local n3 = 37505
local n4 = 37506
local n5 = 37507
tbl[1] = 37501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
rewind_data = {}

rewind_data["37501"] = {
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q374WendyTemp",
            data_index = 0,
            scene_id = 1008,
            room_id = 1
        },
        {
            id = 1164,
            alias = "Guard",
            script = "Actor/Quest/Q375/Guard",
            pos = "Q374Guard",
            data_index = 0,
            scene_id = 1008,
            room_id = 1
        }
    }
}

rewind_data["37502"] = {
    npcs = {
        {
            id = 1164,
            alias = "Guard",
            script = "Actor/Quest/Q375/Guard",
            pos = "Q374Guard",
            data_index = 0,
            scene_id = 1008,
            room_id = 1
        }
    }
}

rewind_data["37503"] = {avatar = {scene_id = 1005, pos = "PlayerPos"}}
rewind_data["37504"] = {}
rewind_data["37505"] = {}
rewind_data["37506"] = {}
rewind_data["37507"] = {}
quest_data = {}

quest_data["37501"] = {
    npcs = {
        {
            id = 1001,
            alias = "Wendy",
            script = "Actor/Quest/Q301/Wendy301",
            pos = "Q374WendyTemp",
            data_index = 0,
            scene_id = 1008,
            room_id = 1
        },
        {
            id = 1164,
            alias = "Guard",
            script = "Actor/Quest/Q375/Guard",
            pos = "Q374Guard",
            data_index = 0,
            scene_id = 1008,
            room_id = 1
        }
    }
}

quest_data["37503"] = {
    gadgets = {{id = 70300040, pos = "Harp", alias = "Harp", scene_id = 1005, room_id = 1}},
    npcs = {
        {
            id = 1131,
            alias = "SneakAI1",
            script = "Actor/Npc/SneakAI",
            pos = "AI1Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1132,
            alias = "SneakAI2",
            script = "Actor/Npc/SneakAI",
            pos = "AI2Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1133,
            alias = "SneakAI3",
            script = "Actor/Npc/SneakAI",
            pos = "AI3Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1134,
            alias = "SneakAI4",
            script = "Actor/Npc/SneakAI",
            pos = "AI4Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1135,
            alias = "SneakAI5",
            script = "Actor/Npc/SneakAI",
            pos = "AI5Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1136,
            alias = "SneakAI6",
            script = "Actor/Npc/SneakAI",
            pos = "AI6Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1137,
            alias = "SneakAI7",
            script = "Actor/Npc/SneakAI",
            pos = "AI7Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1138,
            alias = "SneakAI8",
            script = "Actor/Npc/SneakAI",
            pos = "AI8Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1139,
            alias = "SneakAI9",
            script = "Actor/Npc/SneakAI",
            pos = "AI9Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1140,
            alias = "SneakAI10",
            script = "Actor/Npc/SneakAI",
            pos = "AI10Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1141,
            alias = "SneakAI11",
            script = "Actor/Npc/SneakAI",
            pos = "AI11Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1142,
            alias = "SneakAI12",
            script = "Actor/Npc/SneakAI",
            pos = "AI12Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1143,
            alias = "SneakAI13",
            script = "Actor/Npc/SneakAI",
            pos = "AI13Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        },
        {
            id = 1144,
            alias = "SneakAI14",
            script = "Actor/Npc/SneakAI",
            pos = "AI14Pos1",
            data_index = 0,
            scene_id = 1005,
            room_id = 1
        }
    }
}

quest_data["37504"] = {transmit_points = {{point_id = 1, scene_id = 1008, pos = "Q375Fail"}}}
quest_data["37506"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q372Venti"}}}
