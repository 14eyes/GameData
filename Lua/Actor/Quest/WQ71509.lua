require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71509 = class("Quest71509", QuestActorProxy)
Quest71509.defaultAlias = "Quest71509"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71509:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71509:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7150901"] = self.OnSubStart7150901}
end

function Quest71509:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7150901"] = self.OnSubFinish7150901}
end

function Quest71509:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71509:Start()
    print("Start")
end

function Quest71509:OnDestroy()
    print("OnDestroy")
end

function Quest71509:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71509:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71509:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71509:OnSubStart7150901(arg1)
    print("OnSubStart7150901")
    self:CreateQuestNpcWithTriggerBlack("Q7150901Trigger", 7150901, npcs.Npc30181Data.id, 1, 3, 1)
end

function Quest71509:OnSubFinish7150901(arg1)
    print("OnSubFinish7150901")
    self:SafeDestroyQuestNpc(npcs.Npc30181Data.alias, 6)
end

return Quest71509
