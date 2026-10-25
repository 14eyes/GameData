require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest501 = class("Quest501", QuestActorProxy)
Quest501.defaultAlias = "Quest501"
local this
local super
local uActor
local mainQuestID = 0

function Quest501:OnPreInit()
    this = self
    super = self.__super
    mainQuestID = this.mainQuestID
    super:OnPreInit()
end

function Quest501:OnPostInit()
    uActor = self.uActor
    super:OnPostInit()
end

local Q501Config = require("Actor/Quest/Q501/Q501Config")

local subIDs = Q501Config.SubIDs
local clueID = Q501Config.ClueID
local cluePos1 = Q501Config.CluePos1
local cluePos2 = Q501Config.CluePos2
local cluePos3 = Q501Config.CluePos3
local sealPos = Q501Config.SealPos
local clueGadgetID = Q501Config.ClueGadgetID
local Q504Config = require("Actor/Quest/Q504/Q504Config")

local wendyData = Q504Config.WendyData
local qinData = Q504Config.QinData
local dilucData = Q504Config.DilucData

function Quest501:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, arg1)
    local questActor = actorUtils.CreateQuestActor(mainQuestID, actor)
    return questActor
end

function Quest501:ClueaNarrtor()
    local subQuestState = this:GetSubQuestState(50101)
    local v = this:GetSubQuestState(50102)
    local subQuestState2 = this:GetSubQuestState(50103)
    local n = subQuestState + v + subQuestState2
    if n == 7 then
        return this:NarratorOnlyTask(Q501Config.NarratorData.Storyclue1)
    elseif n == 8 then
        return this:NarratorOnlyTask(Q501Config.NarratorData.Storyclue2)
    end
end

local function func()
    print("50101 start: Clue1 Create")
end

local function v()
    print("50102 start: Clue2 Create")
end

local function func2()
    print("50103 start: Clue3 Create")
end

local function func3()
    print("50104 Start:......")
end

local function func4()
    print("50105 Start: Finish Quest & Play CutScene 1")
    this:PlayCutscene(Q501Config.SealAppearTimeCfg, this:NarratorOnlyTask(Q501Config.NarratorData.Storyclue3))
    local actor = actorMgr:GetActor(Q501Config.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

local function func5()
    print("50106 Start: Finish Quest & Play CutScene2")
    this:PlayCutscene(Q501Config.SealOpenTimeCfg, function(arg1)
        local actor = actorMgr:GetActor(Q501Config.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end)
end

local function func6()
    print("50101 finish: Clue1 UnSpawn")
    this:ClueNarrator()
end

local function func7()
    print("50102 finish: Clue2 UnSpawn")
    this:ClueNarrator()
end

local function func8()
    print("50103 finish: Clue3 UnSpawn")
    this:ClueNarrator()
end

local function func9()
    print("50104 finish:......")
end

local function func10()
    print("50105 finish:......")
end

local function func11()
    print("50106 finish:......")
end

local function func12()
    print("50104 rewind: Creat NPC")
    actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
    actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
end

local function func13()
    print("50105 rewind: Creat NPC")
    actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
    actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
end

local function func14()
    print("50106 rewind: Creat NPC")
    actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
    actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
end

function Quest501:OnMainStart(arg1) end

function Quest501:OnSubStart(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q50101 then
        func()
    else
        if questConfigId == subIDs.q50102 then
            v()
        else
            if questConfigId == subIDs.q50103 then
                func2()
            else
                if questConfigId == subIDs.q50104 then
                    func3()
                else
                    if questConfigId == subIDs.q50105 then
                        func4()
                    else
                        if questConfigId == subIDs.q50106 then
                            func5()
                        end
                    end
                end
            end
        end
    end
end

function Quest501:OnSubFinished(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q50101 then
        func6()
    else
        if questConfigId == subIDs.q50102 then
            func7()
        else
            if questConfigId == subIDs.q50103 then
                func8()
            else
                if questConfigId == subIDs.q50104 then
                    func9()
                else
                    if questConfigId == subIDs.q50105 then
                        func10()
                    else
                        if questConfigId == subIDs.q50106 then
                            func11()
                        end
                    end
                end
            end
        end
    end
end

function Quest501:OnRewind(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q50104 then
        func12()
    else
        if questConfigId == subIDs.q50105 then
            func13()
        else
            if questConfigId == subIDs.q50106 then
                func14()
            end
        end
    end
end

function Quest501:OnMainFinished(arg1)
    print("50104 finish: Seal Opened")
end

function Quest501:Start() end
function Quest501:OnDestroy() end
return Quest501
