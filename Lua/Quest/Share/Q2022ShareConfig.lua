main_id = 2022
local tbl = {}
local n = 202202
local v = 202203
tbl[1] = 202201
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["202201"] = {}, ["202202"] = {}, ["202203"] = {}}

quest_data = {
    ["202201"] = {
        npcs = {
            {
                id = 12091,
                alias = "Npc12091",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12092,
                alias = "Npc12092",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12093,
                alias = "Npc12093",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12094,
                alias = "Npc12094",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass4",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20457,
                alias = "Npc20457",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass5",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 20458,
                alias = "Npc20458",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass6",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 20459,
                alias = "Npc20459",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass7",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 20460,
                alias = "Npc20460",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass8",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 20469,
                alias = "Npc20469",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass9",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 20470,
                alias = "Npc20470",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass10",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            },
            {
                id = 20471,
                alias = "Npc20471",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass11",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            },
            {
                id = 20472,
                alias = "Npc20472",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass12",
                scene_id = 3,
                room_id = 0,
                data_index = 12
            },
            {
                id = 20473,
                alias = "Npc20473",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass13",
                scene_id = 3,
                room_id = 0,
                data_index = 13
            },
            {
                id = 20474,
                alias = "Npc20474",
                script = "Actor/Npc/TempNPC",
                pos = "Q202201mass14",
                scene_id = 3,
                room_id = 0,
                data_index = 14
            }
        }
    },
    ["202202"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q202201trans"}}},
    ["202203"] = {}
}
