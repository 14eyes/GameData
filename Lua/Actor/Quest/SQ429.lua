require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest429 = class("Quest429", QuestActorProxy)
Quest429.defaultAlias = "Quest429"
local Q429ClientConfig = require("Quest/Client/Q429ClientConfig")

local tbl = {}
local enemyWave1 = Q429ClientConfig.EnemyWave1
local enemyWave2 = Q429ClientConfig.EnemyWave2
local enemyWave3 = Q429ClientConfig.EnemyWave3
local enemyWave4 = Q429ClientConfig.EnemyWave4
local enemyWave5 = Q429ClientConfig.EnemyWave5
local enemyWave6 = Q429ClientConfig.EnemyWave6
local enemyWave7 = Q429ClientConfig.EnemyWave7
tbl[1] = enemyWave1
tbl[2] = enemyWave2
tbl[3] = enemyWave3
tbl[4] = enemyWave4
tbl[5] = enemyWave5
tbl[6] = enemyWave6
tbl[7] = enemyWave7
local subIDs = Q429ClientConfig.SubIDs

function Quest429:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["42901"] = self.OnSubStart42901
    self.subStartHandlers["42902"] = self.OnSubStart42902
    self.subStartHandlers["42903"] = self.OnSubStart42903
    self.subStartHandlers["42904"] = self.OnSubStart42904
    self.subStartHandlers["42905"] = self.OnSubStart42905
end

function Quest429:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["42901"] = self.OnSubFinish42901
    self.subFinishHandlers["42902"] = self.OnSubFinish42902
    self.subFinishHandlers["42903"] = self.OnSubFinish42903
    self.subFinishHandlers["42904"] = self.OnSubFinish42904
    self.subFinishHandlers["42905"] = self.OnSubFinish42905
end

function Quest429:EnemyWaveStart()
    if Q429ClientConfig.CurrentWave <= Q429ClientConfig.WaveNum then
        local v = tbl[Q429ClientConfig.CurrentWave]
        for i = 1, #v do
            self:SpawnMonster(v[i].ConfigID, v[i].Level, Q429ClientConfig.EnemyPos[i], nil, nil, nil, "Enemy" .. tostring(Q429ClientConfig.CurrentWave) .. tostring(i))
            print("*******Enemy*******" .. tostring(Q429ClientConfig.CurrentWave) .. tostring(i))
        end

        self:ShowMessage("\230\150\176\231\154\132\230\149\140\228\186\186\229\183\178\231\187\143\229\135\186\231\142\176" .. tostring(Q429ClientConfig.CurrentWave))
        Q429ClientConfig.CurrentWave = Q429ClientConfig.CurrentWave + 1
        self:CallDelay(Q429ClientConfig.WavePeriod, self.EnemyWaveStart)
    end
end

function Quest429:CoinGrow()
    if Q429ClientConfig.GameOn == true then
        self:CountNumUIStart()
        Q429ClientConfig.CurrentCoin = Q429ClientConfig.CurrentCoin + 2
        self:CountNumUIUpdate(Q429ClientConfig.CurrentCoin)
        self:CallDelay(1, self.CoinGrow)
    end
end

function Quest429:GameDestroy()
    for i = 1, Q429ClientConfig.WaveNum do
        for j = 1, #tbl[i] do
            self:UnSpawn("Enemy" .. tostring(i) .. tostring(j))
        end
    end

    for i = 1, Q429ClientConfig.FriendlyNum do
        self:UnSpawn("Friendly" .. tostring(i))
    end

    self:UnSpawn("Box")
    self:CallDelay(3, self.CountNumUITerminate)
    self:UnCallFunc(self.EnemyWaveStart)
    self:UnCallFunc(self.CoinGrow)
    Q429ClientConfig.GameOn = false
end

