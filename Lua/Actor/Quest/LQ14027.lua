require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14027 = class("Quest14027", QuestActorProxy)
Quest14027.defaultAlias = "Quest14027"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest14027:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest14027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1402701"] = self.OnSubStart1402701,
        ["1402702"] = self.OnSubStart1402702,
        ["1402703"] = self.OnSubStart1402703,
        ["1402709"] = self.OnSubStart1402709,
        ["1402705"] = self.OnSubStart1402705,
        ["1402704"] = self.OnSubStart1402704,
        ["1402706"] = self.OnSubStart1402706,
        ["1402707"] = self.OnSubStart1402707,
        ["1402708"] = self.OnSubStart1402708
    }
end

function Quest14027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1402701"] = self.OnSubFinish1402701,
        ["1402702"] = self.OnSubFinish1402702,
        ["1402703"] = self.OnSubFinish1402703,
        ["1402709"] = self.OnSubFinish1402709,
        ["1402705"] = self.OnSubFinish1402705,
        ["1402704"] = self.OnSubFinish1402704,
        ["1402706"] = self.OnSubFinish1402706,
        ["1402707"] = self.OnSubFinish1402707,
        ["1402708"] = self.OnSubFinish1402708
    }
end

function Quest14027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1402701"] = self.OnSubFailed1402701,
        ["1402702"] = self.OnSubFailed1402702,
        ["1402703"] = self.OnSubFailed1402703,
        ["1402709"] = self.OnSubFailed1402709,
        ["1402705"] = self.OnSubFailed1402705,
        ["1402704"] = self.OnSubFailed1402704,
        ["1402706"] = self.OnSubFailed1402706,
        ["1402707"] = self.OnSubFailed1402707,
        ["1402708"] = self.OnSubFailed1402708
    }
end

function Quest14027:Start()
    print("Start")
end

function Quest14027:OnDestroy()
    print("OnDestroy")
end

function Quest14027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14027:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14027:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14027:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest14027:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14027:OnSubStart1402701(arg1)
    print("OnSubStart1402701")
    this:NpcCreateWithNpcTrigger(npcs.Npc1079.id, 1402701, 0, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc5027.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc14030.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14031.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14032.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14033.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14034.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13324.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13313.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5028.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13762.id, 0, false, 0)
    this:CreateLocalGadget(70711498, "0", {x = 3540.91, y = 427.87, z = 4471.025}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0)
    this:BanCrowdNpc(3401, 8, nil, true)
    this:BanCrowdNpc(3401, 3, nil, true)
    this:GetQuestNpcActor(npcs.Npc13324.alias, 14027):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13313.alias, 14027):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14032.alias, 14027):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14034.alias, 14027):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13762.alias, 14027):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1079.alias, 14027):DoFreeStyle(1192, true, nil, true, true, false, false)
end

function Quest14027:OnSubFinish1402701(arg1)
    print("OnSubFinish1402701")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14033.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14034.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13324.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13313.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13762.alias, 3)
    this:RemoveLocalGadget(70711498, "0")
end

function Quest14027:OnSubFailed1402701(arg1)
    print("OnSubFailed1402701")
end

function Quest14027:OnSubStart1402702(arg1)
    print("OnSubStart1402702")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1079.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc5027.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14030.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14031.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14032.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14026.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc5028.alias, 1, true)
    this:CreateLocalGadget(70711536, "0", {x = 3540.91, y = 427.87, z = 4471.025}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0)
    this:BanCrowdNpc(3401, 8, nil, true)
    this:BanCrowdNpc(3401, 3, nil, true)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1079.alias, 14027):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14026.alias, 14027):DisableInteeHeadCtrl(true)
        this:CallDelayByQuest("dalayLookAt", 0.5, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc14026.alias, 14027)
            local realAlias = this:GetRealAlias(npcs.Npc1079.alias)
            questNpcActor:LookAtTarget(realAlias, datas.EmptyLook, false)
            local v = this:GetQuestNpcActor(npcs.Npc1079.alias, 14027)
            local realAlias2 = this:GetRealAlias(npcs.Npc14026.alias)
            v:LookAtTarget(realAlias2, datas.EmptyLook, false)
        end)

        this:GetQuestNpcActor(npcs.Npc1079.alias, 14027):DoFreeStyle(1192, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14026.alias, 14027):DoFreeStyle(1180, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14032.alias, 14027):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14031.alias, 14027):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14030.alias, 14027):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14030.alias, 14027):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14031.alias, 14027):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14032.alias, 14027):DisableInteeHeadCtrl(true)
    end)
