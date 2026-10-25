return {
    MainID = 19120,
    ActorAlias = "19120",
    SubIDs = {q1912001 = 1912001, q1912002 = 1912002, q1912003 = 1912003},
    Npcs = {
        Coop_TohmaData = {
            id = 503,
            alias = "Coop_Tohma",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        RoutePointsData = {
            sceneData:GetDummyPoint(3, "Q1912002route1").pos,
            sceneData:GetDummyPoint(3, "Q1912002route2").pos,
            sceneData:GetDummyPoint(3, "Q1912002route3").pos,
            sceneData:GetDummyPoint(3, "Q1912002route4").pos,
            sceneData:GetDummyPoint(3, "Q1912002route5").pos,
            sceneData:GetDummyPoint(3, "Q1912002route6").pos
        }
    }
}
