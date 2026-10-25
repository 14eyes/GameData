require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73262 = class("Quest73262", QuestActorProxy)
Quest73262.defaultAlias = "Quest73262"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73262:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73262:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7326201"] = self.OnSubStart7326201,
        ["7326202"] = self.OnSubStart7326202,
        ["7326203"] = self.OnSubStart7326203,
        ["7326204"] = self.OnSubStart7326204
    }
end

function Quest73262:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7326201"] = self.OnSubFinish7326201,
        ["7326202"] = self.OnSubFinish7326202,
        ["7326203"] = self.OnSubFinish7326203,
        ["7326204"] = self.OnSubFinish7326204
    }
end

function Quest73262:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73262:Start()
    print("Start")
end

function Quest73262:OnDestroy()
    print("OnDestroy")
end

function Quest73262:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73262:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73262:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73262:OnSubStart7326201(arg1)
    print("OnSubStart7326201")
    self:CreateQuestNpc(arg1, npcs.Npc422202Data.id, 1)
end

function Quest73262:OnSubFinish7326201(arg1)
    print("OnSubFinish7326201")
end

function Quest73262:OnSubStart7326202(arg1)
    print("OnSubStart7326202")
    self:CallDelay(5, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, function(arg1)
        actorUtils.FinishQuestID(false, 7326202)
    end)
end

function Quest73262:OnSubFinish7326202(arg1)
    print("OnSubFinish7326202")
end

function Quest73262:OnSubStart7326203(arg1)
    print("OnSubStart7326203")
end

function Quest73262:OnSubFinish7326203(arg1)
    print("OnSubFinish7326203")
end

function Quest73262:OnSubStart7326204(arg1)
    print("OnSubStart7326204")
end

function Quest73262:OnSubFinish7326204(arg1)
    print("OnSubFinish7326204")
end

return Quest73262
