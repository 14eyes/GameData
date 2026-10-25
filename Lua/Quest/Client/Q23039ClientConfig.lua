return {
    MainID = 23039,
    ActorAlias = "23039",
    SubIDs = {q2303901 = 2303901, q2303902 = 2303902, q2303903 = 2303903, q2303904 = 2303904, q2303905 = 2303905},
    Npcs = {
        Npc4422Data = {
            id = 4422,
            alias = "Npc4422",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4423Data = {
            id = 4423,
            alias = "Npc4423",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorTable = {
            {dialogID = 230399901, audioEvtName = "", duration = 2},
            {dialogID = 230399902, audioEvtName = "", duration = 1.5}
        },
        Funny = {{dialogID = 230399903, audioEvtName = "", duration = 3}},
        Paimon = {{dialogID = 230399904, audioEvtName = "", duration = 3}},
        RoutePointsData = {
            sceneData:GetDummyPoint(3, "Q23039_CheckPoint01").pos,
            sceneData:GetDummyPoint(3, "Q23039_CheckPoint02").pos,
            sceneData:GetDummyPoint(3, "Q23039_CheckPoint03").pos,
            sceneData:GetDummyPoint(3, "Q23039_Middle").pos,
            sceneData:GetDummyPoint(3, "Q23039_RacingEnd").pos
        }
    }
}
