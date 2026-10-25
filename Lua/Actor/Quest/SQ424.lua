require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest424 = class("Quest424", QuestActorProxy)
Quest424.defaultAlias = "Quest424"
local Q424ClientConfig = require("Quest/Client/Q424ClientConfig")

local tbl = {}
local sneakAI1Data = Q424ClientConfig.SneakAI1Data
local sneakAI2Data = Q424ClientConfig.SneakAI2Data
local sneakAI3Data = Q424ClientConfig.SneakAI3Data
local sneakAI4Data = Q424ClientConfig.SneakAI4Data
local sneakAI5Data = Q424ClientConfig.SneakAI5Data
local sneakAI6Data = Q424ClientConfig.SneakAI6Data
local sneakAI7Data = Q424ClientConfig.SneakAI7Data
local sneakAI8Data = Q424ClientConfig.SneakAI8Data
local sneakAI9Data = Q424ClientConfig.SneakAI9Data
local sneakAI10Data = Q424ClientConfig.SneakAI10Data
tbl[1] = sneakAI1Data
tbl[2] = sneakAI2Data
tbl[3] = sneakAI3Data
tbl[4] = sneakAI4Data
tbl[5] = sneakAI5Data
tbl[6] = sneakAI6Data
tbl[7] = sneakAI7Data
tbl[8] = sneakAI8Data
tbl[9] = sneakAI9Data
tbl[10] = sneakAI10Data
local v = {}
local redDoor1Data = Q424ClientConfig.RedDoor1Data
local redDoor2Data = Q424ClientConfig.RedDoor2Data
local redDoor3Data = Q424ClientConfig.RedDoor3Data
v[1] = redDoor1Data
v[2] = redDoor2Data
v[3] = redDoor3Data
local tbl2 = {}
local blackDoor1Data = Q424ClientConfig.BlackDoor1Data
local blackDoor2Data = Q424ClientConfig.BlackDoor2Data
tbl2[1] = blackDoor1Data
tbl2[2] = blackDoor2Data
local subIDs = Q424ClientConfig.SubIDs

function Quest424:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["42401"] = self.OnSubStart42401
    self.subStartHandlers["42402"] = self.OnSubStart42402
    self.subStartHandlers["42403"] = self.OnSubStart42403
    self.subStartHandlers["42404"] = self.OnSubStart42404
    self.subStartHandlers["42405"] = self.OnSubStart42405
    self.subStartHandlers["42406"] = self.OnSubStart42406
    self.subStartHandlers["42407"] = self.OnSubStart42407
end

function Quest424:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["42401"] = self.OnSubFinish42401
    self.subFinishHandlers["42402"] = self.OnSubFinish42402
    self.subFinishHandlers["42403"] = self.OnSubFinish42403
    self.subFinishHandlers["42404"] = self.OnSubFinish42404
    self.subFinishHandlers["42405"] = self.OnSubFinish42405
    self.subFinishHandlers["42406"] = self.OnSubFinish42406
    self.subFinishHandlers["42407"] = self.OnSubFinish42407
end

function Quest424:MovePlayer()
    self:TransmitPlayer(0, M.Pos(0, 0, 5), M.Euler(0, 0, 0))
    self:ExitSneakMode()
    self:TriggerLevelAbility("Level_Remove_Switch_SneakBtn")
end

function Quest424:TreasurePrepare()
    for i = 1, #Q424ClientConfig.TreasurePos do
        actorMgr:CreateActorWithPos("SneakTreasure" .. tostring(i), "Actor/Gadget/SneakTreasure", 70300003, 0, Q424ClientConfig.TreasurePos[i], Q424ClientConfig.TreasureDir, true, false, 1013)
    end
end

function Quest424:TreasureDestroy()
    for i = 1, #Q424ClientConfig.TreasurePos do
        local actor = actorMgr:GetActor("SneakTreasure" .. tostring(i))
        if actor ~= nil then
            actor:DestroySelf()
        end
    end
end

