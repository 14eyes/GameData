require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5023 = class("Quest5023", QuestActorProxy)
Quest5023.defaultAlias = "Quest5023"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5023:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["502301"] = self.OnSubStart502301,
        ["502302"] = self.OnSubStart502302,
        ["502303"] = self.OnSubStart502303,
        ["502319"] = self.OnSubStart502319,
        ["502320"] = self.OnSubStart502320,
        ["502321"] = self.OnSubStart502321,
        ["502322"] = self.OnSubStart502322,
        ["502323"] = self.OnSubStart502323,
        ["502324"] = self.OnSubStart502324,
        ["502325"] = self.OnSubStart502325,
        ["502304"] = self.OnSubStart502304,
        ["502305"] = self.OnSubStart502305,
        ["502318"] = self.OnSubStart502318,
        ["502306"] = self.OnSubStart502306,
        ["502308"] = self.OnSubStart502308,
        ["502307"] = self.OnSubStart502307,
        ["502310"] = self.OnSubStart502310,
        ["502316"] = self.OnSubStart502316,
        ["502309"] = self.OnSubStart502309,
        ["502312"] = self.OnSubStart502312,
        ["502311"] = self.OnSubStart502311,
        ["502317"] = self.OnSubStart502317,
        ["502313"] = self.OnSubStart502313,
        ["502327"] = self.OnSubStart502327,
        ["502314"] = self.OnSubStart502314,
        ["502326"] = self.OnSubStart502326,
        ["502315"] = self.OnSubStart502315
    }
end

function Quest5023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["502301"] = self.OnSubFinish502301,
        ["502302"] = self.OnSubFinish502302,
        ["502303"] = self.OnSubFinish502303,
        ["502319"] = self.OnSubFinish502319,
        ["502320"] = self.OnSubFinish502320,
        ["502321"] = self.OnSubFinish502321,
        ["502322"] = self.OnSubFinish502322,
        ["502323"] = self.OnSubFinish502323,
        ["502324"] = self.OnSubFinish502324,
        ["502325"] = self.OnSubFinish502325,
        ["502304"] = self.OnSubFinish502304,
        ["502305"] = self.OnSubFinish502305,
        ["502318"] = self.OnSubFinish502318,
        ["502306"] = self.OnSubFinish502306,
        ["502308"] = self.OnSubFinish502308,
        ["502307"] = self.OnSubFinish502307,
        ["502310"] = self.OnSubFinish502310,
        ["502316"] = self.OnSubFinish502316,
        ["502309"] = self.OnSubFinish502309,
        ["502312"] = self.OnSubFinish502312,
        ["502311"] = self.OnSubFinish502311,
        ["502317"] = self.OnSubFinish502317,
        ["502313"] = self.OnSubFinish502313,
        ["502327"] = self.OnSubFinish502327,
        ["502314"] = self.OnSubFinish502314,
        ["502326"] = self.OnSubFinish502326,
        ["502315"] = self.OnSubFinish502315
    }
end

function Quest5023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["502327"] = self.OnSubFailed502327,
        ["502314"] = self.OnSubFailed502314,
        ["502326"] = self.OnSubFailed502326,
        ["502315"] = self.OnSubFailed502315
    }
end

function Quest5023:Start()
    print("Start")
end

function Quest5023:OnDestroy()
    print("OnDestroy")
end

function Quest5023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5023:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 10 then
        this:ActorDestroy("Q502302Trigger")
    end
end

function Quest5023:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest5023:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest5023:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5023:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest5023:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5023:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5023:OnSubStart502301(arg1)
    print("OnSubStart502301")
    this:CreateQuestNpc(arg1, npcs.Npc1089.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc14566.id, 0, 502301, 70, true)
end

function Quest5023:OnSubFinish502301(arg1)
    print("OnSubFinish502301")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc14566.alias, 1095)
end

