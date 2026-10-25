require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74713 = class("Quest74713", QuestActorProxy)
Quest74713.defaultAlias = "Quest74713"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74713:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74713:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7471301"] = self.OnSubStart7471301}
end

function Quest74713:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7471301"] = self.OnSubFinish7471301}
end

function Quest74713:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74713:Start()
    print("Start")
end

function Quest74713:OnDestroy()
    print("OnDestroy")
end

function Quest74713:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74713:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74713:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7471301N1074Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1074.alias, 3)
    this:RecycleAllRes()
end

function Quest74713:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74713:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74713:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest74713:OnSubStart7471301(arg1)
    print("OnSubStart7471301")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1074.id, 0, 7471301, 12, true)
end

function Quest74713:OnSubFinish7471301(arg1)
    print("OnSubFinish7471301")
    this:NpcDestroyImmediately(3, npcs.Npc1074.alias)
end

return Quest74713
