require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7018 = class("Quest7018", QuestActorProxy)
Quest7018.defaultAlias = "Quest7018"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7018:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["701801"] = self.OnSubStart701801,
        ["701802"] = self.OnSubStart701802,
        ["701803"] = self.OnSubStart701803,
        ["701811"] = self.OnSubStart701811,
        ["701804"] = self.OnSubStart701804,
        ["701805"] = self.OnSubStart701805,
        ["701806"] = self.OnSubStart701806,
        ["701807"] = self.OnSubStart701807,
        ["701808"] = self.OnSubStart701808,
        ["701809"] = self.OnSubStart701809,
        ["701810"] = self.OnSubStart701810
    }
end

function Quest7018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["701801"] = self.OnSubFinish701801,
        ["701802"] = self.OnSubFinish701802,
        ["701803"] = self.OnSubFinish701803,
        ["701811"] = self.OnSubFinish701811,
        ["701804"] = self.OnSubFinish701804,
        ["701805"] = self.OnSubFinish701805,
        ["701806"] = self.OnSubFinish701806,
        ["701807"] = self.OnSubFinish701807,
        ["701808"] = self.OnSubFinish701808,
        ["701809"] = self.OnSubFinish701809,
        ["701810"] = self.OnSubFinish701810
    }
end

function Quest7018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["701805"] = self.OnSubFailed701805,
        ["701806"] = self.OnSubFailed701806,
        ["701807"] = self.OnSubFailed701807,
        ["701808"] = self.OnSubFailed701808,
        ["701809"] = self.OnSubFailed701809,
        ["701810"] = self.OnSubFailed701810
    }
end

function Quest7018:Start()
    print("Start")
end

function Quest7018:OnDestroy()
    print("OnDestroy")
end

function Quest7018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7018:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7018TransmitToDownTrigger", 7018)
    this:ActorDestroy("Q7018TransmitToDownTrigger", 7018)
    this:ActorDestroy("Q7018TransmitToDownTrigger", 7018)
end

function Quest7018:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest7018:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7018:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7018:OnSubStart701801(arg1)
    print("OnSubStart701801")
    this:DeployStoryByQuest(110701801)
end

function Quest7018:OnSubFinish701801(arg1)
    print("OnSubFinish701801")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_701804, nil)
    end)

    this:CancelAllStory()
end

function Quest7018:OnSubStart701802(arg1)
    print("OnSubStart701802")
    this:NpcCreateWithNpcTrigger(npcs.Npc1330.id, 0, 10, 701802)
    this:CreateQuestNpc(arg1, npcs.Npc1080.id, 0, false, 0)
    this:NotifyTo(npcs.Npc7456.alias, 1, true)
    this:NotifyTo(npcs.Npc7457.alias, 1, true)
    this:NotifyTo(npcs.Npc7458.alias, 1, true)
    this:NotifyTo(npcs.Npc7459.alias, 1, true)
end

function Quest7018:OnSubFinish701802(arg1)
    print("OnSubFinish701802")
    this:NpcDestroyImmediately(3, npcs.Npc1330.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1080.alias)
    this:ClearNarratorTask()
end

function Quest7018:OnSubStart701803(arg1)
    print("OnSubStart701803")
    this:NotifyTo(npcs.Npc7456.alias, 1, true)
    this:NotifyTo(npcs.Npc7457.alias, 1, true)
    this:NotifyTo(npcs.Npc7458.alias, 1, true)
    this:NotifyTo(npcs.Npc7459.alias, 1, true)
end

function Quest7018:OnSubFinish701803(arg1)
    print("OnSubFinish701803")
    this:LightNotifyTo(npcs.Npc7456.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7457.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7458.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7459.alias, 0, true)
end

function Quest7018:OnSubStart701811(arg1)
    print("OnSubStart701811")
    this:CreateQuestNpc(arg1, npcs.Npc17005.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17005.alias, 7018):DoFreeStyle(1320, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc2631.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2631.alias, 7018):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DeployRangeStoryByQuest(110701800, 20367, {x = 470, y = 287.814, z = 601}, 200, 300)
end

function Quest7018:OnSubFinish701811(arg1)
    print("OnSubFinish701811")
end

