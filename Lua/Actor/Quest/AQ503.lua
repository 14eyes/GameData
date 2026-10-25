require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest503 = class("Quest503", QuestActorProxy)
Quest503.defaultAlias = "Quest503"
local this
local super
local uActor
local mainQuestID = 0

function Quest503:OnPreInit()
    this = self
    super = self.__super
    mainQuestID = this.mainQuestID
    super:OnPreInit()
end

function Quest503:OnPostInit()
    uActor = self.uActor
    super:OnPostInit()
end

local Q503Config = require("Actor/Quest/Q503/Q503Config")

local subIDs = Q503Config.SubIDs
local clueID = Q503Config.ClueID
local cluePos1 = Q503Config.CluePos1
local cluePos2 = Q503Config.CluePos2
local cluePos3 = Q503Config.CluePos3
local sealPos = Q503Config.SealPos
local clueGadgetID = Q503Config.ClueGadgetID
local Q504Config = require("Actor/Quest/Q504/Q504Config")

local wendyData = Q504Config.WendyData
local qinData = Q504Config.QinData
local dilucData = Q504Config.DilucData

function Quest503:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, arg1)
    local questActor = actorUtils.CreateQuestActor(mainQuestID, actor)
    return questActor
end

local function func()
    print("50301 start: Clue7 Create")
    globalActor:SpawnItem(Q503Config.Clue1ID, Q503Config.CluePos1, 0, "q503Clue1")
end

local function v()
    print("50302 start: Clue8 Create")
    globalActor:SpawnItem(Q503Config.Clue2ID, Q503Config.CluePos2, 0, "q503Clue2")
end

local function func2()
    print("50303 start: Clue9 Create")
    globalActor:SpawnItem(Q503Config.Clue3ID, Q503Config.CluePos3, 0, "q503Clue3")
end

local function func3()
    print("50304 start:......")
end

local function func4()
    print("50305 start: Finish Quest")
    local actor = actorMgr:GetActor(Q503Config.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

local function func5()
    print("50306 Start: Finish Quest & Play CutScene2")
    this:PlayCutscene(q5032Cfg.SealOpenTimeCfg, function(arg1)
        local actor = actorMgr:GetActor(Q503Config.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end)
end

local function func6()
    print("50301 finish: Clue1 UnSpawn")
    globalActor:UnSpawn("q503Clue1")
end

local function func7()
    print("50302 finish: Clue2 UnSpawn")
    globalActor:UnSpawn("q503Clue2")
end

local function func8()
    print("50303 finish: Clue3 UnSpawn")
    globalActor:UnSpawn("q503Clue3")
end

local function func9()
    print("50304 finish: Play Cutscene 2")
end

local function func10()
    print("50305 Start: Finish Quest & Play CutScene 1")
    this:PlayCutscene(Q503Config.SealAppearTimeCfg)
    local actor = actorMgr:GetActor(Q503Config.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

local function func11()
    print("50306 finish:......")
end

local function func12()
    print("50304 rewind: Creat NPC")
    actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
    actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
end

local function func13()
    print("50305 rewind: Creat NPC")
    actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
    actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
end

local function func14()
    print("50305 rewind: Creat NPC")
    actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
    actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
end

function Quest503:OnMainStart(arg1) end

function Quest503:OnSubStart(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q50301 then
        func()
    else
        if questConfigId == subIDs.q50302 then
            v()
        else
            if questConfigId == subIDs.q50303 then
                func2()
            else
                if questConfigId == subIDs.q50304 then
                    func3()
                else
                    if questConfigId == subIDs.q50305 then
                        func4()
                    else
                        if questConfigId == subIDs.q50306 then
                            func5()
                        end
                    end
                end
            end
        end
    end
end

function Quest503:OnSubFinished(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q50301 then
        func6()
    else
        if questConfigId == subIDs.q50302 then
            func7()
        else
            if questConfigId == subIDs.q50303 then
                func8()
            else
                if questConfigId == subIDs.q50304 then
                    func9()
                else
                    if questConfigId == subIDs.q50305 then
                        func10()
                    else
                        if questConfigId == subIDs.q50306 then
                            func11()
                        end
                    end
                end
            end
        end
    end
end

function Quest503:OnRewind(arg1)
    local questConfigId = arg1.QuestConfigId
    if questConfigId == subIDs.q50304 then
        func12()
    else
        if questConfigId == subIDs.q50305 then
            func13()
        else
            if questConfigId == subIDs.q50306 then
                func14()
            end
        end
    end
end

function Quest503:OnMainFinished(arg1)
    print("50304 finish: Seal Opened")
end

function Quest503:Start() end
function Quest503:OnDestroy() end
return Quest503