end

function Quest14027:OnSubFinish1402702(arg1)
    print("OnSubFinish1402702")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14026.alias, 3)
end

function Quest14027:OnSubFailed1402702(arg1)
    print("OnSubFailed1402702")
end

function Quest14027:OnSubStart1402703(arg1)
    print("OnSubStart1402703")
    this:DailyNpcSafeHideSelf(npcs.Npc5028.alias, 1, true)
end

function Quest14027:OnSubFinish1402703(arg1)
    print("OnSubFinish1402703")
end

function Quest14027:OnSubFailed1402703(arg1)
    print("OnSubFailed1402703")
end

function Quest14027:OnSubStart1402709(arg1)
    print("OnSubStart1402709")
    this:DailyNpcSafeHideSelf(npcs.Npc5028.alias, 1, true)
end

function Quest14027:OnSubFinish1402709(arg1)
    print("OnSubFinish1402709")
end

function Quest14027:OnSubFailed1402709(arg1)
    print("OnSubFailed1402709")
end

function Quest14027:OnSubStart1402705(arg1)
    print("OnSubStart1402705")
    this:DailyNpcSafeHideSelf(npcs.Npc5028.alias, 1, true)
    if this:GetQuestVar(1402705, 0) == 0 then
        actorMgr:CreateActorWithPos("Q1402703_NarratorTrigger", "Actor/Gadget/Q1402703_NarratorTrigger", 70900002, 0, points.Q1402703_NarratorTrigger.pos, points.Q1402703_NarratorTrigger.rot, true, false, 3)
    end

    this:BanCrowdNpc(3401, 8, nil, true)
    this:BanCrowdNpc(3401, 3, nil, true)
    this:GetQuestNpcActor(npcs.Npc14032.alias, 14027):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14031.alias, 14027):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14030.alias, 14027):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateLocalGadget(70711536, "0", {x = 3540.91, y = 427.87, z = 4471.025}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0)
    this:GetQuestNpcActor(npcs.Npc14030.alias, 14027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14031.alias, 14027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14032.alias, 14027):DisableInteeHeadCtrl(true)
end

function Quest14027:OnSubFinish1402705(arg1)
    print("OnSubFinish1402705")
    this:SafeDestroyQuestNpc(npcs.Npc5027.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14030.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14031.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14032.alias, 3)
    this:ClearNarratorTask()
    this:QuestNarratorTask(datas.Narrator_1402702, nil)
    this:RemoveLocalGadget(70711536, "0")
    this:BanCrowdNpc(3401, 8, nil, false)
    this:BanCrowdNpc(3401, 3, nil, false)
    this:LightNotifyTo(npcs.Npc5028.alias, 0, true)
end

function Quest14027:OnSubFailed1402705(arg1)
    print("OnSubFailed1402705")
end

