require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15027 = class("Quest15027", QuestActorProxy)
Quest15027.defaultAlias = "Quest15027"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15027:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1502701"] = self.OnSubStart1502701,
        ["1502702"] = self.OnSubStart1502702,
        ["1502703"] = self.OnSubStart1502703,
        ["1502704"] = self.OnSubStart1502704,
        ["1502705"] = self.OnSubStart1502705,
        ["1502708"] = self.OnSubStart1502708,
        ["1502706"] = self.OnSubStart1502706,
        ["1502710"] = self.OnSubStart1502710,
        ["1502707"] = self.OnSubStart1502707
    }
end

function Quest15027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1502701"] = self.OnSubFinish1502701,
        ["1502702"] = self.OnSubFinish1502702,
        ["1502703"] = self.OnSubFinish1502703,
        ["1502704"] = self.OnSubFinish1502704,
        ["1502705"] = self.OnSubFinish1502705,
        ["1502708"] = self.OnSubFinish1502708,
        ["1502706"] = self.OnSubFinish1502706,
        ["1502710"] = self.OnSubFinish1502710,
        ["1502707"] = self.OnSubFinish1502707
    }
end

function Quest15027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1502707"] = self.OnSubFailed1502707}
end

function Quest15027:Start()
    print("Start")
end

function Quest15027:OnDestroy()
    print("OnDestroy")
end

function Quest15027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15027:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14650.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14651.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14648.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14649.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14647.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15018.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14652.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14653.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14654.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14943.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15057.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6250.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6249.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14682.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6251.alias, 3)
    this:LightNotifyTo(npcs.Npc6211.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6251.alias, 0, true)
    this:ActorDestroy("Q1502710Trigger")
    this:DestroyNpcTrigger("Q1502701N14650Trigger")
    this:DestroyNpcTrigger("Q1502702N15018Trigger")
    this:DestroyNpcTrigger("Q1502706N14682Trigger")
    this:DestroyNpcTrigger("Q1502707N1096Trigger")
    this:DestroyNpcTrigger("Q1502708N14647Trigger")
    this:CancelStoryByQuest(121502701)
end

function Quest15027:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15027:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15027:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15027:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest15027:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15027:OnSubStart1502701(arg1)
    print("OnSubStart1502701")
    this:NpcCreateWithNpcTrigger(npcs.Npc14650.id, 0, 20, 1502701)
    this:GetQuestNpcActor(npcs.Npc14650.alias, 15027):DoFreeStyle(4407, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14651.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14651.alias, 15027):DoFreeStyle(4408, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6211.alias, true, 1)
    this:BanCrowdNpc(3509, 7, nil, true)
end

function Quest15027:OnSubFinish1502701(arg1)
    print("OnSubFinish1502701")
    this:SafeDestroyQuestNpc(npcs.Npc14650.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14651.alias, 3)
    this:BanCrowdNpc(3509, 7, nil, false)
    this:LightNotifyTo(npcs.Npc6211.alias, 0, true)
end

function Quest15027:OnSubStart1502702(arg1)
    print("OnSubStart1502702")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14648.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14648.alias, 15027):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc14649.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14649.alias, 15027):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc14647.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14647.alias, 15027):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:NpcCreateWithNpcTrigger(npcs.Npc15018.id, 0, 20, 1502702)
        this:GetQuestNpcActor(npcs.Npc15018.alias, 15027):DoFreeStyle(4451, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14652.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14652.alias, 15027):DoFreeStyle(4451, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14653.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14653.alias, 15027):DoFreeStyle(4451, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14654.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14654.alias, 15027):DoFreeStyle(4451, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14943.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15057.id, 0, false, 0)
    end)

    this:DailyNpcSafeHideSelf(npcs.Npc6251.alias, true, 1)
    this:CreateLocalGadget(datas.Gadget70710978, "15027", points.Gadget70710978_Point.pos, points.Gadget70710978_Point.rot, 3, nil, nil, true, 0, true)
    this:DeployStoryByQuest(121502701)
end

function Quest15027:OnSubFinish1502702(arg1)
    print("OnSubFinish1502702")
end

function Quest15027:OnSubStart1502703(arg1)
    print("OnSubStart1502703")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6250.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc6249.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15027):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14648.alias, 15027):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15027):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15018.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15018.alias, 15027):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 15027):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14652.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14653.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14653.alias, 15027):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14654.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14654.alias, 15027):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6251.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc14652.alias, 15027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14653.alias, 15027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14654.alias, 15027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15018.alias, 15027):DisableInteeHeadCtrl(true)
    this:CreateLocalGadget(datas.Gadget70710978, "15027", points.Gadget70710978_Point.pos, points.Gadget70710978_Point.rot, 3, nil, nil, true, 0, true)
    this:DeployStoryByQuest(121502701)