function Quest429:CountDown()
    if Q429ClientConfig.Finish == false then
        local actor = actorMgr:GetActor(Q429ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(true, 42902)
            actor:FinishQuestID(true, 42903)
        end
    end

    self:GameDestroy()
end

function Quest429:OnSubStart42901(arg1)
    print("42901 start: Spawn Judge npc")
    actorMgr:CreateActorWithPos(Q429ClientConfig.AutoChessJudgeData.alias, Q429ClientConfig.AutoChessJudgeData.metaPath, Q429ClientConfig.AutoChessJudgeData.configID, 0, Q429ClientConfig.AutoChessJudgeData.bornPos, Q429ClientConfig.AutoChessJudgeData.bornDir, true, false, 3)
    self:GameDestroy()
end

function Quest429:OnSubStart42902(arg1)
    if Q429ClientConfig.GameOn == false then
        self:GameDestroy()
        Q429ClientConfig.CurrentCoin = Q429ClientConfig.InitialCoin
        Q429ClientConfig.CurrentWave = 1
        Q429ClientConfig.Finish = false
        Q429ClientConfig.GameOn = true
        Q429ClientConfig.FriendlyNum = 0
        self:SpawnGadget(Q429ClientConfig.BoxID, Q429ClientConfig.BoxPos, Q429ClientConfig.BoxDir, "Box", 3)
        self:EnemyWaveStart()
        self:CountNumUIStart()
        self:CountNumUIUpdate(Q429ClientConfig.CurrentCoin)
        self:CountDownUIStart(Q429ClientConfig.MatchTime + 10, 10, 3)
        self:CoinGrow()
        self:CallDelay(Q429ClientConfig.MatchTime + 14, self.CountDown)
    end
end

function Quest429:OnSubFinish42903(arg1)
    print("OnFinish42903:Monster killed")
    Q429ClientConfig.CurrentCoin = Q429ClientConfig.CurrentCoin + Q429ClientConfig.KillCoin
    self:CountNumUIUpdate(Q429ClientConfig.CurrentCoin)
    self:ShowMessage("\229\135\187\233\128\128\229\165\150\229\138\177\239\188\140\228\189\153\233\162\157 + " .. tostring(Q429ClientConfig.KillCoin) .. "\229\189\147\229\137\141\228\189\153\233\162\157\239\188\154" .. tostring(Q429ClientConfig.CurrentCoin))
end

function Quest429:OnSubStart42904(arg1)
    print("OnStart42904:Success")
    self:UnCallFunc(self.CountDown)
    self:CountDownUITerminate()
    Q429ClientConfig.Finish = true
    self:GameDestroy()
end

function Quest429:OnSubStart42905(arg1)
    print("42905 start: Failed")
end

function Quest429:InvokeOnInteraction(arg1)
    arg1 = tonumber(arg1)
    print("*****INVOKE*****429*****" .. tostring(arg1) .. "*********")
    print("*****GAMEON*****429*****" .. tostring(Q429ClientConfig.GameOn))
    print("*****COIN*****429*****" .. tostring(Q429ClientConfig.CurrentCoin) .. "***" .. tostring(Q429ClientConfig.FriendlyData[arg1].Cost))
    if Q429ClientConfig.CurrentCoin >= Q429ClientConfig.FriendlyData[arg1].Cost then
        if Q429ClientConfig.GameOn == true then
            Q429ClientConfig.CurrentCoin = Q429ClientConfig.CurrentCoin - Q429ClientConfig.FriendlyData[arg1].Cost
            self:CountNumUIUpdate(Q429ClientConfig.CurrentCoin)
            Q429ClientConfig.FriendlyNum = Q429ClientConfig.FriendlyNum + 1
            self:SpawnMonster(Q429ClientConfig.FriendlyData[arg1].ConfigID, Q429ClientConfig.FriendlyData[arg1].Level, Q429ClientConfig.FriendlyPos, nil, nil, nil, "Friendly" .. tostring(Q429ClientConfig.FriendlyNum))
            print("*******Friend*******" .. tostring(Q429ClientConfig.FriendlyNum))
            self:ShowMessage("\230\180\190\233\129\163\230\136\144\229\138\159\239\188\140\229\189\147\229\137\141\228\189\153\233\162\157\239\188\154" .. tostring(Q429ClientConfig.CurrentCoin))
        end
    else
        print("*******429******Friend*******Failed")
        self:ShowMessage("\228\189\153\233\162\157\228\184\141\232\182\179\239\188\140\230\180\190\233\129\163\229\164\177\232\180\165\239\188\155\229\189\147\229\137\141\228\189\153\233\162\157\239\188\154" .. tostring(Q429ClientConfig.CurrentCoin))
    end
end

function Quest429:Start() end
function Quest429:OnDestroy() end
return Quest429