function Quest14027:OnSubStart1402704(arg1)
    print("OnSubStart1402704")
    this:NpcCreateWithNpcTrigger(npcs.Npc1079.id, 1402704, 0, 20)
    this:CreateQuestNpc(arg1, npcs.Npc14046.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14050.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5228.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1078.id, 0, false, 0)
    this:CreateLocalGadget(70291004, "0", {x = 4580.545, y = 154.243, z = 4628.837}, {x = 0, y = -5.293, z = 0}, 3, nil, nil, true, 0)
    this:GetQuestNpcActor(npcs.Npc14046.alias, 14027):SitOnChair(8010, true)
    this:GetQuestNpcActor(npcs.Npc1078.alias, 14027):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest14027:OnSubFinish1402704(arg1)
    print("OnSubFinish1402704")
    this:SafeDestroyQuestNpc(npcs.Npc14046.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14050.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1078.alias, 3)
    this:RemoveLocalGadget(70291004, "0")
end

function Quest14027:OnSubFailed1402704(arg1)
    print("OnSubFailed1402704")
end

function Quest14027:OnSubStart1402706(arg1)
    print("OnSubStart1402706")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1079.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc14056.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14055.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5228.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1079.alias, 14027):DoFreeStyle(1192, true, nil, true, true, false, true)
        this:CreateLocalGadget(70711526, "0", {x = 4579.229, y = 154.565, z = 4637.509}, {x = 0, y = -11.792, z = 0}, 3, nil, nil, false, 0)
    end)

    actorMgr:CreateActorWithPos("Q14027ForceTrigger", "Actor/Gadget/Q14027ForceTrigger", 70900002, 0, points.Q14027ForceTrigger.pos, points.Q14027ForceTrigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc14056.alias, 14027):EnableInteractionWithUIEx(false)
end

function Quest14027:OnSubFinish1402706(arg1)
    print("OnSubFinish1402706")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 3)
    this:RemoveLocalGadget(70711526, "0")
end

function Quest14027:OnSubFailed1402706(arg1)
    print("OnSubFailed1402706")
end

function Quest14027:OnSubStart1402707(arg1)
    print("OnSubStart1402707")
    this:NpcCreateWithNpcTrigger(npcs.Npc5206.id, 1402707, 0, 8)
    this:DailyNpcSafeHideSelf(npcs.Npc5228.alias, 1, true)
    actorMgr:CreateActorWithPos("Q14027ForceTrigger", "Actor/Gadget/Q14027ForceTrigger", 70900002, 0, points.Q14027ForceTrigger.pos, points.Q14027ForceTrigger.rot, true, false, 3)
    this:BanCrowdNpc(3408, 6, nil, true)
    this:BanCrowdNpc(3408, 1, nil, true)
    this:GetQuestNpcActor(npcs.Npc14056.alias, 14027):EnableInteractionWithUIEx(false)
end

function Quest14027:OnSubFinish1402707(arg1)
    print("OnSubFinish1402707")
    this:SafeDestroyQuestNpc(npcs.Npc5206.alias, 3)
    this:ActorDestroy("Q14027ForceTrigger")
    this:GetQuestNpcActor(npcs.Npc14056.alias, 14027):EnableInteractionWithUIEx(true)
end

function Quest14027:OnSubFailed1402707(arg1)
    print("OnSubFailed1402707")
end

function Quest14027:OnSubStart1402708(arg1)
    print("OnSubStart1402708")
    this:NpcCreateWithNpcTrigger(npcs.Npc14055.id, 1402708, 0, 15)
    this:DailyNpcSafeHideSelf(npcs.Npc5228.alias, 1, true)
    this:BanCrowdNpc(3408, 6, nil, true)
    this:BanCrowdNpc(3408, 1, nil, true)
end

function Quest14027:OnSubFinish1402708(arg1)
    print("OnSubFinish1402708")
    this:SafeDestroyQuestNpc(npcs.Npc14055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14056.alias, 3)
    this:ClearNarratorTask()
    this:LightNotifyTo(npcs.Npc5228.alias, 0, true)
    this:BanCrowdNpc(3408, 6, nil, false)
    this:BanCrowdNpc(3408, 1, nil, false)
end

function Quest14027:OnSubFailed1402708(arg1)
    print("OnSubFailed1402708")
end

return Quest14027
