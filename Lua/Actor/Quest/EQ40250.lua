require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40250 = class("Quest40250", QuestActorProxy)
Quest40250.defaultAlias = "Quest40250"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest40250:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest40250:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4025001"] = self.OnSubStart4025001,
        ["4025008"] = self.OnSubStart4025008,
        ["4025002"] = self.OnSubStart4025002,
        ["4025010"] = self.OnSubStart4025010,
        ["4025003"] = self.OnSubStart4025003,
        ["4025004"] = self.OnSubStart4025004,
        ["4025005"] = self.OnSubStart4025005,
        ["4025009"] = self.OnSubStart4025009,
        ["4025006"] = self.OnSubStart4025006,
        ["4025007"] = self.OnSubStart4025007
    }
end

function Quest40250:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4025001"] = self.OnSubFinish4025001,
        ["4025008"] = self.OnSubFinish4025008,
        ["4025002"] = self.OnSubFinish4025002,
        ["4025010"] = self.OnSubFinish4025010,
        ["4025003"] = self.OnSubFinish4025003,
        ["4025004"] = self.OnSubFinish4025004,
        ["4025005"] = self.OnSubFinish4025005,
        ["4025009"] = self.OnSubFinish4025009,
        ["4025006"] = self.OnSubFinish4025006,
        ["4025007"] = self.OnSubFinish4025007
    }
end

function Quest40250:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4025003"] = self.OnSubFailed4025003, ["4025005"] = self.OnSubFailed4025005}
end

function Quest40250:Start()
    print("Start")
end

function Quest40250:OnDestroy()
    print("OnDestroy")
end

function Quest40250:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40250:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40250:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q4025002N1084Trigger")
    this:DestroyNpcTrigger("Q4025004N1093Trigger")
    this:DestroyNpcTrigger("Q4025006N1093Trigger")
    this:DestroyNpcTrigger("Q4025007N1093Trigger")
    this:DestroyNpcTrigger("Q4025008N1093Trigger")
    this:DestroyNpcTrigger("Q4025009N1093Trigger")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc10045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1041.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1084.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17131.alias, 3)
    this:LightNotifyTo(npcs.Npc2114.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2115.alias, 0, true)
    this:BanCrowdNpc(3115, 5, datas.InstanceIDList, false, true)
    this:CancelStoryByQuest(134025007)
    this:CancelStoryByQuest(134025009)
    this:CancelStoryByQuest(134025008)
    this:CancelStoryByQuest(134025010)
    this:CancelStoryByQuest(134025012)
    this:RecycleAllRes()
end

function Quest40250:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:BanCrowdNpc(3115, 5, datas.InstanceIDList, false, true)
end

function Quest40250:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40250:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40250:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40250:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40250:OnSubStart4025001(arg1)
    print("OnSubStart4025001")
end

function Quest40250:OnSubFinish4025001(arg1)
    print("OnSubFinish4025001")
    this:QuestNarratorTask(datas.NarratorWithId_4025001, nil)
    this:CancelStoryByQuest(134024906)
end

function Quest40250:OnSubStart4025008(arg1)
    print("OnSubStart4025008")
    this:NpcCreateWithNpcTrigger(npcs.Npc1093.id, 0, 15, 4025008)
    this:CreateQuestNpc(arg1, npcs.Npc17131.id, 0, false, 0)
    this:BanCrowdNpc(3115, 5, datas.InstanceIDList, true, true)
end

function Quest40250:OnSubFinish4025008(arg1)
    print("OnSubFinish4025008")
    this:NpcDestroyImmediately(3, npcs.Npc1093.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17131.alias)
    this:ClearNarratorTask()
end

function Quest40250:OnSubStart4025002(arg1)
    print("OnSubStart4025002")
    this:CreateQuestNpc(arg1, npcs.Npc10045.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1021.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1041.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1084.id, 0, 15, 4025002)
    this:GetQuestNpcActor(npcs.Npc1084.alias, 40250):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc2114.alias, 1, true)
    this:NotifyTo(npcs.Npc2115.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1041.alias, 40250):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc10045.alias, 40250):SitOnChair(0, true)
    this:BanCrowdNpc(3115, 5, datas.InstanceIDList, true, true)
