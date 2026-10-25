require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77114 = class("Quest77114", QuestActorProxy)
Quest77114.defaultAlias = "Quest77114"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77114:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77114:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7711401"] = self.OnSubStart7711401}
end

function Quest77114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7711401"] = self.OnSubFinish7711401}
end

function Quest77114:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7711401"] = self.OnSubFailed7711401}
end

function Quest77114:Start()
    print("Start")
end

function Quest77114:OnDestroy()
    print("OnDestroy")
end

function Quest77114:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77114:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77114:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77114:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77114:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77114:OnSubStart7711401(arg1)
    print("OnSubStart7711401")
    this:CreateQuestNpc(arg1, npcs.Npc22416.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc22417.id, 0, 15, 7711401)
end

function Quest77114:OnSubFinish7711401(arg1)
    print("OnSubFinish7711401")
end

function Quest77114:OnSubFailed7711401(arg1)
    print("OnSubFailed7711401")
    this:RecycleAllRes()
end

return Quest77114
