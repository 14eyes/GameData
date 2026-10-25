require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71510 = class("Quest71510", QuestActorProxy)
Quest71510.defaultAlias = "Quest71510"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71510:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71510:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7151001"] = self.OnSubStart7151001}
end

function Quest71510:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7151001"] = self.OnSubFinish7151001}
end

function Quest71510:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71510:Start()
    print("Start")
end

function Quest71510:OnDestroy()
    print("OnDestroy")
end

function Quest71510:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71510:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71510:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71510:OnSubStart7151001(arg1)
    print("OnSubStart7151001")
    self:CreateQuestNpc(arg1, npcs.Npc30181Data.id, 1)
end

function Quest71510:OnSubFinish7151001(arg1)
    print("OnSubFinish7151001")
    self:SafeDestroyQuestNpc(npcs.Npc30181Data.alias, 6)
end

return Quest71510