function Quest5023:OnSubStart502302(arg1)
    print("OnSubStart502302")
    this:CreateQuestNpc(arg1, npcs.Npc14787.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q502302Trigger", "Actor/Gadget/Q502302Trigger", 70900002, 0, points._Q502302TriggerPoint_.pos, points._Q502302TriggerPoint_.rot, true, false, 1095)
end

function Quest5023:OnSubFinish502302(arg1)
    print("OnSubFinish502302")
    this:SafeDestroyQuestNpc(npcs.Npc14787.alias, 1095)
    this:ActorDestroy("Q502302Trigger")
end

function Quest5023:OnSubStart502303(arg1)
    print("OnSubStart502303")
    this:NpcCreateWithNpcTrigger(npcs.Npc6055.id, 0, 10, 502303)
    this:DailyNpcSafeHideSelf(npcs.Npc6061.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6060.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6125.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6124.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6126.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6127.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
end

function Quest5023:OnSubFinish502303(arg1)
    print("OnSubFinish502303")
    this:SafeDestroyQuestNpc(npcs.Npc6055.alias, 3)
end

function Quest5023:OnSubStart502319(arg1)
    print("OnSubStart502319")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc1086.id, 0, 8, 502319)
        actorUtils.AddQuestAvatarNpcMark(1086, 5023, false, "UI_AvatarIcon_Side_Kachina")
    end)
end

function Quest5023:OnSubFinish502319(arg1)
    print("OnSubFinish502319")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    actorUtils.RemoveQuestAvatarNpcMark(1086, 5023)
    this:DestroyNpcTrigger("Q502319N1086Trigger")
end

function Quest5023:OnSubStart502320(arg1)
    print("OnSubStart502320")
end

function Quest5023:OnSubFinish502320(arg1)
    print("OnSubFinish502320")
end

function Quest5023:OnSubStart502321(arg1)
    print("OnSubStart502321")
end

function Quest5023:OnSubFinish502321(arg1)
    print("OnSubFinish502321")
end

function Quest5023:OnSubStart502322(arg1)
    print("OnSubStart502322")
end

function Quest5023:OnSubFinish502322(arg1)
    print("OnSubFinish502322")
end

function Quest5023:OnSubStart502323(arg1)
    print("OnSubStart502323")
end

function Quest5023:OnSubFinish502323(arg1)
    print("OnSubFinish502323")
end

function Quest5023:OnSubStart502324(arg1)
    print("OnSubStart502324")
end

function Quest5023:OnSubFinish502324(arg1)
    print("OnSubFinish502324")
end

function Quest5023:OnSubStart502325(arg1)
    print("OnSubStart502325")
end

function Quest5023:OnSubFinish502325(arg1)
    print("OnSubFinish502325")
end

function Quest5023:OnSubStart502304(arg1)
    print("OnSubStart502304")
    this:DailyNpcSafeHideSelf(npcs.Npc6072.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6073.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6061.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6060.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6125.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6124.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6126.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6127.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14759.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14761.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14761.alias, 5023):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14760.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14760.alias, 5023):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1092.alias, 5023):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6076.alias, true, 1)
    actorUtils.AddQuestAvatarNpcMark(1088, 5023, false, "UI_AvatarIcon_Side_Kinich")
    actorUtils.AddQuestAvatarNpcMark(1092, 5023, false, "UI_AvatarIcon_Side_Chasca")
    actorUtils.AddQuestAvatarNpcMark(1091, 5023, false, "UI_AvatarIcon_Side_Iansan")
    actorUtils.AddQuestAvatarNpcMark(1094, 5023, false, "UI_AvatarIcon_Side_Olorun")
    this:GetQuestNpcActor(npcs.Npc14759.alias, 5023):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 5023):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 5023):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 5023):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest5023:OnSubFinish502304(arg1)
    print("OnSubFinish502304")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId50239909, nil)
    end)
end

function Quest5023:OnSubStart502305(arg1)
    print("OnSubStart502305")
    this:DailyNpcSafeHideSelf(npcs.Npc6072.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6073.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6061.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6060.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6076.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6125.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6124.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6126.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6127.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc14760.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14760.alias, 5023):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14759.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14761.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14761.alias, 5023):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1092.alias, 5023):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorUtils.AddQuestAvatarNpcMark(1088, 5023, false, "UI_AvatarIcon_Side_Kinich")
    actorUtils.AddQuestAvatarNpcMark(1092, 5023, false, "UI_AvatarIcon_Side_Chasca")
    actorUtils.AddQuestAvatarNpcMark(1091, 5023, false, "UI_AvatarIcon_Side_Iansan")
    actorUtils.AddQuestAvatarNpcMark(1094, 5023, false, "UI_AvatarIcon_Side_Olorun")
    this:GetQuestNpcActor(npcs.Npc14759.alias, 5023):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 5023):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 5023):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 5023):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest5023:OnSubFinish502305(arg1)
    print("OnSubFinish502305")
    this:SafeDestroyQuestNpc(npcs.Npc14760.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14759.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14761.alias, 3)
    this:ClearNarratorTask()
    actorUtils.RemoveQuestAvatarNpcMark(1088, 5023)
    actorUtils.RemoveQuestAvatarNpcMark(1092, 5023)
    actorUtils.RemoveQuestAvatarNpcMark(1091, 5023)
    actorUtils.RemoveQuestAvatarNpcMark(1094, 5023)
    actorUtils.RemoveQuestAvatarNpcMark(1086, 5023)
