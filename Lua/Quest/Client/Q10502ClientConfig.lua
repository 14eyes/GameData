return {
    MainID = 10502,
    ActorAlias = "10502",
    SubIDs = {
        q1050201 = 1050201,
        q1050202 = 1050202,
        q1050203 = 1050203,
        q1050204 = 1050204,
        q1050205 = 1050205,
        q1050206 = 1050206,
        q1050207 = 1050207,
        q1050212 = 1050212,
        q1050213 = 1050213,
        q1050208 = 1050208,
        q1050209 = 1050209,
        q1050210 = 1050210,
        q1050211 = 1050211
    },
    Npcs = {
        Npc10095Data1 = {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10502MonaSpawn")
        },
        Npc10095Data2 = {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10502MonaSpawn3")
        },
        Npc10090Data = {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10502KleeSpawn")
        },
        Npc10111Data = {
            id = 10111,
            alias = "Npc10111",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10502Fengqidi")
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1606Data = {
            id = 1606,
            alias = "Npc1606",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = sceneData:GetDummyPoint(3, "Q1050206Gede")
        },
        Npc10095Data3 = {
            id = 10095,
            alias = "Npc10095",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q10502MonaSpawn2")
        }
    },
    Gadgets = {
        Box = {id = 70710114, alias = "Q10502Box", point = sceneData:GetDummyPoint(3, "Q10502Box")},
        Diary = {id = 70710165, alias = "Q10502Diary", point = sceneData:GetDummyPoint(3, "Q10502Diary")},
        GeneralBook = {
            id = 70710136,
            alias = "Q10502GeneralBook",
            point = sceneData:GetDummyPoint(0, "Q10502GeneralBook")
        },
        GeneralBook2 = {
            id = 70710136,
            alias = "Q10502GeneralBook2",
            point = sceneData:GetDummyPoint(3, "Q10502GeneralBook2")
        },
        GeneralBook3 = {
            id = 70710136,
            alias = "Q10502GeneralBook3",
            point = sceneData:GetDummyPoint(3, "Q10502GeneralBook3")
        },
        Ruler = {id = 70710139, alias = "Q10502Ruler", point = sceneData:GetDummyPoint(3, "Q10502Ruler")},
        Ruler2 = {id = 70710139, alias = "Q10502Ruler2", point = sceneData:GetDummyPoint(3, "Q10502Ruler2")},
        InkBottle = {id = 70710138, alias = "Q10502InkBottle", point = sceneData:GetDummyPoint(3, "Q10502InkBottle")},
        InkBottle2 = {id = 70710138, alias = "Q10502InkBottle2", point = sceneData:GetDummyPoint(3, "Q10502InkBottle2")},
        RolledMap = {id = 70710140, alias = "Q10502RolledMap", point = sceneData:GetDummyPoint(3, "Q10502RolledMap")},
        RolledMap2 = {id = 70710140, alias = "Q10502RolledMap2", point = sceneData:GetDummyPoint(3, "Q10502RolledMap2")},
        OpenBook = {id = 70710115, alias = "Q10502OpenBook", point = sceneData:GetDummyPoint(3, "Q10502OpenBook")},
        Magnifier = {id = 70710137, alias = "Q10502Magnifier", point = sceneData:GetDummyPoint(3, "Q10502Magnifier")},
        Magnifier2 = {id = 70710137, alias = "Q10502Magnifier2", point = sceneData:GetDummyPoint(3, "Q10502Magnifier2")}
    },
    Datas = {
        Q10502Trigger_ = {
            alias = "Q10502Trigger",
            script = "Actor/Gadget/Q10502Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q10502MonaSpawn2")
        }
    }
}
