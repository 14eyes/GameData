require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71545 = class("Quest71545", QuestActorProxy)
Quest71545.defaultAlias = "Quest71545"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest71545:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest71545:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7154501"] = self.OnSubStart7154501}
end

function Quest71545:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7154501"] = self.OnSubFinish7154501}
end

function Quest71545:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71545:Start()
    print("Start")
end

function Quest71545:OnDestroy()
    print("OnDestroy")
end

function Quest71545:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71545:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71545:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2623.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10233.alias, 3)
    this:LightNotifyTo(npcs.Npc31119.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31166.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31102.alias, 0, true)
    this:BanCrowdNpc(3115, 14, datas.InstanceIDList_3, false, true)
    this:RecycleAllRes()
end

function Quest71545:OnMainPaused(arg1)
    print("OnMainPaused")
    this:BanCrowdNpc(3115, 14, datas.InstanceIDList_3, false, true)
end

function Quest71545:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest71545:OnSubStart7154501(arg1)
    print("OnSubStart7154501")
    this:CreateQuestNpc(arg1, npcs.Npc1045.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2623.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10233.id, 0, false, 0)
    this:NotifyTo(npcs.Npc31119.alias, 1, true)
    this:NotifyTo(npcs.Npc31166.alias, 1, true)
    this:NotifyTo(npcs.Npc31102.alias, 1, true)
    this:BanCrowdNpc(3115, 14, datas.InstanceIDList_3, true, true)
end

function Quest71545:OnSubFinish7154501(arg1)
    print("OnSubFinish7154501")
    this:NpcDestroyImmediately(3, npcs.Npc1045.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2623.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10233.alias)
    this:LightNotifyTo(npcs.Npc31119.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31166.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31102.alias, 0, true)
    this:BanCrowdNpc(3115, 14, datas.InstanceIDList_3, false, true)
end

return Quest71545
