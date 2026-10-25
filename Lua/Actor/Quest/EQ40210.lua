require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40210 = class("Quest40210", QuestActorProxy)
Quest40210.defaultAlias = "Quest40210"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40210:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40210:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4021001"] = self.OnSubStart4021001,
        ["4021002"] = self.OnSubStart4021002,
        ["4021003"] = self.OnSubStart4021003,
        ["4021004"] = self.OnSubStart4021004,
        ["4021005"] = self.OnSubStart4021005,
        ["4021013"] = self.OnSubStart4021013,
        ["4021006"] = self.OnSubStart4021006,
        ["4021012"] = self.OnSubStart4021012,
        ["4021007"] = self.OnSubStart4021007,
        ["4021011"] = self.OnSubStart4021011,
        ["4021008"] = self.OnSubStart4021008,
        ["4021009"] = self.OnSubStart4021009,
        ["4021010"] = self.OnSubStart4021010
    }
end

function Quest40210:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4021001"] = self.OnSubFinish4021001,
        ["4021002"] = self.OnSubFinish4021002,
        ["4021003"] = self.OnSubFinish4021003,
        ["4021004"] = self.OnSubFinish4021004,
        ["4021005"] = self.OnSubFinish4021005,
        ["4021013"] = self.OnSubFinish4021013,
        ["4021006"] = self.OnSubFinish4021006,
        ["4021012"] = self.OnSubFinish4021012,
        ["4021007"] = self.OnSubFinish4021007,
        ["4021011"] = self.OnSubFinish4021011,
        ["4021008"] = self.OnSubFinish4021008,
        ["4021009"] = self.OnSubFinish4021009,
        ["4021010"] = self.OnSubFinish4021010
    }
end

function Quest40210:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4021006"] = self.OnSubFailed4021006,
        ["4021012"] = self.OnSubFailed4021012,
        ["4021011"] = self.OnSubFailed4021011,
        ["4021008"] = self.OnSubFailed4021008,
        ["4021009"] = self.OnSubFailed4021009
    }
end

function Quest40210:Start()
    print("Start")
end

function Quest40210:OnDestroy()
    print("OnDestroy")
end

function Quest40210:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40210:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40210:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:UnCallDelayByQuest("1")
    this:UnCallDelayByQuest("2")
    this:UnCallDelayByQuest("3")
    this:ClearNarratorTask()
    this:RemoveLocalGadget(70291004, "1")
    this:RemoveLocalGadget(70291004, "2")
    this:RemoveLocalGadget(74024005, "1")
    this:ActorDestroy("Q40210Trigger")
    this:ActorDestroy("Q40210Trigger_1")
    this:ActorDestroy("Q40210Trigger_2")
    this:ActorDestroy("Q40210Trigger_3")
    this:ActorDestroy("Q40210Trigger_4")
    this:ActorDestroy("Q40210Trigger_5")
    this:ActorDestroy("Q40210Trigger_6")
    this:ActorDestroy("Q40210Trigger_7")
    this:ActorDestroy("Q40210Trigger_8")
    this:ActorDestroy("Q40210Trigger_9")
    this:ActorDestroy("Q40210Trigger_10")
    this:BanCrowdNpc(3302, 22, datas.CrowdData, false, true)
    this:BanCrowdNpc(3302, 6, datas.CrowdData1, false, true)
    this:CancelStoryByQuest(134021001)
    this:CancelStoryByQuest(134021000)
    this:DestroyQuestNpcActor(npcs.Npc1051.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13992.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1050.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1058.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc4476.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15839.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15576.alias, 3)
    this:LightNotifyTo(npcs.Npc4089.alias, 0, true)
end

