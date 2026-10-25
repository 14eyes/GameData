require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77672 = class("Quest77672", QuestActorProxy)
Quest77672.defaultAlias = "Quest77672"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77672:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77672:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7767201"] = self.OnSubStart7767201}
end

function Quest77672:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7767201"] = self.OnSubFinish7767201}
end

function Quest77672:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77672:Start()
    print("Start")
end

function Quest77672:OnDestroy()
    print("OnDestroy")
end

function Quest77672:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77672:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77672:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77672:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77672:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest77672:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77672:OnSubStart7767201(arg1)
    print("OnSubStart7767201")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1332.id, 0, 7767201, 6, true)
end

function Quest77672:OnSubFinish7767201(arg1)
    print("OnSubFinish7767201")
    this:NpcDestroyImmediately(1159, npcs.Npc1332.alias)
end

return Quest77672
