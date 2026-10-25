main_id = 11111
local tbl = {}
local n = 1111102
local v = 1111104
local n2 = 1111105
tbl[1] = 1111101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1111101"] = {}, ["1111102"] = {}, ["1111104"] = {}, ["1111105"] = {}}

quest_data = {
    ["1111101"] = {
        npcs = {
            {
                id = 10343,
                alias = "Npc10343",
                script = "Actor/Npc/TempNPC",
                pos = "Q11111_Laomeng_Wangshengtang_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10348,
                alias = "Npc10348",
                script = "Actor/Npc/TempNPC",
                pos = "Q11110_Congzi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q11111_Hutao_Wangshengtang_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10345,
                alias = "Npc10345",
                script = "Actor/Npc/TempNPC",
                pos = "Q11110_SteerTo2_Wangshengtang_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1111102"] = {
        npcs = {
            {
                id = 10345,
                alias = "Npc10345",
                script = "Actor/Npc/TempNPC",
                pos = "Q11110_SteerTo2_Wangshengtang_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10365,
                alias = "Npc10365",
                script = "Actor/Npc/TempNPC",
                pos = "Q11111_DefensePlay_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10366,
                alias = "Npc10366",
                script = "Actor/Npc/TempNPC",
                pos = "Q11111_Hutao_Defense_Pos_1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10343,
                alias = "Npc10343",
                script = "Actor/Npc/TempNPC",
                pos = "Q11110_SteerTo1_Wangshengtang_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q11111_Hutao_Defense_Pos_1",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1111104"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q11111_Hutao_Defense_Pos_2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10343,
                alias = "Npc10343",
                script = "Actor/Npc/TempNPC",
                pos = "Q11111_Hutao_Defense_Pos_2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10345,
                alias = "Npc10345",
                script = "Actor/Npc/TempNPC",
                pos = "Q11111_Hutao_Defense_Pos_2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1111105"] = {
        npcs = {
            {
                id = 1021,
                alias = "Npc1021",
                script = "Actor/Npc/TempNPC",
                pos = "Q11111_Hutao_Defense_Pos_2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10343,
                alias = "Npc10343",
                script = "Actor/Npc/TempNPC",
                pos = "Q11111_Hutao_Defense_Pos_2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10345,
                alias = "Npc10345",
                script = "Actor/Npc/TempNPC",
                pos = "Q11111_Hutao_Defense_Pos_2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10344,
                alias = "Npc10344",
                script = "Actor/Npc/TempNPC",
                pos = "Q11111_Hutao_Defense_Pos_2",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}