function Quest40210:OnMainPaused(arg1)
    print("OnMainPaused")
    this:UnCallDelayByQuest("1")
    this:UnCallDelayByQuest("2")
    this:UnCallDelayByQuest("3")
    this:ClearNarratorTask()
    this:RemoveLocalGadget(70291004, "1")
    this:RemoveLocalGadget(70291004, "2")
    this:RemoveLocalGadget(74024005, "1")
    this:ActorDestroy("Q40210Trigger")
    this:ActorDestroy("Q40210Trigger_1")
    this:ActorDestroy("Q40210Trigger_2")
    this:ActorDestroy("Q40210Trigger_3")
    this:ActorDestroy("Q40210Trigger_4")
    this:ActorDestroy("Q40210Trigger_5")
    this:ActorDestroy("Q40210Trigger_6")
    this:ActorDestroy("Q40210Trigger_7")
    this:ActorDestroy("Q40210Trigger_8")
    this:ActorDestroy("Q40210Trigger_9")
    this:ActorDestroy("Q40210Trigger_10")
    this:BanCrowdNpc(3302, 22, datas.CrowdData, false, true)
    this:BanCrowdNpc(3302, 6, datas.CrowdData1, false, true)
    this:CancelStoryByQuest(134021001)
    this:CancelStoryByQuest(134021000)
    this:DestroyQuestNpcActor(npcs.Npc1051.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13992.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1050.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1058.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
    this:DestroyQuestNpcActor(npcs.Npc4476.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15839.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15576.alias, 3)
    this:LightNotifyTo(npcs.Npc4089.alias, 0, true)
end

function Quest40210:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:ActionSafeCall(function(arg1)
            this:GetQuestNpcActor(npcs.Npc1063.alias, 40210):LookAt({x = -772.2, y = 160.2, z = 2409.2})
        end)
    end
end

function Quest40210:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40210:OnSubStart4021001(arg1)
    print("OnSubStart4021001")
    this:CreateQuestNpc(arg1, npcs.Npc1051.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13992.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc13992.alias, 40210):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1051.alias, 40210):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc4089.alias, 1, true)
    actorMgr:CreateActorWithPos("Q40210Trigger_4", "Actor/Gadget/Q40210Trigger_4", 70900002, 0, points._Q40210Trigger_4Point_.pos, points._Q40210Trigger_4Point_.rot, true, false, 3)
end

function Quest40210:OnSubFinish4021001(arg1)
    print("OnSubFinish4021001")
    this:DestroyQuestNpcActor(npcs.Npc1051.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13992.alias, 3)
    actorUtils.ShowContext("SumeruAdvMainPage")
end

function Quest40210:OnSubStart4021002(arg1)
    print("OnSubStart4021002")
    this:CreateQuestNpc(arg1, npcs.Npc1050.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1058.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1063.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1085.id, 0, false, 0)
    this:CreateLocalGadget(70291004, "1", {x = -771.732, y = 160.6, z = 2410.179}, {x = 0, y = -155.982, z = 0}, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 40210):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 40210):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40210):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 40210):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1085.alias, 40210):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc4089.alias, 1, true)
    actorMgr:CreateActorWithPos("Q40210Trigger_6", "Actor/Gadget/Q40210Trigger_6", 70900002, 0, points._Q40210Trigger_6Point_.pos, points._Q40210Trigger_6Point_.rot, true, false, 3)
end

function Quest40210:OnSubFinish4021002(arg1)
    print("OnSubFinish4021002")
    this:DestroyQuestNpcActor(npcs.Npc1050.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 3)
    this:LightNotifyTo(npcs.Npc4089.alias, 0, true)
end