function Quest424:SneakAIPrepare()
    for i = 1, Q424ClientConfig.SneakAINum do
        local actorWithPos = actorMgr:CreateActorWithPos(tbl[i].alias, tbl[i].metaPath, tbl[i].configID, tbl[i].dataIndex, tbl[i].bornPos, tbl[i].bornDir, true, true, 1013)
        actorWithPos.PatrolPosNum = tbl[i].PatrolPosNum
        actorWithPos.PatrolPos = tbl[i].PatrolPos
        actorWithPos.PatrolDir = tbl[i].PatrolDir
        actorWithPos.PatrolNext = 1
    end
end

function Quest424:SneakAIDestroy()
    for i = 1, Q424ClientConfig.SneakAINum do
        local actor = actorMgr:GetActor(tbl[i].alias)
        if actor ~= nil then
            actor:Destroy(false)
        end
    end
end

function Quest424:DoorPrepare()
    for i = 1, Q424ClientConfig.RedDoorNum do
        actorMgr:CreateActorWithPos(v[i].alias, v[i].metaPath, v[i].configID, v[i].dataIndex, v[i].bornPos, v[i].bornDir, true, true, 1013)
    end

    for i = 1, Q424ClientConfig.BlackDoorNum do
        actorMgr:CreateActorWithPos(tbl2[i].alias, tbl2[i].metaPath, tbl2[i].configID, tbl2[i].dataIndex, tbl2[i].bornPos, tbl2[i].bornDir, true, true, 1013)
    end
end

function Quest424:DoorDestroy()
    for i = 1, Q424ClientConfig.RedDoorNum do
        local actor = actorMgr:GetActor(v[i].alias)
        if actor ~= nil then
            actor:Destroy(false)
        end
    end

    for i = 1, Q424ClientConfig.BlackDoorNum do
        local actor = actorMgr:GetActor(tbl2[i].alias)
        if actor ~= nil then
            actor:Destroy(false)
        end
    end
end

function Quest424:ItemPrepare()
    self:SpawnItem(Q424ClientConfig.KeyID, Q424ClientConfig.KeyPos, nil, "Harp", 1013)
    self:SpawnItem(Q424ClientConfig.RedKeyID, Q424ClientConfig.RedKeyPos, nil, "RedKey", 1013)
    self:SpawnItem(Q424ClientConfig.BlackKeyID, Q424ClientConfig.BlackKeyPos, nil, "BlackKey", 1013)
end

function Quest424:ItemDestroy()
    self:UnSpawn("Harp")
    self:UnSpawn("RedKey")
    self:UnSpawn("BlackKey")
    self:UnSpawn("SoldierRedKey")
end

function Quest424:GetScore()
    if Q424ClientConfig.Score < 50 then
        Q424ClientConfig.Rank = "C"
    else
        if Q424ClientConfig.Score < 90 then
            Q424ClientConfig.Rank = "B"
        else
            if Q424ClientConfig.Score < 120 then
                Q424ClientConfig.Rank = "A"
            else
                if Q424ClientConfig.Score < 150 then
                    Q424ClientConfig.Rank = "S"
                else
                    if Q424ClientConfig.Score < 180 then
                        Q424ClientConfig.Rank = "SS"
                    else
                        if Q424ClientConfig.Score == 180 then
                            Q424ClientConfig.Rank = "SSS"
                        end
                    end
                end
            end
        end
    end

    self:ShowMessage("\233\128\154\229\133\179\232\175\132\229\136\134\239\188\154" .. Q424ClientConfig.Rank)
end

function Quest424:GetTreasure()
    Q424ClientConfig.Score = Q424ClientConfig.Score + 10
    self:CountNumUIUpdate(Q424ClientConfig.Score)
end

function Quest424:OnSubStart42401(arg1) end

