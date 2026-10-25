main_id = 11020
local tbl = {}
local n = 1102002
local v = 1102003
tbl[1] = 1102001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1102001"] = {},
    ["1102002"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020ZL1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10303,
                alias = "Npc10303",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020Girl1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10308,
                alias = "Npc10308",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020NPC2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10309,
                alias = "Npc10309",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020NPC1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1102003"] = {}
}

quest_data = {
    ["1102001"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020ZL1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10308,
                alias = "Npc10308",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020NPC2",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10309,
                alias = "Npc10309",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020NPC1",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 10303,
                alias = "Npc10303",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020Girl1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1102002"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020ZL1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10308,
                alias = "Npc10308",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020NPC2",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10309,
                alias = "Npc10309",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020NPC1",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 10303,
                alias = "Npc10303",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020Girl1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1102003"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020ZL2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10303,
                alias = "Npc10303",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020Girl2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10302,
                alias = "Npc10302",
                script = "Actor/Npc/TempNPC",
                pos = "Q11020Yuren2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
