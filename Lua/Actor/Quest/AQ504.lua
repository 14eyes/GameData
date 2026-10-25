require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest504 = class("Quest504", QuestActorProxy)
Quest504.defaultAlias = "Quest504"
local this
local super
local uActor
local mainQuestID = 0

function Quest504:OnPreInit()
    this = self
    super = self.__super
    mainQuestID = this.mainQuestID
    super:OnPreInit()
end

function Quest504:OnPostInit()
    uActor = self.uActor
    super:OnPostInit()
end

local Q504Config = require("Actor/Quest/Q504/Q504Config")

local subIDs = Q504Config.SubIDs
local seal1ID = Q504Config.Seal1ID
local seal2ID = Q504Config.Seal2ID
local sealPos = Q504Config.SealPos
local wendyData = Q504Config.WendyData
local qinData = Q504Config.QinData
local dilucData = Q504Config.DilucData

function Quest504:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, arg1)
    local questActor = actorUtils.CreateQuestActor(mainQuestID, actor)
    return questActor
end

function Quest504:On50402CutsceneFinish()
    this:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTask(Q504Config.Story2)
    end)
end

local function func()
    print("50401 start:......")
end

local function v()
    print("50402 start:......")
end

local function func2()
    print("50403 start:......")
end

local function func3()
    print("50404 start:......")
end

local function func4()
    print("50407 start:......")
end

local function func5()
    print("50401 finishi:......")
    this:NarratorOnlyTask(Q504Config.Story1)
    this:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q504Target1").pos, 0, 3, true)
end

local function func6()
    print("50402 finishi: Play CutScene1")
    this:ActionSafeCall(this:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q504Target1").pos, sceneData:GetDummyPoint(3, "Q504Target1").rot, nil, function(arg1)
        actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos2, wendyData.bornDir2, true)
        actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos2, dilucData.bornDir2, true)
        actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos2, qinData.bornDir2, true)
    end))
end

local function func7()
    print("50403 finishi: Creat Wendy, Diluc, Qin")
    actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
    actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
end

local function func8()
    print("50404 finishi:......")
    this:UnSpawn("Quest50403Target")
    local actor = actorMgr:GetActor("Paimon")
    if actor ~= nil then
        actor:DestroyWithDisappear(false)
    end
end

local function func9()
    this:SpawnGadget(70900201, wendyData.bornPos, wendyData.bornDir, "Quest50403Target")
    this:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
        local actor = actorMgr:GetActor(qinData.Qin)
        local v = actorMgr:GetActor(dilucData.Diluc)
        local actor2 = actorMgr:GetActor(wendyData.Wendy)
        local actor3 = actorMgr:GetActor("Paimon")
        if actor ~= nil then
            actor:Destroy(false)
        end

        if v ~= nil then
            v:Destroy(false)
        end

        if actor2 ~= nil then
            actor2:Destroy(false)
        end

        if actor3 ~= nil then
            actor3:Destroy(false)
        end
    end)
end

local function func10()
    print("50404 Rewind: Creat Wendy, Diluc, Qin")
    actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
    actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
end

function Quest504:OnMainStart(arg1) end

function Quest504:OnSubStart(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q50401 then
        func()
    else
        if questConfigId == subIDs.q50402 then
            v()
        else
            if questConfigId == subIDs.q50403 then
                func2()
            else
                if questConfigId == subIDs.q50404 then
                    func3()
                else
                    if questConfigId == subIDs.q50407 then
                        func4()
                    end
                end
            end
        end
    end
end

function Quest504:OnSubFinished(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q50401 then
        func5()
    else
        if questConfigId == subIDs.q50402 then
            func6()
        else
            if questConfigId == subIDs.q50403 then
                func7()
            else
                if questConfigId == subIDs.q50404 then
                    func8()
                else
                    if questConfigId == subIDs.q50407 then
                        func9()
                    end
                end
            end
        end
    end
end

function Quest504:OnRewind(arg1)
    if arg1.QuestConfigId == subIDs.q50404 then
        func10()
    end
end

function Quest504:OnMainFinished(arg1) end
function Quest504:Start() end
function Quest504:OnDestroy() end
return Quest504
