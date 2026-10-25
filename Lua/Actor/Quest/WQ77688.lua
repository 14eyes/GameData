require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77688 = class("Quest77688", QuestActorProxy)
Quest77688.defaultAlias = "Quest77688"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77688:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77688:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7768801"] = self.OnSubStart7768801}
end

function Quest77688:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7768801"] = self.OnSubFinish7768801}
end

function Quest77688:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77688:Start()
    print("Start")
end

function Quest77688:OnDestroy()
    print("OnDestroy")
end

function Quest77688:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77688:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77688:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7768801N31164Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc31164.alias, 3)
    this:RecycleAllRes()
end

function Quest77688:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77688:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77688:OnSubStart7768801(arg1)
    print("OnSubStart7768801")
    this:NpcCreateWithNpcTrigger(npcs.Npc31164.id, 0, 10, 7768801)
end

function Quest77688:OnSubFinish7768801(arg1)
    print("OnSubFinish7768801")
end

return Quest77688
