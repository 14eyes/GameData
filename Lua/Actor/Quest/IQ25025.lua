require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25025 = class("Quest25025", QuestActorProxy)
Quest25025.defaultAlias = "Quest25025"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest25025:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest25025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2502501"] = self.OnSubStart2502501,
        ["2502502"] = self.OnSubStart2502502,
        ["2502504"] = self.OnSubStart2502504,
        ["2502511"] = self.OnSubStart2502511,
        ["2502512"] = self.OnSubStart2502512,
        ["2502505"] = self.OnSubStart2502505,
        ["2502503"] = self.OnSubStart2502503,
        ["2502506"] = self.OnSubStart2502506,
        ["2502507"] = self.OnSubStart2502507
    }
end

function Quest25025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2502501"] = self.OnSubFinish2502501,
        ["2502502"] = self.OnSubFinish2502502,
        ["2502504"] = self.OnSubFinish2502504,
        ["2502511"] = self.OnSubFinish2502511,
        ["2502512"] = self.OnSubFinish2502512,
        ["2502505"] = self.OnSubFinish2502505,
        ["2502503"] = self.OnSubFinish2502503,
        ["2502506"] = self.OnSubFinish2502506,
        ["2502507"] = self.OnSubFinish2502507
    }
end

function Quest25025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25025:Start()
    print("Start")
end

function Quest25025:OnDestroy()
    print("OnDestroy")
end

function Quest25025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25025:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc14270.alias, 3)
    this:LightNotifyTo(npcs.Npc6151.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6190.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6150.alias, 0, true)
    this:DestroyNpcTrigger("Q2502501N6063Trigger")
    this:DestroyNpcTrigger("Q2502507N6063Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc6063.alias, 3)
end

function Quest25025:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 250250401 then
        actorUtils.FinishQuestID(false, 2502504)
        actorUtils.FinishQuestID(false, 2502511)
    elseif arg1 == 250250402 then
        actorUtils.FinishQuestID(false, 2502504)
        actorUtils.FinishQuestID(false, 2502512)
    end
end

function Quest25025:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest25025:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest25025:OnSubStart2502501(arg1)
    print("OnSubStart2502501")
    this:NpcCreateWithNpcTrigger(npcs.Npc6063.id, 0, 5, 2502501)
    this:CreateQuestNpc(arg1, npcs.Npc14270.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6151.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6190.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6150.alias, true, 1)
end

function Quest25025:OnSubFinish2502501(arg1)
    print("OnSubFinish2502501")
end

function Quest25025:OnSubStart2502502(arg1)
    print("OnSubStart2502502")
    this:DailyNpcSafeHideSelf(npcs.Npc6151.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6190.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6150.alias, true, 1)
end

function Quest25025:OnSubFinish2502502(arg1)
    print("OnSubFinish2502502")
end

function Quest25025:OnSubStart2502504(arg1)
    print("OnSubStart2502504")
    this:CreateQuestNpc(arg1, npcs.Npc6063.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14270.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6151.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6190.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6150.alias, true, 1)
end

function Quest25025:OnSubFinish2502504(arg1)
    print("OnSubFinish2502504")
    this:SafeDestroyQuestNpc(npcs.Npc14270.alias, 3)
end

function Quest25025:OnSubStart2502511(arg1)
    print("OnSubStart2502511")
end

function Quest25025:OnSubFinish2502511(arg1)
    print("OnSubFinish2502511")
end

function Quest25025:OnSubStart2502512(arg1)
    print("OnSubStart2502512")
end

function Quest25025:OnSubFinish2502512(arg1)
    print("OnSubFinish2502512")
end

function Quest25025:OnSubStart2502505(arg1)
    print("OnSubStart2502505")
    this:CreateQuestNpc(arg1, npcs.Npc6063.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6151.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6190.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6150.alias, true, 1)
end

function Quest25025:OnSubFinish2502505(arg1)
    print("OnSubFinish2502505")
    this:SafeDestroyQuestNpc(npcs.Npc6063.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14270.alias, 3)
    this:LightNotifyTo(npcs.Npc6151.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6190.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6150.alias, 0, true)
end

function Quest25025:OnSubStart2502503(arg1)
    print("OnSubStart2502503")
    this:DailyNpcSafeHideSelf(npcs.Npc6151.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6190.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6150.alias, true, 1)
end

function Quest25025:OnSubFinish2502503(arg1)
    print("OnSubFinish2502503")
end

function Quest25025:OnSubStart2502506(arg1)
    print("OnSubStart2502506")
    this:CreateQuestNpc(arg1, npcs.Npc6063.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14270.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6151.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6190.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6150.alias, true, 1)
end

function Quest25025:OnSubFinish2502506(arg1)
    print("OnSubFinish2502506")
    this:SafeDestroyQuestNpc(npcs.Npc6063.alias, 3)
end

function Quest25025:OnSubStart2502507(arg1)
    print("OnSubStart2502507")
    this:NpcCreateWithNpcTrigger(npcs.Npc6063.id, 0, 5, 2502507)
    this:CreateQuestNpc(arg1, npcs.Npc14270.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6151.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6190.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6150.alias, true, 1)
end

function Quest25025:OnSubFinish2502507(arg1)
    print("OnSubFinish2502507")
    this:SafeDestroyQuestNpc(npcs.Npc6063.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14270.alias, 3)
    this:LightNotifyTo(npcs.Npc6151.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6190.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6150.alias, 0, true)
end

return Quest25025
