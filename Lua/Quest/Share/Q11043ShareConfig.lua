main_id = 11043
local tbl = {}
local n = 1104302
local v = 1104303
local n2 = 1104305
tbl[1] = 1104301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1104301"] = {}, ["1104302"] = {}, ["1104303"] = {}}

quest_data = {
    ["1104301"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q11043Albedo1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 158701,
                alias = "Npc158701",
                script = "Actor/Npc/TempNPC",
                pos = "Q11042DMWS1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1104302"] = {
        npcs = {
            {
                id = 158701,
                alias = "Npc158701",
                script = "Actor/Npc/TempNPC",
                pos = "Q11042DMWS1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q11043Albedo2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 71700097,
                alias = "Gadget71700097",
                pos = "Q11043Albedo2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q11043Avatar1"}}
    },
    ["1104305"] = {
        npcs = {
            {
                id = 158701,
                alias = "Npc158701",
                script = "Actor/Npc/TempNPC",
                pos = "Q11042DMWS1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q11043Albedo2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1104303"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q11043Albedo2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 158701,
                alias = "Npc158701",
                script = "Actor/Npc/TempNPC",
                pos = "Q11042DMWS1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1104304"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q11043Albedo1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 158701,
                alias = "Npc158701",
                script = "Actor/Npc/TempNPC",
                pos = "Q11042DMWS1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}
