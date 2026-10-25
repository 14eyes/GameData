require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest502 = class("Quest502", QuestActorProxy)
Quest502.defaultAlias = "Quest502"
local this
local super
local uActor
local mainQuestID = 0

function Quest502:OnPreInit()
    this = self
    super = self.__super
    mainQuestID = this.mainQuestID
    super:OnPreInit()
end

function Quest502:OnPostInit()
    uActor = self.uActor
    super:OnPostInit()
end

local Q502Config = require("Actor/Quest/Q502/Q502Config")

local subIDs = Q502Config.SubIDs
local clueID = Q502Config.ClueID
local cluePos1 = Q502Config.CluePos1
local cluePos2 = Q502Config.CluePos2
local cluePos3 = Q502Config.CluePos3
local sealPos = Q502Config.SealPos
local clueGadgetID = Q502Config.ClueGadgetID
local Q504Config = require("Actor/Quest/Q504/Q504Config")

local wendyData = Q504Config.WendyData
local qinData = Q504Config.QinData
local dilucData = Q504Config.DilucData

function Quest502:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, arg1)
    local questActor = actorUtils.CreateQuestActor(mainQuestID, actor)
    return questActor
end

local function func()
    print("50201 start: Clue1 Create")
    globalActor:SpawnItem(Q502Config.Clue1ID, Q502Config.CluePos1, 0, "q502Clue1")
end

local function v()
    print("50202 start: Clue2 Create")
    globalActor:SpawnItem(Q502Config.Clue2ID, Q502Config.CluePos2, 0, "q502Clue2")
end

local function func2()
    print("50203 start: Clue3 Create")
    globalActor:SpawnItem(Q502Config.Clue3ID, Q502Config.CluePos3, 0, "q502Clue3")
end

local function func3()
    print("50204 Start:......")
end

local function func4()
    print("50205 Start: Finish Quest & Play CutScene 1")
    this:PlayCutscene(Q502Config.SealAppearTimeCfg)
    local actor = actorMgr:GetActor(Q502Config.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

local function func5()
    print("50206 Start: Finish Quest & Play CutScene2")
    this:PlayCutscene(Q502Config.SealOpenTimeCfg, function(arg1)
        local actor = actorMgr:GetActor(Q502Config.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end)
end

local function func6()
    print("50201 finish: Clue1 UnSpawn")
    globalActor:UnSpawn("q502Clue1")
end

local function func7()
    print("50202 finish: Clue2 UnSpawn")
    globalActor:UnSpawn("q502Clue2")
end

local function func8()
    print("50203 finish: Clue3 UnSpawn")
    globalActor:UnSpawn("q502Clue3")
end

local function func9()
    print("50204 finish: Play CutScene2")
end

local function func10()
    print("50205 finish: Play CutScene1")
end

local function func11()
    print("50206 finish:......")
end

local function func12()
    print("50204 rewind: Creat NPC")
    actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
    actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
end

local function func13()
    print("50205 rewind: Creat NPC")
    actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
    actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
end

local function func14()
    print("50206 rewind: Creat NPC")
    actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
    actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
end

function Quest502:OnMainStart(arg1) end

function Quest502:OnSubStart(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q50201 then
        func()
    else
        if questConfigId == subIDs.q50202 then
            v()
        else
            if questConfigId == subIDs.q50203 then
                func2()
            else
                if questConfigId == subIDs.q50204 then
                    func3()
                else
                    if questConfigId == subIDs.q50205 then
                        func4()
                    else
                        if questConfigId == subIDs.q50206 then
                            func5()
                        end
                    end
                end
            end
        end
    end
end

function Quest502:OnSubFinished(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q50201 then
        func6()
    else
        if questConfigId == subIDs.q50202 then
            func7()
        else
            if questConfigId == subIDs.q50203 then
                func8()
            else
                if questConfigId == subIDs.q50204 then
                    func9()
                else
                    if questConfigId == subIDs.q50205 then
                        func10()
                    else
                        if questConfigId == subIDs.q50206 then
                            func11()
                        end
                    end
                end
            end
        end
    end
end

function Quest502:OnRewind(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q50204 then
        func12()
    else
        if questConfigId == subIDs.q50205 then
            func13()
        else
            if questConfigId == subIDs.q50206 then
                func14()
            end
        end
    end
end

function Quest502:OnMainFinished(arg1)
    print("50204 finish: Seal Opened")
end

function Quest502:Start() end
function Quest502:OnDestroy() end
return Quest502
