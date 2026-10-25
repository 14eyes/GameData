require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest993 = class("Quest993", QuestActorProxy)
Quest993.defaultAlias = "Quest993"
local Q993ClientConfig = require("Quest/Client/Q993ClientConfig")

local subIDs = Q993ClientConfig.SubIDs
local tbl = {}
local sneakAI1Data = Q993ClientConfig.SneakAI1Data
local sneakAI2Data = Q993ClientConfig.SneakAI2Data
local sneakAI3Data = Q993ClientConfig.SneakAI3Data
local sneakAI4Data = Q993ClientConfig.SneakAI4Data
local sneakAI5Data = Q993ClientConfig.SneakAI5Data
local sneakAI6Data = Q993ClientConfig.SneakAI6Data
local sneakAI7Data = Q993ClientConfig.SneakAI7Data
local sneakAI8Data = Q993ClientConfig.SneakAI8Data
local sneakAI9Data = Q993ClientConfig.SneakAI9Data
local sneakAI10Data = Q993ClientConfig.SneakAI10Data
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

function Quest993:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["99301"] = self.OnSubStart99301
    self.subStartHandlers["99302"] = self.OnSubStart99302
    self.subStartHandlers["99303"] = self.OnSubStart99303
    self.subStartHandlers["99304"] = self.OnSubStart99304
end

function Quest993:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["99301"] = self.OnSubFinish99301
    self.subFinishHandlers["99302"] = self.OnSubFinish99302
    self.subFinishHandlers["99303"] = self.OnSubFinish99303
    self.subFinishHandlers["99304"] = self.OnSubFinish99304
end

function Quest993:SneakAIPrepare()
    print("FailNum is", FailNum)
    tbl = {
        Q993ClientConfig.SneakAI1Data,
        Q993ClientConfig.SneakAI2Data,
        Q993ClientConfig.SneakAI3Data,
        Q993ClientConfig.SneakAI4Data,
        Q993ClientConfig.SneakAI5Data,
        Q993ClientConfig.SneakAI6Data,
        Q993ClientConfig.SneakAI7Data,
        Q993ClientConfig.SneakAI8Data,
        Q993ClientConfig.SneakAI9Data,
        Q993ClientConfig.SneakAI10Data
    }

    Q993ClientConfig.SneakAINum = 10
    print("SneakAINum is", Q993ClientConfig.SneakAINum)
    for i = 1, Q993ClientConfig.SneakAINum do
        local actorWithPos = actorMgr:CreateActorWithPos(tbl[i].alias, tbl[i].metaPath, tbl[i].configID, tbl[i].dataIndex, tbl[i].bornPos, tbl[i].bornDir, true, true, 1023)
        actorWithPos.PatrolPosNum = tbl[i].PatrolPosNum
        actorWithPos.PatrolPos = tbl[i].PatrolPos
        actorWithPos.PatrolDir = tbl[i].PatrolDir
        actorWithPos.PatrolNext = 1
    end
end

function Quest993:SneakAIDestroy()
    tbl = {
        Q993ClientConfig.SneakAI1Data,
        Q993ClientConfig.SneakAI2Data,
        Q993ClientConfig.SneakAI3Data,
        Q993ClientConfig.SneakAI4Data,
        Q993ClientConfig.SneakAI5Data,
        Q993ClientConfig.SneakAI6Data,
        Q993ClientConfig.SneakAI7Data,
        Q993ClientConfig.SneakAI8Data,
        Q993ClientConfig.SneakAI9Data,
        Q993ClientConfig.SneakAI10Data
    }

    Q993ClientConfig.SneakAINum = 10
    for i = 1, Q993ClientConfig.SneakAINum do
        local actor = actorMgr:GetActor(tbl[i].alias)
        if actor ~= nil then
            actor:Destroy(false)
        end
    end
end

function Quest993:OnSubStart99301(arg1)
    print("99301 start:...")
end

function Quest993:OnSubStart99302(arg1)
    print("99302 start:...")
    self:SneakAIDestroy()
    self:CallDelay(2.5, self.SneakAIPrepare)
    self:EnterSneakMode(11)
end

function Quest993:OnSubStart99303(arg1)
    print("99303 start:...")
    self:SneakAIDestroy()
    self:ExitSneakMode()
    self:TransmitPlayer(1023, sceneData:GetDummyPoint(1023, "Avatar_born").pos, sceneData:GetDummyPoint(1023, "Avatar_born").rot)
    local actor = actorMgr:GetActor(Q993ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest993:OnSubStart99304(arg1)
    print("99304 start:...")
    self:SneakAIDestroy()
    self:ExitSneakMode()
end

function Quest993:OnSubFinish99301(arg1)
    print("OnFinished 99301")
end

function Quest993:Start() end
function Quest993:OnDestroy() end
return Quest993
