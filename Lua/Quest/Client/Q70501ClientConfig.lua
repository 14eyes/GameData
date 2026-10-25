return {
    MainID = 70501,
    ActorAlias = "70501",
    SubIDs = {
        q7050117 = 7050117,
        q7050101 = 7050101,
        q7050102 = 7050102,
        q7050103 = 7050103,
        q7050104 = 7050104,
        q7050105 = 7050105,
        q7050106 = 7050106,
        q7050114 = 7050114,
        q7050107 = 7050107,
        q7050108 = 7050108,
        q7050116 = 7050116,
        q7050113 = 7050113,
        q7050111 = 7050111,
        q7050109 = 7050109,
        q7050112 = 7050112,
        q7050110 = 7050110,
        q7050115 = 7050115
    },
    Npcs = {
        Npc10258Data = {
            id = 10258,
            alias = "Npc10258",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20395Data = {
            id = 20395,
            alias = "Npc20395",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20397Data = {
            id = 20397,
            alias = "Npc20397",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        TextmapId = {"QUEST_Message_Q7050106"},
        TransmitPoint = {point_id = 1, scene_id = 3, pos = "Q70501player"},
        TransmitPoint2 = {point_id = 2, scene_id = 3, pos = "Q70501failPos"},
        Q7050105Trigger = {
            alias = "Q7050105Trigger",
            script = "Actor/Gadget/Q7050105Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q70501player")
        }
    }
}
