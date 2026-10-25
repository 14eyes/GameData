main_id = 40054
local tbl = {}
local n = 4005402
local v = 4005403
local n2 = 4005404
tbl[1] = 4005401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101725"}}}}
rewind_data = {["4005401"] = {}, ["4005402"] = {}, ["4005403"] = {}}

quest_data = {
    ["4005401"] = {},
    ["4005402"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005402_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3000,
                alias = "Npc3000",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005402_N3000",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3190,
                alias = "Npc3190",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005402_N3190",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3030,
                alias = "Npc3030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005402_N3030",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 30139,
                alias = "Npc30139",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005402_N30139",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3029,
                alias = "Npc3029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4005402_N3029",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["4005403"] = {},
    ["4005404"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005404_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1047,
                alias = "Npc1047",
                script = "Actor/Npc/TempNPC",
                pos = "Q4005404_N1047",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
