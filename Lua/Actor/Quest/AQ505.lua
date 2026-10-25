require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest505 = class("Quest505", QuestActorProxy)
Quest505.defaultAlias = "Quest505"
local this
local super
local uActor
local mainQuestID = 0

function Quest505:OnPreInit()
    this = self
    super = self.__super
    mainQuestID = this.mainQuestID
    super:OnPreInit()
end

function Quest505:OnPostInit()
    uActor = self.uActor
    super:OnPostInit()
end

local Q505Config = require("Actor/Quest/Q505/Q505Config")

local subIDs = Q505Config.SubIDs
local wendyData = Q505Config.WendyData
local qinData = Q505Config.QinData
local dilucData = Q505Config.DilucData

function Quest505:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, arg1)
    local questActor = actorUtils.CreateQuestActor(mainQuestID, actor)
    return questActor
end

local function func()
    print("50505 finish: Seal2 Create")
    actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
    actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
    actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
end

function PaimonDisappear()
    local actor = actorMgr:GetActor("Paimon")
    if actor ~= nil then
        print("paimengdis")
        actor:DestroyWithDisappear(false)
    end
end

local function v()
    print("50501 finish: Dungeon Open")
    this:ActionSafeCall(PaimonDisappear)
end

function Quest505:OnMainStart(arg1) end

function Quest505:OnSubStart(arg1)
    if arg1.QuestConfigId == subIDs.q50501 then
        func()
    end
end

function Quest505:OnSubFinished(arg1)
    if arg1.QuestConfigId == subIDs.q50501 then
        v()
    end
end

function Quest505:OnRewind(arg1) end
function Quest505:OnMainFinished(arg1) end
function Quest505:Start() end
function Quest505:OnDestroy() end
return Quest505