end

function Quest5023:OnSubStart502318(arg1)
    print("OnSubStart502318")
    this:ActionSafeCall(function(arg1)
        this:DailyNpcSafeHideSelf(npcs.Npc6060.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6061.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6072.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6073.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6124.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6125.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6126.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6127.alias, true, 1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(502318, 0, 15, 2, npcs.Npc1089.id)
        this:DailyNpcSafeHideSelf(npcs.Npc6076.alias, true, 1)
    end)
end

function Quest5023:OnSubFinish502318(arg1)
    print("OnSubFinish502318")
end

function Quest5023:OnSubStart502306(arg1)
    print("OnSubStart502306")
    this:NpcCreateWithNpcTrigger(npcs.Npc1094.id, 0, 8, 502306)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1086.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 5023):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1087.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc6072.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6073.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6061.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6060.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6125.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6124.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6126.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6127.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1089.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6076.alias, true, 1)
end

function Quest5023:OnSubFinish502306(arg1)
    print("OnSubFinish502306")
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
    this:LightNotifyTo(npcs.Npc6072.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6073.alias, 0, true)
end

function Quest5023:OnSubStart502308(arg1)
    print("OnSubStart502308")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc1086.id, 0, 10, 502308)
        this:DailyNpcSafeHideSelf(npcs.Npc6061.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6060.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6125.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6124.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6126.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6127.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6072.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6076.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6073.alias, true, 1)
    end)
end

function Quest5023:OnSubFinish502308(arg1)
    print("OnSubFinish502308")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:LightNotifyTo(npcs.Npc6072.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6076.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6073.alias, 0, true)
end

function Quest5023:OnSubStart502307(arg1)
    print("OnSubStart502307")
    this:NpcCreateWithNpcTriggerAndBlackscreen(502307, 0, 5, 2, npcs.Npc1086.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6061.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6060.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6125.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6124.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6126.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6127.alias, true, 1)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14221.id, 0, false, 0)
    end)
end

function Quest5023:OnSubFinish502307(arg1)
    print("OnSubFinish502307")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14221.alias, 3)
end

function Quest5023:OnSubStart502310(arg1)
    print("OnSubStart502310")
    this:NpcCreateWithNpcTriggerAndBlackscreen(502310, 0, 5, 2, npcs.Npc1086.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6061.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6060.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6125.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6124.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6126.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6127.alias, true, 1)
end

function Quest5023:OnSubFinish502310(arg1)
    print("OnSubFinish502310")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:LightNotifyTo(npcs.Npc6061.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6060.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6125.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6124.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6126.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6127.alias, 0, true)
end

function Quest5023:OnSubStart502316(arg1)
    print("OnSubStart502316")
    this:NpcCreateWithNpcTrigger(npcs.Npc14750.id, 0, 9, 502316)
end

function Quest5023:OnSubFinish502316(arg1)
    print("OnSubFinish502316")
end

function Quest5023:OnSubStart502309(arg1)
    print("OnSubStart502309")
    this:CreateQuestNpc(arg1, npcs.Npc14750.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14276.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14276.alias, 5023):DoFreeStyle(1, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15060.id, 0, false, 0)
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q502309trigger", "Actor/Gadget/Q502309trigger", 70900002, 0, points._Q502309triggerPoint_.pos, points._Q502309triggerPoint_.rot, true, false, 3)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc14750.alias, 5023)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.followtask1, 60, 15, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            this:QuestNarratorTask(datas.NarratorWithId50239911, nil)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc14750.alias, 5023)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.followtask2, 60, 15, -1, function(arg1)
                arg1:SyncPos(2)
                if arg1.BeFollowState == BeFollowState.FAILED then
                    return
                end

                local questNpcActor = this:GetQuestNpcActor(npcs.Npc14750.alias, 5023)
                this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.followtask3, 60, 15, -1, function(arg1)
                    arg1:SyncPos(2)
                    if arg1.BeFollowState == BeFollowState.FAILED then
                        return
                    end

                    actorUtils.FinishQuestID(false, 502309)
                end, nil, function(arg1)
                    arg1:ClearSteerToAutonomyTask()
                    arg1:TryResumeCurAutoNarrator()
                    arg1:DisableInteeHeadCtrl(true)
                    arg1:ResumeMove()
                end, nil, nil, nil, false)
            end, nil, function(arg1)
                arg1:ClearSteerToAutonomyTask()
                arg1:TryResumeCurAutoNarrator()
                arg1:DisableInteeHeadCtrl(true)
                arg1:ResumeMove()
            end, nil, nil, nil, false)
        end, nil, function(arg1)
            arg1:ClearSteerToAutonomyTask()
            arg1:TryResumeCurAutoNarrator()
            arg1:DisableInteeHeadCtrl(true)
            arg1:ResumeMove()
        end, nil, nil, nil, false)
    end)
