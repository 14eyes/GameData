require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73261 = class("Quest73261", QuestActorProxy)
Quest73261.defaultAlias = "Quest73261"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73261:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73261:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7326101"] = self.OnSubStart7326101,
        ["7326102"] = self.OnSubStart7326102,
        ["7326103"] = self.OnSubStart7326103,
        ["7326104"] = self.OnSubStart7326104
    }
end

function Quest73261:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7326101"] = self.OnSubFinish7326101,
        ["7326102"] = self.OnSubFinish7326102,
        ["7326103"] = self.OnSubFinish7326103,
        ["7326104"] = self.OnSubFinish7326104
    }
end

function Quest73261:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73261:Start()
    print("Start")
end

function Quest73261:OnDestroy()
    print("OnDestroy")
end

function Quest73261:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73261:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73261:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73261:OnSubStart7326101(arg1)
    print("OnSubStart7326101")
    self:CreateQuestNpc(arg1, npcs.Npc422201Data.id, 1)
end

function Quest73261:OnSubFinish7326101(arg1)
    print("OnSubFinish7326101")
end

function Quest73261:OnSubStart7326102(arg1)
    print("OnSubStart7326102")
    self:CallDelay(5, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, function(arg1)
        actorUtils.FinishQuestID(false, 7326102)
    end)
end

function Quest73261:OnSubFinish7326102(arg1)
    print("OnSubFinish7326102")
end

function Quest73261:OnSubStart7326103(arg1)
    print("OnSubStart7326103")
end

function Quest73261:OnSubFinish7326103(arg1)
    print("OnSubFinish7326103")
end

function Quest73261:OnSubStart7326104(arg1)
    print("OnSubStart7326104")
end

function Quest73261:OnSubFinish7326104(arg1)
    print("OnSubFinish7326104")
end

return Quest73261
