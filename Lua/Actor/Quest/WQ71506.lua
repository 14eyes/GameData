require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71506 = class("Quest71506", QuestActorProxy)
Quest71506.defaultAlias = "Quest71506"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71506:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71506:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7150601"] = self.OnSubStart7150601}
end

function Quest71506:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7150601"] = self.OnSubFinish7150601}
end

function Quest71506:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71506:Start()
    print("Start")
end

function Quest71506:OnDestroy()
    print("OnDestroy")
end

function Quest71506:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71506:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71506:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71506:OnSubStart7150601(arg1)
    print("OnSubStart7150601")
    self:CreateQuestNpc(arg1, npcs.Npc30181Data.id, 1)
end

function Quest71506:OnSubFinish7150601(arg1)
    print("OnSubFinish7150601")
    self:SafeDestroyQuestNpc(npcs.Npc30181Data.alias, 6)
end

return Quest71506
