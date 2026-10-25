main_id = 24013
local tbl = {}
local n = 2401302
local v = 2401305
local n2 = 2401303
local n3 = 2401306
local n4 = 2401304
tbl[1] = 2401301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133401372"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2401301"}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "133401629,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2401301"] = {},
    ["2401302"] = {
        npcs = {
            {
                id = 5084,
                alias = "Npc5084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401301_N5084",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401303"] = {
        npcs = {
            {
                id = 5084,
                alias = "Npc5084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401301_N5084",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401304"] = {
        npcs = {
            {
                id = 5084,
                alias = "Npc5084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401301_N5084",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4655:3516.021,421.430,4598.988,0.000,194.492,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2401305"] = {
        npcs = {
            {
                id = 5084,
                alias = "Npc5084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401301_N5084",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4654:3516.221,421.430,4600.882,0.000,348.680,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2401306"] = {
        npcs = {
            {
                id = 5084,
                alias = "Npc5084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401301_N5084",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4655:3516.021,421.430,4598.988,0.000,194.492,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13357,
                alias = "Npc13357",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4656:3515.813,422.576,4601.602,0.000,336.656,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

quest_data = {
    ["2401301"] = {
        npcs = {
            {
                id = 5084,
                alias = "Npc5084",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2401301_N5084",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401302"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4654:3516.221,421.430,4600.882,0.000,348.680,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2401303"] = {
        npcs = {
            {
                id = 5053,
                alias = "Npc5053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4655:3516.021,421.430,4598.988,0.000,194.492,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13357,
                alias = "Npc13357",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4656:3515.813,422.576,4601.602,0.000,336.656,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2401304"] = {},
    ["2401305"] = {},
    ["2401306"] = {}
}
