main_id = 11022
local tbl = {}
local n = 1102202
local v = 1102203
local n2 = 1102207
local n3 = 1102204
local n4 = 1102205
local n5 = 1102206
tbl[1] = 1102201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {}

rewind_data["1102203"] = {
    gadgets = {
        {
            id = 70710216,
            alias = "Q11022VisualPuzzle01",
            pos = "Q11022Puzzle",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

quest_data = {
    ["1102201"] = {
        npcs = {
            {
                id = 10303,
                alias = "Npc10303",
                script = "Actor/Npc/TempNPC",
                pos = "Q11021Gril4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10302,
                alias = "Npc10302",
                script = "Actor/Npc/TempNPC",
                pos = "Q11021Yuren4",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1102202"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11022ZL1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10303,
                alias = "Npc10303",
                script = "Actor/Npc/TempNPC",
                pos = "Q11022Girl1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10302,
                alias = "Npc10302",
                script = "Actor/Npc/TempNPC",
                pos = "Q11022Yuren1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1102208"] = {
        gadgets = {
            {id = 71700097, alias = "Gad2", pos = "Q11022Gad2", scene_id = 3, room_id = 0, data_index = 1},
            {
                id = 70710216,
                alias = "Q11022VisualPuzzle01",
                pos = "Q11022Puzzle",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {id = 70710058, pos = "Q11022VP", alias = "GuidePuzzle", scene_id = 3}
        }
    },
    ["1102203"] = {
        gadgets = {
            {id = 71700097, alias = "Gad2", pos = "Q11022Gad2", scene_id = 3, room_id = 0, data_index = 1},
            {id = 70710058, pos = "Q11022VP", alias = "GuidePuzzle", scene_id = 3}
        }
    },
    ["1102204"] = {
        gadgets = {{id = 71700097, alias = "Gad3", pos = "Q11022Gad3", scene_id = 3, room_id = 0, data_index = 1}}
    },
    ["1102205"] = {},
    ["1102206"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11022ZL3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10303,
                alias = "Npc10303",
                script = "Actor/Npc/TempNPC",
                pos = "Q11022Girl3",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10302,
                alias = "Npc10302",
                script = "Actor/Npc/TempNPC",
                pos = "Q11022Yuren3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1102207"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q1102207ZL",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}