function Quest40210:OnSubStart4021003(arg1)
    print("OnSubStart4021003")
    this:CreateQuestNpc(arg1, npcs.Npc4476.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15839.id, 0, false, 0)
    this:CreateLocalGadget(70291004, "1", {x = -771.732, y = 160.6, z = 2410.179}, {x = 0, y = -155.982, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(70291004, "2", {x = -846.127, y = 150.45, z = 2410.652}, {x = 0, y = 12.833, z = 0}, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 40210):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc4476.alias, 40210):SitOnChair(8040, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1063.alias, 40210)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:LookAt({x = -772.2, y = 160.2, z = 2409.2})
    this:GetQuestNpcActor(npcs.Npc4476.alias, 40210):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 40210):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15839.alias, 40210):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 40210):DoFreeStyle(1190, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q40210Trigger_5", "Actor/Gadget/Q40210Trigger_5", 70900002, 0, points._Q40210Trigger_5Point_.pos, points._Q40210Trigger_5Point_.rot, true, false, 3)
end

function Quest40210:OnSubFinish4021003(arg1)
    print("OnSubFinish4021003")
    this:RemoveLocalGadget(70291004, "2")
end

function Quest40210:OnSubStart4021004(arg1)
    print("OnSubStart4021004")
    this:CreateQuestNpc(arg1, npcs.Npc1050.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15839.alias, 40210):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc4476.alias, 40210):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 40210):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40210):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateLocalGadget(74024005, "1", {x = -769.475, y = 161.223, z = 2408.748}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(70291004, "1", {x = -771.732, y = 160.6, z = 2410.179}, {x = 0, y = -155.982, z = 0}, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 40210):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 40210):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4476.alias, 40210):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40210):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 40210):DisableInteeHeadCtrl(true)
end

function Quest40210:OnSubFinish4021004(arg1)
    print("OnSubFinish4021004")
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1085.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc4476.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15839.alias, 3)
    this:RemoveLocalGadget(70291004, "1")
end

function Quest40210:OnSubStart4021005(arg1)
    print("OnSubStart4021005")
    actorMgr:CreateActorWithPos("Q40210Trigger", "Actor/Gadget/Q40210Trigger", 70900002, 0, points._Q40210TriggerPoint_.pos, points._Q40210TriggerPoint_.rot, true, false, 3)
    this:BanCrowdNpc(3302, 22, datas.CrowdData, true, true)
    this:CreateLocalGadget(74024005, "1", {x = -769.475, y = 161.223, z = 2408.748}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40210):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 40210):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40210):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 40210):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest40210:OnSubFinish4021005(arg1)
    print("OnSubFinish4021005")
    this:RemoveLocalGadget(74024005, "1")
end

function Quest40210:OnSubStart4021013(arg1)
    print("OnSubStart4021013")
    actorMgr:CreateActorWithPos("Q40210Trigger_9", "Actor/Gadget/Q40210Trigger_9", 70900002, 0, points._Q40210Trigger_9Point_.pos, points._Q40210Trigger_9Point_.rot, true, false, 3)
    this:BanCrowdNpc(3302, 22, datas.CrowdData, true, true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40210):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 40210):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40210):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 40210):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 40210):SitOnChair(0, false)
end

function Quest40210:OnSubFinish4021013(arg1)
    print("OnSubFinish4021013")
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 3)
    this:ActorDestroy("Q40210Trigger_9")
end

function Quest40210:OnSubStart4021006(arg1)
    print("OnSubStart4021006")
    actorMgr:CreateActorWithPos("Q40210Trigger_1", "Actor/Gadget/Q40210Trigger_1", 70900002, 0, points._Q40210Trigger_1Point_.pos, points._Q40210Trigger_1Point_.rot, true, false, 20282)
end

function Quest40210:OnSubFinish4021006(arg1)
    print("OnSubFinish4021006")
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
end

function Quest40210:OnSubFailed4021006(arg1)
    print("OnSubFailed4021006")
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 20282)
    this:ActorDestroy("Q40210Trigger_1")
end

function Quest40210:OnSubStart4021012(arg1)
    print("OnSubStart4021012")
    actorMgr:CreateActorWithPos("Q40210Trigger_3", "Actor/Gadget/Q40210Trigger_3", 70900002, 0, points._Q40210Trigger_3Point_.pos, points._Q40210Trigger_3Point_.rot, true, false, 20282)
end

function Quest40210:OnSubFinish4021012(arg1)
    print("OnSubFinish4021012")
end

