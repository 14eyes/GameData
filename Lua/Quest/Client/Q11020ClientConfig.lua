return {
    MainID = 11020,
    ActorAlias = "11020",
    SubIDs = {q1102001 = 1102001, q1102002 = 1102002, q1102003 = 1102003},
    Npcs = {
        Npc10232Data = {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11020ZL1")
        },
        Npc10303Data = {
            id = 10303,
            alias = "Npc10303",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11020Girl2")
        },
        Npc10302Data = {
            id = 10302,
            alias = "Npc10302",
            script = "Actor/Npc/TempNPC",
            point = sceneData:GetDummyPoint(3, "Q11020Yuren2")
        },
        Npc10308Data = {
            id = 10308,
            alias = "Npc10308",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10309Data = {
            id = 10309,
            alias = "Npc10309",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q11020SitTrigger_ = {
            alias = "Q11020SitTrigger",
            script = "Actor/Gadget/Q11020SitTrigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11020ZL1")
        }
    }
}
