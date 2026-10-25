require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76114 = class("Quest76114", QuestActorProxy)
Quest76114.defaultAlias = "Quest76114"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76114:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76114:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7611401"] = self.OnSubStart7611401,
        ["7611402"] = self.OnSubStart7611402,
        ["7611403"] = self.OnSubStart7611403,
        ["7611404"] = self.OnSubStart7611404
    }
end

function Quest76114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7611401"] = self.OnSubFinish7611401,
        ["7611402"] = self.OnSubFinish7611402,
        ["7611403"] = self.OnSubFinish7611403,
        ["7611404"] = self.OnSubFinish7611404
    }
end

function Quest76114:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76114:Start()
    print("Start")
end

function Quest76114:OnDestroy()
    print("OnDestroy")
end

function Quest76114:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76114:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76114:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76114:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest76114:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76114:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76114:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest76114:OnSubStart7611401(arg1)
    print("OnSubStart7611401")
    this:NpcCreateWithNpcTrigger(npcs.Npc1316.id, 0, 15, 7611401)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
end

function Quest76114:OnSubFinish7611401(arg1)
    print("OnSubFinish7611401")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 1205)
end

function Quest76114:OnSubStart7611402(arg1)
    print("OnSubStart7611402")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15923.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc7125.alias, true, 1)
end

function Quest76114:OnSubFinish7611402(arg1)
    print("OnSubFinish7611402")
    this:SafeDestroyQuestNpc(npcs.Npc15923.alias, 3)
end

function Quest76114:OnSubStart7611403(arg1)
    print("OnSubStart7611403")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15924.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc7125.alias, true, 1)
end

function Quest76114:OnSubFinish7611403(arg1)
    print("OnSubFinish7611403")
    this:SafeDestroyQuestNpc(npcs.Npc15924.alias, 3)
end

function Quest76114:OnSubStart7611404(arg1)
    print("OnSubStart7611404")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15923.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc7125.alias, true, 1)
end

function Quest76114:OnSubFinish7611404(arg1)
    print("OnSubFinish7611404")
    this:SafeDestroyQuestNpc(npcs.Npc15923.alias, 3)
    this:LightNotifyTo(npcs.Npc7125.alias, 0, true)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_7611401, nil, nil)
    end)
end

return Quest76114
