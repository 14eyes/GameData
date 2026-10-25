require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75244 = class("Quest75244", QuestActorProxy)
Quest75244.defaultAlias = "Quest75244"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75244:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75244:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7524401"] = self.OnSubStart7524401,
        ["7524402"] = self.OnSubStart7524402,
        ["7524403"] = self.OnSubStart7524403,
        ["7524404"] = self.OnSubStart7524404,
        ["7524405"] = self.OnSubStart7524405
    }
end

function Quest75244:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7524401"] = self.OnSubFinish7524401,
        ["7524402"] = self.OnSubFinish7524402,
        ["7524403"] = self.OnSubFinish7524403,
        ["7524404"] = self.OnSubFinish7524404,
        ["7524405"] = self.OnSubFinish7524405
    }
end

function Quest75244:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75244:Start()
    print("Start")
end

function Quest75244:OnDestroy()
    print("OnDestroy")
end

function Quest75244:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75244:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75244:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75244:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75244:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75244:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75244:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75244:OnSubStart7524401(arg1)
    print("OnSubStart7524401")
    this:CreateQuestNpc(arg1, npcs.Npc6520.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6520.alias, 75244):DoFreeStyle(4110, true, nil, true, true, false, true)
end

function Quest75244:OnSubFinish7524401(arg1)
    print("OnSubFinish7524401")
end

function Quest75244:OnSubStart7524402(arg1)
    print("OnSubStart7524402")
    this:GetQuestNpcActor(npcs.Npc6520.alias, 75244):DoFreeStyle(4110, true, nil, true, true, false, false)
end

function Quest75244:OnSubFinish7524402(arg1)
    print("OnSubFinish7524402")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6520.alias)
end

function Quest75244:OnSubStart7524403(arg1)
    print("OnSubStart7524403")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7524403, 0, 3, 2, npcs.Npc6535.id)
    this:GetQuestNpcActor(npcs.Npc6535.alias, 75244):DoFreeStyle(4110, true, nil, true, true, false, false)
end

function Quest75244:OnSubFinish7524403(arg1)
    print("OnSubFinish7524403")
end

function Quest75244:OnSubStart7524404(arg1)
    print("OnSubStart7524404")
    this:GetQuestNpcActor(npcs.Npc6535.alias, 75244):DoFreeStyle(4110, true, nil, true, true, false, false)
end

function Quest75244:OnSubFinish7524404(arg1)
    print("OnSubFinish7524404")
    this:NpcDestroyImmediately(3, npcs.Npc6535.alias)
end

function Quest75244:OnSubStart7524405(arg1)
    print("OnSubStart7524405")
end

function Quest75244:OnSubFinish7524405(arg1)
    print("OnSubFinish7524405")
    this:NpcDestroyImmediately(3, npcs.Npc6535.alias)
end

return Quest75244
