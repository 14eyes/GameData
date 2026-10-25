return {
    MainID = 429,
    ActorAlias = "429",
    SubIDs = {q42901 = 42901, q42902 = 42902, q42903 = 42903, q42904 = 42904, q42905 = 42905},
    MatchTime = 150,
    WavePeriod = 20,
    CurrentWave = 1,
    WaveNum = 7,
    Finish = false,
    FriendlyNum = 0,
    InitialCoin = 20,
    CurrentCoin = 0,
    KillCoin = 15,
    GameOn = false,
    AutoChessJudgeData = {
        alias = "AutoChessJudge",
        metaPath = "Actor/Npc/AutoChessJudge",
        configID = 1180,
        bornPos = sceneData:GetDummyPoint(3, "Q429Judge").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q429Judge").rot
    },
    BoxID = 70300069,
    BoxPos = sceneData:GetDummyPoint(3, "Q429Origin").pos,
    BoxDir = sceneData:GetDummyPoint(3, "Q429Origin").rot,
    EnemyPos = {
        {
            x = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.x,
            y = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.y,
            z = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.z
        },
        {
            x = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.x + 1,
            y = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.y,
            z = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.z
        },
        {
            x = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.x - 1,
            y = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.y,
            z = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.z
        },
        {
            x = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.x,
            y = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.y,
            z = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.z + 1
        },
        {
            x = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.x,
            y = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.y,
            z = sceneData:GetDummyPoint(3, "Q429EnemySpawn").pos.z - 1
        }
    },
    EnemyDir = sceneData:GetDummyPoint(3, "Q429EnemySpawn").rot,
    FriendlyPos = sceneData:GetDummyPoint(3, "Q429FriendlySpawn").pos,
    FriendlyDir = sceneData:GetDummyPoint(3, "Q429FriendlySpawn").rot,
    FriendlyData = {
        {ConfigID = 20040001, Level = 1, Cost = 8},
        {ConfigID = 20040002, Level = 1, Cost = 30},
        {ConfigID = 20040003, Level = 1, Cost = 8},
        {ConfigID = 20040004, Level = 1, Cost = 30},
        {ConfigID = 20040005, Level = 1, Cost = 8},
        {ConfigID = 20040006, Level = 1, Cost = 30},
        {ConfigID = 20040007, Level = 1, Cost = 15},
        {ConfigID = 20040008, Level = 1, Cost = 50}
    },
    EnemyWave1 = {{ConfigID = 21010301, Level = 1}},
    EnemyWave2 = {{ConfigID = 21010901, Level = 1}},
    EnemyWave3 = {{ConfigID = 21010301, Level = 1}, {ConfigID = 21010301, Level = 1}},
    EnemyWave4 = {{ConfigID = 21010901, Level = 2}, {ConfigID = 21010901, Level = 2}},
    EnemyWave5 = {
        {ConfigID = 21010301, Level = 2},
        {ConfigID = 21010901, Level = 2},
        {ConfigID = 21010901, Level = 2}
    },
    EnemyWave6 = {
        {ConfigID = 21010301, Level = 3},
        {ConfigID = 21010301, Level = 3},
        {ConfigID = 21010901, Level = 3},
        {ConfigID = 21010901, Level = 3}
    },
    EnemyWave7 = {{ConfigID = 21020201, Level = 5}}
}
