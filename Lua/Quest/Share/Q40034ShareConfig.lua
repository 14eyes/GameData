main_id = 40034
local tbl = {}
local n = 4003401
local v = 4003402
local n2 = 4003403
local n3 = 4003404
local n4 = 4003405
local n5 = 4003406
local n6 = 4003407
local n7 = 4003411
local n8 = 4003408
local n9 = 4003412
local n10 = 4003409
local n11 = 4003410
tbl[1] = 4003413
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
tbl[13] = n11
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133212597"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133212600"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4003401"] = {},
    ["4003402"] = {},
    ["4003403"] = {
        npcs = {
            {
                id = 12284,
                alias = "Npc12284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003402_N12284_321200205",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4003404"] = {
        npcs = {
            {
                id = 12284,
                alias = "Npc12284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003402_N12284_321200205",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4003405"] = {},
    ["4003406"] = {},
    ["4003407"] = {},
    ["4003408"] = {},
    ["4003409"] = {},
    ["4003410"] = {},
    ["4003411"] = {},
    ["4003412"] = {},
    ["4003413"] = {}
}

quest_data = {
    ["4003401"] = {},
    ["4003402"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40034Longer01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12284,
                alias = "Npc12284",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4003402_N12284_321200205",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4003403"] = {},
    ["4003404"] = {},
    ["4003405"] = {transmit_points = {{point_id = 4003406, scene_id = 3, pos = "Q40034Player03"}}},
    ["4003406"] = {
        npcs = {
            {
                id = 12287,
                alias = "Npc12287",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40034SamuraiDog01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 4003406, scene_id = 3, pos = "Q40034Player03"}}
    },
    ["4003407"] = {
        npcs = {
            {
                id = 12287,
                alias = "Npc12287",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40034SamuraiDog01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003408"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40034DungeonLonger01",
                scene_id = 46101,
                room_id = 1,
                data_index = 1
            },
            {
                id = 12287,
                alias = "Npc12287",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40034DungeonSamuraiDog01",
                scene_id = 46101,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4003409"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40034DungeonLonger01",
                scene_id = 46101,
                room_id = 1,
                data_index = 1
            },
            {
                id = 12287,
                alias = "Npc12287",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40034DungeonSamuraiDog01",
                scene_id = 46101,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4003410"] = {
        npcs = {
            {
                id = 12287,
                alias = "Npc12287",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40034SamuraiDog03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003411"] = {
        npcs = {
            {
                id = 12287,
                alias = "Npc12287",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q40034SamuraiDog02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4003412"] = {},
    ["4003413"] = {}
}