end

function Quest40250:OnSubFinish4025002(arg1)
    print("OnSubFinish4025002")
    this:NpcDestroyImmediately(3, npcs.Npc10045.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1021.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1041.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1084.alias)
    this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2124, dungeonId = 1338, questId = 4025002, questPointCfgId = 1}, datas.__EmbedClientConfig_11, nil, nil)
    this:BanCrowdNpc(3115, 5, datas.InstanceIDList, false, true)
end

function Quest40250:OnSubStart4025010(arg1)
    print("OnSubStart4025010")
    this:NotifyTo(npcs.Npc2114.alias, 1, true)
    this:NotifyTo(npcs.Npc2115.alias, 1, true)
end

function Quest40250:OnSubFinish4025010(arg1)
    print("OnSubFinish4025010")
end

function Quest40250:OnSubStart4025003(arg1)
    print("OnSubStart4025003")
    this:NotifyTo(npcs.Npc2114.alias, 1, true)
    this:NotifyTo(npcs.Npc2115.alias, 1, true)
end

function Quest40250:OnSubFinish4025003(arg1)
    print("OnSubFinish4025003")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Quest40250:OnSubFailed4025003(arg1)
    print("OnSubFailed4025003")
    this:RecycleAllRes()
end

function Quest40250:OnSubStart4025004(arg1)
    print("OnSubStart4025004")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1093.id, 0, 4025004, 8, true)
    this:NotifyTo(npcs.Npc2114.alias, 1, true)
    this:NotifyTo(npcs.Npc2115.alias, 1, true)
end

function Quest40250:OnSubFinish4025004(arg1)
    print("OnSubFinish4025004")
    this:NpcDestroyImmediately(3, npcs.Npc1093.alias)
end

function Quest40250:OnSubStart4025005(arg1)
    print("OnSubStart4025005")
    this:NotifyTo(npcs.Npc2114.alias, 1, true)
    this:NotifyTo(npcs.Npc2115.alias, 1, true)
end

function Quest40250:OnSubFinish4025005(arg1)
    print("OnSubFinish4025005")
end

function Quest40250:OnSubFailed4025005(arg1)
    print("OnSubFailed4025005")
    this:RecycleAllRes()
end

function Quest40250:OnSubStart4025009(arg1)
    print("OnSubStart4025009")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1093.id, 0, 4025009, 20, true)
    this:NotifyTo(npcs.Npc2114.alias, 1, true)
    this:NotifyTo(npcs.Npc2115.alias, 1, true)
end

function Quest40250:OnSubFinish4025009(arg1)
    print("OnSubFinish4025009")
    this:NpcDestroyImmediately(3, npcs.Npc1093.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Quest40250:OnSubStart4025006(arg1)
    print("OnSubStart4025006")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1093.id, 0, 4025006, 15, true)
    this:NotifyTo(npcs.Npc2114.alias, 1, true)
    this:NotifyTo(npcs.Npc2115.alias, 1, true)
end

function Quest40250:OnSubFinish4025006(arg1)
    print("OnSubFinish4025006")
    this:NpcDestroyImmediately(3, npcs.Npc1093.alias)
    this:LightNotifyTo(npcs.Npc2114.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2115.alias, 0, true)
end

function Quest40250:OnSubStart4025007(arg1)
    print("OnSubStart4025007")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4025007, 0, 8, 1, npcs.Npc1093.id)
end

function Quest40250:OnSubFinish4025007(arg1)
    print("OnSubFinish4025007")
    this:NpcDestroyImmediately(3, npcs.Npc1093.alias)
    this:DeployStoryByQuest(134025007)
    this:DeployStoryByQuest(134025009)
    this:DeployStoryByQuest(134025008)
    this:DeployStoryByQuest(134025010)
    this:DeployStoryByQuest(134025012)
end

return Quest40250