function Quest7018:OnSubStart701804(arg1)
    print("OnSubStart701804")
    this:GetQuestNpcActor(npcs.Npc17005.alias, 7018):DoFreeStyle(1320, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 10, 701804)
    this:GetQuestNpcActor(npcs.Npc2631.alias, 7018):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest7018:OnSubFinish701804(arg1)
    print("OnSubFinish701804")
    this:NpcDestroyImmediately(20367, npcs.Npc17000.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc17005.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc16999.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc2631.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
    this:CancelAllStory()
end

function Quest7018:OnSubStart701805(arg1)
    print("OnSubStart701805")
    this:DeployRangeStoryByQuest(110701802, 20367, {x = 465.55, y = 171.024, z = 449.277}, 50, 60)
    actorMgr:CreateActorWithPos("Q7018TransmitToDownTrigger", "Actor/Gadget/Q7018TransmitToDownTrigger", 70900002, 0, points._Q7018TransmitToDownTriggerPoint_.pos, points._Q7018TransmitToDownTriggerPoint_.rot, true, false, 20367, nil, 0, 7018)
    this:DeployRangeStoryByQuest(110701803, 20367, {x = 465.55, y = 171.024, z = 449.277}, 50, 60)
end

function Quest7018:OnSubFinish701805(arg1)
    print("OnSubFinish701805")
    this:ActorDestroy("Q7018TransmitToDownTrigger", 7018)
    this:CancelRangeStoryByQuest(110701802)
end

function Quest7018:OnSubFailed701805(arg1)
    print("OnSubFailed701805")
    this:RecycleAllRes()
end

function Quest7018:OnSubStart701806(arg1)
    print("OnSubStart701806")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 30, 701806)
    this:DeployRangeStoryByQuest(110701803, 20367, {x = 465.55, y = 171.024, z = 449.277}, 50, 60)
end

function Quest7018:OnSubFinish701806(arg1)
    print("OnSubFinish701806")
    this:NpcDestroyImmediately(20367, npcs.Npc16999.alias)
end

function Quest7018:OnSubFailed701806(arg1)
    print("OnSubFailed701806")
    this:RecycleAllRes()
end

function Quest7018:OnSubStart701807(arg1)
    print("OnSubStart701807")
    this:DeployRangeStoryByQuest(110701802, 20367, {x = 465.55, y = 171.024, z = 449.277}, 50, 60)
    actorMgr:CreateActorWithPos("Q7018TransmitToDownTrigger", "Actor/Gadget/Q7018TransmitToDownTrigger", 70900002, 0, points._Q7018TransmitToDownTriggerPoint_.pos, points._Q7018TransmitToDownTriggerPoint_.rot, true, false, 20367, nil, 0, 7018)
    this:DeployRangeStoryByQuest(110701803, 20367, {x = 465.55, y = 171.024, z = 449.277}, 50, 60)
end

function Quest7018:OnSubFinish701807(arg1)
    print("OnSubFinish701807")
    this:ActorDestroy("Q7018TransmitToDownTrigger", 7018)
    this:CancelRangeStoryByQuest(110701802)
end

function Quest7018:OnSubFailed701807(arg1)
    print("OnSubFailed701807")
    this:RecycleAllRes()
end

function Quest7018:OnSubStart701808(arg1)
    print("OnSubStart701808")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 30, 701808)
    this:DeployRangeStoryByQuest(110701803, 20367, {x = 465.55, y = 171.024, z = 449.277}, 50, 60)
end

function Quest7018:OnSubFinish701808(arg1)
    print("OnSubFinish701808")
    this:NpcDestroyImmediately(20367, npcs.Npc16999.alias)
end

function Quest7018:OnSubFailed701808(arg1)
    print("OnSubFailed701808")
    this:RecycleAllRes()
end

function Quest7018:OnSubStart701809(arg1)
    print("OnSubStart701809")
    this:DeployRangeStoryByQuest(110701802, 20367, {x = 465.55, y = 171.024, z = 449.277}, 50, 60)
    actorMgr:CreateActorWithPos("Q7018TransmitToDownTrigger", "Actor/Gadget/Q7018TransmitToDownTrigger", 70900002, 0, points._Q7018TransmitToDownTriggerPoint_.pos, points._Q7018TransmitToDownTriggerPoint_.rot, true, false, 20367, nil, 0, 7018)
    this:DeployRangeStoryByQuest(110701803, 20367, {x = 465.55, y = 171.024, z = 449.277}, 50, 60)
end

function Quest7018:OnSubFinish701809(arg1)
    print("OnSubFinish701809")
    this:ActorDestroy("Q7018TransmitToDownTrigger", 7018)
    this:CancelRangeStoryByQuest(110701802)
end

function Quest7018:OnSubFailed701809(arg1)
    print("OnSubFailed701809")
    this:RecycleAllRes()
end

function Quest7018:OnSubStart701810(arg1)
    print("OnSubStart701810")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 30, 701810)
    this:DeployRangeStoryByQuest(110701803, 20367, {x = 465.55, y = 171.024, z = 449.277}, 50, 60)
end

function Quest7018:OnSubFinish701810(arg1)
    print("OnSubFinish701810")
    this:NpcDestroyImmediately(20367, npcs.Npc16999.alias)
    this:CancelAllStory()
end

function Quest7018:OnSubFailed701810(arg1)
    print("OnSubFailed701810")
    this:RecycleAllRes()
end

return Quest7018