end

function Quest5023:OnSubFinish502309(arg1)
    print("OnSubFinish502309")
    this:ActorDestroy("Q502309trigger")
end

function Quest5023:OnSubStart502312(arg1)
    print("OnSubStart502312")
    this:NpcCreateWithNpcTrigger(npcs.Npc14276.id, 0, 20, 502312)
    this:GetQuestNpcActor(npcs.Npc14276.alias, 5023):DoFreeStyle(1, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14750.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15060.id, 0, false, 0)
end

function Quest5023:OnSubFinish502312(arg1)
    print("OnSubFinish502312")
    this:SafeDestroyQuestNpc(npcs.Npc14276.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14750.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15060.alias, 3)
    this:ClearNarratorTask()
end

function Quest5023:OnSubStart502311(arg1)
    print("OnSubStart502311")
    this:NpcCreateWithNpcTriggerAndBlackscreen(502311, 0, 10, 2, npcs.Npc1086.id)
end

function Quest5023:OnSubFinish502311(arg1)
    print("OnSubFinish502311")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
end

function Quest5023:OnSubStart502317(arg1)
    print("OnSubStart502317")
    this:NpcCreateWithNpcTrigger(npcs.Npc1096.id, 0, 5, 502317)
    this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
end

function Quest5023:OnSubFinish502317(arg1)
    print("OnSubFinish502317")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
end

function Quest5023:OnSubStart502313(arg1)
    print("OnSubStart502313")
    this:NpcCreateWithNpcTriggerAndBlackscreen(502313, 0, 5, 2, npcs.Npc1095.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
end

function Quest5023:OnSubFinish502313(arg1)
    print("OnSubFinish502313")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:DeployStoryByQuest(110502311)
end

function Quest5023:OnSubStart502327(arg1)
    print("OnSubStart502327")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14690.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14691.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14692.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14693.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14854.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14855.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14856.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14857.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14858.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14859.id, 0, false, 0)
        this:NpcCreateWithNpcTrigger(npcs.Npc14669_1.id, 0, 6, 502327)
        this:CreateQuestNpc(arg1, npcs.Npc14686.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14687.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14688.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14689.id, 0, false, 0)
        this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
        this:GetQuestNpcActor(npcs.Npc14689.alias, 5023):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14688.alias, 5023):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14669.alias, 5023):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14688.alias, 5023):DoFreeStyle(4190, true, nil, true, true, false, false)
    end)
end

function Quest5023:OnSubFinish502327(arg1)
    print("OnSubFinish502327")
    this:SafeDestroyQuestNpc(npcs.Npc14690.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14691.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14692.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14669_1.alias, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
    this:CancelStoryByQuest(110502311)
    this:DeployStoryByQuest(110502321)
end

function Quest5023:OnSubFailed502327(arg1)
    print("OnSubFailed502327")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14693.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14854.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14855.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14856.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14857.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14858.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14859.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14686.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14687.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14688.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14748.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14749.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14690.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14691.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14692.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14669_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14689.alias, 3)
    this:DestroyNpcTrigger("Q502314N14686Trigger")
    this:DestroyNpcTrigger("Q502315N14748Trigger")
    this:DestroyNpcTrigger("Q502326N14688Trigger")
    this:DestroyNpcTrigger("Q502327N14669Trigger")
    this:CancelStoryByQuest(110502311)
end

