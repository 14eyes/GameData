main_id = 74028
local tbl = {}
local n = 7402801
local v = 7402802
local n2 = 7402809
local n3 = 7402803
tbl[1] = 7402807
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7402801"] = {},
    ["7402802"] = {
        npcs = {
            {
                id = 21033,
                alias = "Npc21033",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4615:4007.939,547.260,4968.774,0.000,183.652,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402803"] = {},
    ["7402807"] = {},
    ["7402809"] = {
        npcs = {
            {
                id = 21033,
                alias = "Npc21033",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4615:4007.939,547.260,4968.774,0.000,183.652,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21172,
                alias = "Npc21172",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4617:3936.932,564.867,5014.436,0.000,348.380,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7402801"] = {
        npcs = {
            {
                id = 21033,
                alias = "Npc21033",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4615:4007.939,547.260,4968.774,0.000,183.652,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402802"] = {
        npcs = {
            {
                id = 21034,
                alias = "Npc21034",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4616:3936.586,565.609,5016.726,0.000,167.072,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21172,
                alias = "Npc21172",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4617:3936.932,564.867,5014.436,0.000,348.380,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5203,
                alias = "Npc5203",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4616:3936.586,565.609,5016.726,0.000,167.072,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7402803"] = {
        npcs = {
            {
                id = 21048,
                alias = "Npc21048",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4616:3936.586,565.609,5016.726,0.000,167.072,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402807"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_4665:4947.822,442.141,4677.829,0.000,285.367,0.000]"}}
    },
    ["7402809"] = {
        npcs = {
            {
                id = 20973,
                alias = "Npc20973",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6642:3987.686,534.169,4936.513,0.000,270.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20980,
                alias = "Npc20980",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6643:3987.337,534.446,4940.471,0.000,260.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20981,
                alias = "Npc20981",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6644:3986.879,534.583,4941.596,0.000,20.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}
