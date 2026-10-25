require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71544 = class("Quest71544", QuestActorProxy)
Quest71544.defaultAlias = "Quest71544"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest71544:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest71544:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7154401"] = self.OnSubStart7154401}
end

function Quest71544:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7154401"] = self.OnSubFinish7154401}
end

function Quest71544:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71544:Start()
    print("Start")
end

function Quest71544:OnDestroy()
    print("OnDestroy")
end

function Quest71544:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71544:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71544:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1045.alias, 3)
    this:LightNotifyTo(npcs.Npc31166.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31167.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31168.alias, 0, true)
    this:BanCrowdNpc(3115, 14, datas.InstanceIDList_2, false, true)
    this:RecycleAllRes()
end

function Quest71544:OnMainPaused(arg1)
    print("OnMainPaused")
    this:BanCrowdNpc(3115, 14, datas.InstanceIDList_2, false, true)
end

function Quest71544:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest71544:OnSubStart7154401(arg1)
    print("OnSubStart7154401")
    this:CreateQuestNpc(arg1, npcs.Npc1045.id, 0, false, 0)
    this:NotifyTo(npcs.Npc31166.alias, 1, true)
    this:NotifyTo(npcs.Npc31167.alias, 1, true)
    this:NotifyTo(npcs.Npc31168.alias, 1, true)
    this:BanCrowdNpc(3115, 14, datas.InstanceIDList_2, true, true)
end

function Quest71544:OnSubFinish7154401(arg1)
    print("OnSubFinish7154401")
    this:NpcDestroyImmediately(3, npcs.Npc1045.alias)
    this:LightNotifyTo(npcs.Npc31166.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31167.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31168.alias, 0, true)
    this:BanCrowdNpc(3115, 14, datas.InstanceIDList_2, false, true)
end

return Quest71544
