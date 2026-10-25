require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74715 = class("Quest74715", QuestActorProxy)
Quest74715.defaultAlias = "Quest74715"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74715:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74715:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7471501"] = self.OnSubStart7471501}
end

function Quest74715:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7471501"] = self.OnSubFinish7471501}
end

function Quest74715:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74715:Start()
    print("Start")
end

function Quest74715:OnDestroy()
    print("OnDestroy")
end

function Quest74715:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74715:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74715:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7471501N1074Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1074.alias, 3)
    this:RecycleAllRes()
end

function Quest74715:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74715:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74715:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest74715:OnSubStart7471501(arg1)
    print("OnSubStart7471501")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1074.id, 0, 7471501, 12, true)
end

function Quest74715:OnSubFinish7471501(arg1)
    print("OnSubFinish7471501")
    this:NpcDestroyImmediately(3, npcs.Npc1074.alias)
end

return Quest74715