function Quest424:OnSubStart42402(arg1)
    print("42402 start: Spawn npc")
    actorMgr:CreateActorWithPos(Q424ClientConfig.SneakJudgeData.alias, Q424ClientConfig.SneakJudgeData.metaPath, Q424ClientConfig.SneakJudgeData.configID, 0, Q424ClientConfig.SneakJudgeData.bornPos, Q424ClientConfig.SneakJudgeData.bornDir, true, false, 1013)
end

function Quest424:OnSubStart42403(arg1)
    print("OnStart42403:SneakStart")
    Q424ClientConfig.Score = 100
    self:SneakAIDestroy()
    self:SneakAIPrepare()
    self:DoorDestroy()
    self:DoorPrepare()
    self:ItemDestroy()
    self:ItemPrepare()
    self:TreasureDestroy()
    self:TreasurePrepare()
    self:CountNumUIStart()
    self:CountNumUIUpdate(Q424ClientConfig.Score)
    self:EnterSneakMode(11)
    self:TriggerLevelAbility("Level_Apply_Switch_SneakBtn")
    self:ShowMessage("GameStart")
end

function Quest424:OnSubStart42404(arg1)
    print("OnStart42404:SneakFailed")
    self:ItemDestroy()
    self:DoorDestroy()
    self:TreasureDestroy()
    self:CallDelay(3, self.CountNumUITerminate)
    self:CallDelay(3, self.SneakAIDestroy)
    self:CallDelay(3, self.MovePlayer)
    self:CallDelay(4, function(arg1)
        arg1:FinishQuest(false)
    end)
end

function Quest424:OnSubStart42405(arg1)
    print("42405 start: Success Got Harp")
    self:GetScore()
    self:CallDelay(3, self.CountNumUITerminate)
    self:CallDelay(3, self.SneakAIDestroy)
    self:CallDelay(3, self.MovePlayer)
    self:CallDelay(5, self.GetScore)
    self:CallDelay(7, self.GetScore)
end

function Quest424:OnSubFinish42401(arg1) end
function Quest424:OnSubFinish42402(arg1) end
function Quest424:OnSubFinish42403(arg1) end
function Quest424:OnSubFinish42404(arg1) end
function Quest424:OnSubFinish42405(arg1) end

function Quest424:InvokeOnInteraction(arg1)
    print("*****INVOKE**********" .. arg1 .. "*********")
    local actor
    if arg1 < 2000 then
        local n = arg1 - 1000
        local modf = math.modf(n / 10)
        local fmod = math.fmod(n, 10)
        actor = actorMgr:GetActor(tbl[modf].alias)
        if actor ~= nil then
            if fmod == 1 then
                print("*****Soldier*****" .. modf .. "*****ASSULT")
                actor.DoFreeStyle(actor, 4)
                if modf == 10 then
                    local pos = actor.GetPos(actor)
                    self:SpawnItem(Q424ClientConfig.RedKeyID, pos, nil, "SoldierRedKey", 1013)
                end
            elseif fmod == 2 then
                print("*****Soldier*****" .. modf .. "*****STUN")
                actor.Stun(actor)
            elseif fmod == 3 then
                print("*****Soldier*****" .. modf .. "*****KILL")
                self:ActionSafeCall(function(arg1)
                    actor:Destroy(false)
                    Q424ClientConfig.Score = Q424ClientConfig.Score - 10
                    arg1:CountNumUIUpdate(Q424ClientConfig.Score)
                end)
            end
        end
    elseif 2000 < arg1 then
        local n = arg1 - 2000
        local modf = math.modf(n / 10)
        local fmod = math.fmod(n, 10)
        if modf == 1 then
            actor = actorMgr:GetActor(v[fmod].alias)
            if actor ~= nil then
                self:ActionSafeCall(function(arg1)
                    actor:Destroy(false)
                end)
            end
        elseif modf == 2 then
            actor = actorMgr:GetActor(tbl2[fmod].alias)
            if actor ~= nil then
                self:ActionSafeCall(function(arg1)
                    actor:Destroy(false)
                end)
            end
        end
    end
end

function Quest424:Start() end
function Quest424:OnDestroy() end
return Quest424
