require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73675 = class("Quest73675", QuestActorProxy)
Quest73675.defaultAlias = "Quest73675"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73675:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73675:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7367501"] = self.OnSubStart7367501}
end

function Quest73675:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7367501"] = self.OnSubFinish7367501}
end

function Quest73675:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73675:Start()
    print("Start")
end

function Quest73675:OnDestroy()
    print("OnDestroy")
end

function Quest73675:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73675:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73675:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc12760Data.alias, 3)
end

function Quest73675:OnSubStart7367501(arg1)
    print("OnSubStart7367501")
    self:CreateQuestNpc(arg1, npcs.Npc12760Data.id, 1)
end

function Quest73675:OnSubFinish7367501(arg1)
    print("OnSubFinish7367501")
    self:SafeDestroyQuestNpc(npcs.Npc12760Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(897)
    end)
end

return Quest73675
