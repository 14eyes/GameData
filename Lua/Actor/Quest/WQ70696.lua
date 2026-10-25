require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70696 = class("Quest70696", QuestActorProxy)
Quest70696.defaultAlias = "Quest70696"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70696:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70696:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7069601"] = self.OnSubStart7069601, ["7069602"] = self.OnSubStart7069602}
end

function Quest70696:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7069601"] = self.OnSubFinish7069601, ["7069602"] = self.OnSubFinish7069602}
end

function Quest70696:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70696:Start()
    print("Start")
end

function Quest70696:OnDestroy()
    print("OnDestroy")
end

function Quest70696:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70696:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70696:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16137.alias, 3)
    this:DestroyNpcTrigger("Q7069602N16137Trigger")
end

function Quest70696:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70696:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest70696:OnSubStart7069601(arg1)
    print("OnSubStart7069601")
    this:CreateQuestNpc(arg1, npcs.Npc1034.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1034.alias, 70696):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest70696:OnSubFinish7069601(arg1)
    print("OnSubFinish7069601")
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 3)
end

function Quest70696:OnSubStart7069602(arg1)
    print("OnSubStart7069602")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16137.id, 0, 7069602, 5, true)
end

function Quest70696:OnSubFinish7069602(arg1)
    print("OnSubFinish7069602")
    this:SafeDestroyQuestNpc(npcs.Npc16137.alias, 3)
end

return Quest70696