function Quest5023:OnSubStart502314(arg1)
    print("OnSubStart502314")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14693.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14854.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14855.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14856.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14857.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14858.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14859.id, 0, false, 0)
        this:NpcCreateWithNpcTrigger(npcs.Npc14686.id, 0, 12, 502314)
        this:CreateQuestNpc(arg1, npcs.Npc14687.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14688.id, 0, false, 0)
        this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
        this:GetQuestNpcActor(npcs.Npc14689.alias, 5023):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14688.alias, 5023):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14688.alias, 5023):DoFreeStyle(4190, true, nil, true, true, false, false)
    end)
end

function Quest5023:OnSubFinish502314(arg1)
    print("OnSubFinish502314")
    this:SafeDestroyQuestNpc(npcs.Npc14693.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14854.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14855.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14686.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14687.alias, 3)
    this:CancelStoryByQuest(110502321)
    this:DeployStoryByQuest(110502310)
end

function Quest5023:OnSubFailed502314(arg1)
    print("OnSubFailed502314")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14693.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14854.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14855.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14856.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14857.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14858.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14859.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14686.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14687.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14688.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14748.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14749.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14690.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14691.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14692.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14669_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14689.alias, 3)
    this:DestroyNpcTrigger("Q502314N14686Trigger")
    this:DestroyNpcTrigger("Q502315N14748Trigger")
    this:DestroyNpcTrigger("Q502326N14688Trigger")
    this:DestroyNpcTrigger("Q502327N14669Trigger")
    this:CancelStoryByQuest(110502311)
    this:CancelStoryByQuest(110502321)
end

function Quest5023:OnSubStart502326(arg1)
    print("OnSubStart502326")
    this:CreateQuestNpc(arg1, npcs.Npc14856.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14857.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14858.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14859.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc14688.id, 0, 9, 502326)
    this:GetQuestNpcActor(npcs.Npc14688.alias, 5023):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc14689.alias, 5023):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14688.alias, 5023):DisableInteeHeadCtrl(true)
end

function Quest5023:OnSubFinish502326(arg1)
    print("OnSubFinish502326")
    this:SafeDestroyQuestNpc(npcs.Npc14856.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14857.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14858.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14859.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14688.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14689.alias, 3)
    this:CancelStoryByQuest(110502310)
    this:DeployStoryByQuest(110502312)
end

function Quest5023:OnSubFailed502326(arg1)
    print("OnSubFailed502326")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14693.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14854.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14855.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14856.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14857.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14858.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14859.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14686.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14687.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14688.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14748.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14749.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14690.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14691.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14692.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14669_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14689.alias, 3)
    this:DestroyNpcTrigger("Q502314N14686Trigger")
    this:DestroyNpcTrigger("Q502315N14748Trigger")
    this:DestroyNpcTrigger("Q502326N14688Trigger")
    this:DestroyNpcTrigger("Q502327N14669Trigger")
    this:CancelStoryByQuest(110502311)
    this:CancelStoryByQuest(110502321)
    this:CancelStoryByQuest(110502310)
end

function Quest5023:OnSubStart502315(arg1)
    print("OnSubStart502315")
    this:NpcCreateWithNpcTrigger(npcs.Npc14748.id, 0, 8, 502315)
    this:GetQuestNpcActor(npcs.Npc14748.alias, 5023):DoFreeStyle(6, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14749.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14749.alias, 5023):DoFreeStyle(1, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
end

function Quest5023:OnSubFinish502315(arg1)
    print("OnSubFinish502315")
    this:SafeDestroyQuestNpc(npcs.Npc14748.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14749.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:CancelStoryByQuest(110502312)
    this:LightNotifyTo(npcs.Npc6265.alias, 0, true)
end

function Quest5023:OnSubFailed502315(arg1)
    print("OnSubFailed502315")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14693.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14854.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14855.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14856.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14857.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14858.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14859.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14686.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14687.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14688.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14748.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14749.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14690.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14691.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14692.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14669_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14689.alias, 3)
    this:DestroyNpcTrigger("Q502314N14686Trigger")
    this:DestroyNpcTrigger("Q502315N14748Trigger")
    this:DestroyNpcTrigger("Q502326N14688Trigger")
    this:DestroyNpcTrigger("Q502327N14669Trigger")
    this:CancelStoryByQuest(110502311)
    this:CancelStoryByQuest(110502321)
    this:CancelStoryByQuest(110502310)
    this:CancelStoryByQuest(110502312)
end

return Quest5023