end

function Quest15027:OnSubFinish1502703(arg1)
    print("OnSubFinish1502703")
    this:SafeDestroyQuestNpc(npcs.Npc6249.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
end

function Quest15027:OnSubStart1502704(arg1)
    print("OnSubStart1502704")
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15027):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14648.alias, 15027):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15027):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15018.alias, 15027):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14653.alias, 15027):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14654.alias, 15027):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6251.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc14652.alias, 15027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14653.alias, 15027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14654.alias, 15027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15018.alias, 15027):DisableInteeHeadCtrl(true)
    this:CreateLocalGadget(datas.Gadget70710978, "15027", points.Gadget70710978_Point.pos, points.Gadget70710978_Point.rot, 3, nil, nil, true, 0, true)
    this:DeployStoryByQuest(121502701)
end

function Quest15027:OnSubFinish1502704(arg1)
    print("OnSubFinish1502704")
end

function Quest15027:OnSubStart1502705(arg1)
    print("OnSubStart1502705")
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15027):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14648.alias, 15027):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15027):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15018.alias, 15027):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14653.alias, 15027):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14654.alias, 15027):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6251.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc6250.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14652.alias, 15027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14653.alias, 15027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14654.alias, 15027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15018.alias, 15027):DisableInteeHeadCtrl(true)
    this:CreateLocalGadget(datas.Gadget70710978, "15027", points.Gadget70710978_Point.pos, points.Gadget70710978_Point.rot, 3, nil, nil, true, 0, true)
    this:DeployStoryByQuest(121502701)
end

function Quest15027:OnSubFinish1502705(arg1)
    print("OnSubFinish1502705")
    this:SafeDestroyQuestNpc(npcs.Npc15018.alias, 3)
    this:GetQuestNpcActor(npcs.Npc14654.alias, 15027):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc15018.alias, 15027):DisableInteeHeadCtrl(false)
    this:RemoveLocalGadget(datas.Gadget70710978, "15027")
end

function Quest15027:OnSubStart1502708(arg1)
    print("OnSubStart1502708")
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15027):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc14647.id, 0, 10, 1502708)
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15027):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14648.alias, 15027):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc6251.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14652.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14652.alias, 15027):DoFreeStyle(4451, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14653.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14653.alias, 15027):DoFreeStyle(4451, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14654.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14654.alias, 15027):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6211.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc14652.alias, 15027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14653.alias, 15027):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14654.alias, 15027):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(121502701)
end

function Quest15027:OnSubFinish1502708(arg1)
    print("OnSubFinish1502708")
    this:SafeDestroyQuestNpc(npcs.Npc14649.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14647.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14648.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14943.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15057.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6251.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14652.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14653.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14654.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6250.alias, 3)
    this:LightNotifyTo(npcs.Npc6211.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc14652.alias, 15027):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14653.alias, 15027):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14654.alias, 15027):DisableInteeHeadCtrl(false)
    this:CancelStoryByQuest(121502701)
end

function Quest15027:OnSubStart1502706(arg1)
    print("OnSubStart1502706")
    this:NpcCreateWithNpcTrigger(npcs.Npc14682.id, 0, 10, 1502706)
    this:GetQuestNpcActor(npcs.Npc14682.alias, 15027):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6211.alias, true, 1)
end

function Quest15027:OnSubFinish1502706(arg1)
    print("OnSubFinish1502706")
    this:SafeDestroyQuestNpc(npcs.Npc14682.alias, 3)
    this:LightNotifyTo(npcs.Npc6211.alias, 0, true)
end

function Quest15027:OnSubStart1502710(arg1)
    print("OnSubStart1502710")
    actorMgr:CreateActorWithPos("Q1502710Trigger", "Actor/Gadget/Q1502710Trigger", 70900002, 0, points._Q1502710TriggerPoint_.pos, points._Q1502710TriggerPoint_.rot, true, false, 3)
end

function Quest15027:OnSubFinish1502710(arg1)
    print("OnSubFinish1502710")
end

function Quest15027:OnSubStart1502707(arg1)
    print("OnSubStart1502707")
    this:QuestNarratorTask(datas.NarratorWithId_1502701, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(1502707, 0, 39, 1, npcs.Npc1096.id)
    end)
end

function Quest15027:OnSubFinish1502707(arg1)
    print("OnSubFinish1502707")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
end

function Quest15027:OnSubFailed1502707(arg1)
    print("OnSubFailed1502707")
    this:StopNarrator()
    this:ClearNarratorTask()
    this:ClearNpcTriggerByQuestId(1502707)
end

return Quest15027