function Quest40210:OnSubFailed4021012(arg1)
    print("OnSubFailed4021012")
    this:ActorDestroy("Q40210Trigger_3")
    this:ClearNarratorTask()
end

function Quest40210:OnSubStart4021007(arg1)
    print("OnSubStart4021007")
end

function Quest40210:OnSubFinish4021007(arg1)
    print("OnSubFinish4021007")
    this:CallDelayByQuest("1", 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4021002, nil)
    end)
end

function Quest40210:OnSubStart4021011(arg1)
    print("OnSubStart4021011")
    actorMgr:CreateActorWithPos("Q40210Trigger_8", "Actor/Gadget/Q40210Trigger_8", 70900002, 0, points._Q40210Trigger_8Point_.pos, points._Q40210Trigger_8Point_.rot, true, false, 20282)
end

function Quest40210:OnSubFinish4021011(arg1)
    print("OnSubFinish4021011")
    this:ActorDestroy("Q40210Trigger_8")
end

function Quest40210:OnSubFailed4021011(arg1)
    print("OnSubFailed4021011")
    this:ActorDestroy("Q40210Trigger_8")
    this:CancelStoryByQuest(134021000)
    this:ClearNarratorTask()
end

function Quest40210:OnSubStart4021008(arg1)
    print("OnSubStart4021008")
    actorMgr:CreateActorWithPos("Q40210Trigger_7", "Actor/Gadget/Q40210Trigger_7", 70900002, 0, points._Q40210Trigger_7Point_.pos, points._Q40210Trigger_7Point_.rot, true, false, 20282)
end

function Quest40210:OnSubFinish4021008(arg1)
    print("OnSubFinish4021008")
end

function Quest40210:OnSubFailed4021008(arg1)
    print("OnSubFailed4021008")
    this:DestroyQuestNpcActor(npcs.Npc15576.alias, 20282)
    this:CancelStoryByQuest(134021000)
    this:ActorDestroy("Q40210Trigger_7")
end

function Quest40210:OnSubStart4021009(arg1)
    print("OnSubStart4021009")
    this:CreateQuestNpc(arg1, npcs.Npc15576.id, 0, false, 0)
    this:DeployStoryByQuest(134021001)
end

function Quest40210:OnSubFinish4021009(arg1)
    print("OnSubFinish4021009")
    this:CancelStoryByQuest(134021001)
    this:DestroyQuestNpcActor(npcs.Npc15576.alias, 20282)
end

function Quest40210:OnSubFailed4021009(arg1)
    print("OnSubFailed4021009")
    this:CancelStoryByQuest(134021001)
    this:DestroyQuestNpcActor(npcs.Npc15576.alias, 20282)
end

function Quest40210:OnSubStart4021010(arg1)
    print("OnSubStart4021010")
    actorMgr:CreateActorWithPos("Q40210Trigger_10", "Actor/Gadget/Q40210Trigger_10", 70900002, 0, points._Q40210Trigger_10Point_.pos, points._Q40210Trigger_10Point_.rot, true, false, 20282)
    this:CreateQuestNpc(arg1, npcs.Npc1063.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 40210):SitOnChair(0, false)
    this:BanCrowdNpc(3302, 22, datas.CrowdData, true, true)
    this:BanCrowdNpc(3302, 6, datas.CrowdData1, true, true)
    actorMgr:CreateActorWithPos("Q40210Trigger_2", "Actor/Gadget/Q40210Trigger_2", 70900002, 0, points._Q40210Trigger_2Point_.pos, points._Q40210Trigger_2Point_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40210):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 40210):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 40210):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 40210):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest40210:OnSubFinish4021010(arg1)
    print("OnSubFinish4021010")
    this:DestroyQuestNpcActor(npcs.Npc1050.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1058.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1063.alias, 3)
    this:BanCrowdNpc(3302, 22, datas.CrowdData, false, true)
    this:BanCrowdNpc(3302, 6, datas.CrowdData1, false, true)
    this:ActorDestroy("Q40210Trigger_10")
end

return Quest40210
