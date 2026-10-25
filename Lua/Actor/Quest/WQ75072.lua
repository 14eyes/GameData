require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75072 = class("Quest75072", QuestActorProxy)
Quest75072.defaultAlias = "Quest75072"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75072:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75072:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7507201"] = self.OnSubStart7507201, ["7507202"] = self.OnSubStart7507202}
end

function Quest75072:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7507201"] = self.OnSubFinish7507201, ["7507202"] = self.OnSubFinish7507202}
end

function Quest75072:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75072:Start()
    print("Start")
end

function Quest75072:OnDestroy()
    print("OnDestroy")
end

function Quest75072:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75072:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75072:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc21493.alias, 3)
end

function Quest75072:OnSubStart7507201(arg1)
    print("OnSubStart7507201")
    this:CreateQuestNpc(arg1, npcs.Npc21493.id, 0, false, 0)
end

function Quest75072:OnSubFinish7507201(arg1)
    print("OnSubFinish7507201")
end

function Quest75072:OnSubStart7507202(arg1)
    print("OnSubStart7507202")
end

function Quest75072:OnSubFinish7507202(arg1)
    print("OnSubFinish7507202")
end

return Quest75072
