require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40249 = class("Quest40249", QuestActorProxy)
Quest40249.defaultAlias = "Quest40249"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest40249:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest40249:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4024901"] = self.OnSubStart4024901,
        ["4024902"] = self.OnSubStart4024902,
        ["4024903"] = self.OnSubStart4024903,
        ["4024904"] = self.OnSubStart4024904,
        ["4024905"] = self.OnSubStart4024905,
        ["4024906"] = self.OnSubStart4024906
    }
end

function Quest40249:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4024901"] = self.OnSubFinish4024901,
        ["4024902"] = self.OnSubFinish4024902,
        ["4024903"] = self.OnSubFinish4024903,
        ["4024904"] = self.OnSubFinish4024904,
        ["4024905"] = self.OnSubFinish4024905,
        ["4024906"] = self.OnSubFinish4024906
    }
end

function Quest40249:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40249:Start()
    print("Start")
end

function Quest40249:OnDestroy()
    print("OnDestroy")
end

function Quest40249:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40249:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40249:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q4024901N17259Trigger")
    this:DestroyNpcTrigger("Q4024902N1093Trigger")
    this:DestroyNpcTrigger("Q4024903N17131Trigger")
    this:DestroyNpcTrigger("Q4024904N17131Trigger")
    this:DestroyNpcTrigger("Q4024905N17136Trigger")
    this:DestroyNpcTrigger("Q4024906N10232Trigger")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc17259.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17131.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17135.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17199.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17592.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17593.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17136.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10232.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1323.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2148.alias, 3)
    this:LightNotifyTo(npcs.Npc31174.alias, 0, true)
    this:LightNotifyTo(npcs.Npc31185_1.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2475.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2034.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2035.alias, 0, true)
    this:BanCrowdNpc(3115, 14, datas.InstanceIDList_4, false, true)
    this:CancelStoryByQuest(134024906)
    this:RecycleAllRes()
end

function Quest40249:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:BanCrowdNpc(3115, 14, datas.InstanceIDList_4, false, true)
end

function Quest40249:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40249:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40249:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40249:OnSubStart4024901(arg1)
    print("OnSubStart4024901")
    this:NpcCreateWithNpcTrigger(npcs.Npc17259.id, 0, 6, 4024901)
    this:BanCrowdNpc(3115, 14, datas.InstanceIDList_4, true, true)
end

function Quest40249:OnSubFinish4024901(arg1)
    print("OnSubFinish4024901")
    this:NpcDestroyImmediately(3, npcs.Npc17259.alias)
    this:BanCrowdNpc(3115, 14, datas.InstanceIDList_4, false, true)
    local actor = actorMgr:GetActor("40248")
    if actor ~= nil then
        actor:ClearNarratorTask()
    end
end

function Quest40249:OnSubStart4024902(arg1)
    print("OnSubStart4024902")
    this:NpcCreateWithNpcTrigger(npcs.Npc1093.id, 0, 10, 4024902)
    this:GetQuestNpcActor(npcs.Npc1093.alias, 40249):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc31174.alias, 1, true)
end

function Quest40249:OnSubFinish4024902(arg1)
    print("OnSubFinish4024902")
    this:NpcDestroyImmediately(3, npcs.Npc1093.alias)
end

function Quest40249:OnSubStart4024903(arg1)
    print("OnSubStart4024903")
    this:NpcCreateWithNpcTrigger(npcs.Npc17131.id, 0, 6, 4024903)
    this:GetQuestNpcActor(npcs.Npc17131.alias, 40249):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17135.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17135.alias, 40249):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17199.id, 0, false, 0)
    this:NotifyTo(npcs.Npc31185_1.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc17592.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17592.alias, 40249):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17593.id, 0, false, 0)
    this:NotifyTo(npcs.Npc31174.alias, 1, true)
end

function Quest40249:OnSubFinish4024903(arg1)
    print("OnSubFinish4024903")
    this:NpcDestroyImmediately(3, npcs.Npc17131.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17135.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17199.alias)
    this:LightNotifyTo(npcs.Npc31185_1.alias, 0, true)
    this:NpcDestroyImmediately(3, npcs.Npc17592.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17593.alias)
    this:LightNotifyTo(npcs.Npc31174.alias, 0, true)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest40249:OnSubStart4024904(arg1)
    print("OnSubStart4024904")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024904, 0, 7, 1, npcs.Npc17131.id)
    this:NotifyTo(npcs.Npc2475.alias, 1, true)
end

function Quest40249:OnSubFinish4024904(arg1)
    print("OnSubFinish4024904")
    this:NpcDestroyImmediately(3, npcs.Npc17131.alias)
end

function Quest40249:OnSubStart4024905(arg1)
    print("OnSubStart4024905")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024905, 0, 15, 1, npcs.Npc17136.id)
    this:NotifyTo(npcs.Npc2475.alias, 1, true)
end

function Quest40249:OnSubFinish4024905(arg1)
    print("OnSubFinish4024905")
    this:NpcDestroyImmediately(3, npcs.Npc17136.alias)
    this:LightNotifyTo(npcs.Npc2475.alias, 0, true)
end

function Quest40249:OnSubStart4024906(arg1)
    print("OnSubStart4024906")
    this:NpcCreateWithNpcTrigger(npcs.Npc10232.id, 0, 15, 4024906)
    this:CreateQuestNpc(arg1, npcs.Npc1323.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2148.id, 0, false, 0)
    this:NotifyTo(npcs.Npc2034.alias, 1, true)
    this:NotifyTo(npcs.Npc2035.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc10232.alias, 40249):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1323.alias, 40249):SitOnChair(0, false)
end

function Quest40249:OnSubFinish4024906(arg1)
    print("OnSubFinish4024906")
    this:NpcDestroyImmediately(3, npcs.Npc10232.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1323.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2148.alias)
    this:LightNotifyTo(npcs.Npc2034.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2035.alias, 0, true)
    this:DeployStoryByQuest(134024906)
end

return Quest40249
