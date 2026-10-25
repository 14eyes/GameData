main_id = 73803
local tbl = {}
local n = 7380307
local v = 7380301
local n2 = 7380302
local n3 = 7380303
local n4 = 7380304
local n5 = 7380305
tbl[1] = 7380306
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133302677"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7380301"] = {},
    ["7380302"] = {},
    ["7380303"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "Q7380302_N20657_2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "Q7380303_N20658",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4042,
                alias = "Npc4042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2301501_N4042",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7380304"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "Q7380302_N20657_2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4042,
                alias = "Npc4042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2301501_N4042",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7380305"] = {},
    ["7380306"] = {},
    ["7380307"] = {}
}

quest_data = {
    ["7380301"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "Q7380301_N20657_2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "Q7380301_N20658_2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7380302"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "Q7380302_N20657_2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "Q7380302_N20658_2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4042,
                alias = "Npc4042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2301501_N4042",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7380303"] = {
        npcs = {
            {
                id = 4060,
                alias = "Npc4060",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7380303_N4060",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7380304"] = {
        npcs = {
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "Q7380302_N20658_2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7380305"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "Q7380305_N20657",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "Q7380305_N20658",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12700,
                alias = "Npc12700",
                script = "Actor/Npc/TempNPC",
                pos = "Q2301701_N12700",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7380306"] = {},
    ["7380307"] = {}
}
