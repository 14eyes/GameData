main_id = 13028
local tbl = {}
local n = 1302802
tbl[1] = 1302801
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1302801"] = {}, ["1302802"] = {}}

quest_data = {
    ["1302801"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q13019Monster1Met",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13163,
                alias = "Npc13163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q13019Met1Child2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13164,
                alias = "Npc13164",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q13019Met1Child1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_330201467:575.528,283.696,2509.856,0.000,95.046,0.000]"}}
    },
    ["1302802"] = {
        npcs = {
            {
                id = 1056,
                alias = "Npc1056",
                script = "Actor/Npc/TempNPC",
                pos = "Q13019Mon2FlowerPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13163,
                alias = "Npc13163",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q13019Met1Child2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13164,
                alias = "Npc13164",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q13019Met1Child1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
