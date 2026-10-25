main_id = 10500
local tbl = {}
local n = 1050001
local v = 1050002
local n2 = 1050003
local n3 = 1050004
local n4 = 1050005
local n5 = 1050008
local n6 = 1050006
tbl[1] = 1050007
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1050001"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q1050001Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1050002"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q1050001Mona",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1050003"] = {},
    ["1050004"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10500MonaSpawn2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 243001,
                alias = "Npc243001",
                script = "Actor/Npc/TempNPC",
                pos = "Q1050002Zhulaoban",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1050005"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10500MonaSpawn2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 243001,
                alias = "Npc243001",
                script = "Actor/Npc/TempNPC",
                pos = "Q1050002Zhulaoban",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1050006"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10500MonaSpawn2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 243001,
                alias = "Npc243001",
                script = "Actor/Npc/TempNPC",
                pos = "Q1050002Zhulaoban",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1050007"] = {},
    ["1050008"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10500MonaSpawn2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 243001,
                alias = "Npc243001",
                script = "Actor/Npc/TempNPC",
                pos = "Q1050002Zhulaoban",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

quest_data = {
    ["1050001"] = {},
    ["1050002"] = {},
    ["1050003"] = {
        npcs = {
            {
                id = 243001,
                alias = "Npc243001",
                script = "Actor/Npc/TempNPC",
                pos = "Q1050002Zhulaoban",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1050004"] = {},
    ["1050005"] = {},
    ["1050006"] = {},
    ["1050007"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10500MonaSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1050008"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q10500SlimeSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1050008Avatar"}}
    }
}
