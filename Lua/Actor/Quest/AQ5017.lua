require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5017 = class("Quest5017", QuestActorProxy)
Quest5017.defaultAlias = "Quest5017"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5017:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["501701"] = self.OnSubStart501701,
        ["501702"] = self.OnSubStart501702,
        ["501721"] = self.OnSubStart501721,
        ["501703"] = self.OnSubStart501703,
        ["501704"] = self.OnSubStart501704,
        ["501705"] = self.OnSubStart501705,
        ["501722"] = self.OnSubStart501722,
        ["501706"] = self.OnSubStart501706,
        ["501719"] = self.OnSubStart501719,
        ["501707"] = self.OnSubStart501707,
        ["501725"] = self.OnSubStart501725,
        ["501708"] = self.OnSubStart501708,
        ["501724"] = self.OnSubStart501724,
        ["501709"] = self.OnSubStart501709,
        ["501720"] = self.OnSubStart501720,
        ["501710"] = self.OnSubStart501710,
        ["501711"] = self.OnSubStart501711,
        ["501712"] = self.OnSubStart501712,
        ["501713"] = self.OnSubStart501713,
        ["501714"] = self.OnSubStart501714,
        ["501715"] = self.OnSubStart501715,
        ["501716"] = self.OnSubStart501716,
        ["501717"] = self.OnSubStart501717,
        ["501723"] = self.OnSubStart501723,
        ["501718"] = self.OnSubStart501718
    }
end

function Quest5017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["501701"] = self.OnSubFinish501701,
        ["501702"] = self.OnSubFinish501702,
        ["501721"] = self.OnSubFinish501721,
        ["501703"] = self.OnSubFinish501703,
        ["501704"] = self.OnSubFinish501704,
        ["501705"] = self.OnSubFinish501705,
        ["501722"] = self.OnSubFinish501722,
        ["501706"] = self.OnSubFinish501706,
        ["501719"] = self.OnSubFinish501719,
        ["501707"] = self.OnSubFinish501707,
        ["501725"] = self.OnSubFinish501725,
        ["501708"] = self.OnSubFinish501708,
        ["501724"] = self.OnSubFinish501724,
        ["501709"] = self.OnSubFinish501709,
        ["501720"] = self.OnSubFinish501720,
        ["501710"] = self.OnSubFinish501710,
        ["501711"] = self.OnSubFinish501711,
        ["501712"] = self.OnSubFinish501712,
        ["501713"] = self.OnSubFinish501713,
        ["501714"] = self.OnSubFinish501714,
        ["501715"] = self.OnSubFinish501715,
        ["501716"] = self.OnSubFinish501716,
        ["501717"] = self.OnSubFinish501717,
        ["501723"] = self.OnSubFinish501723,
        ["501718"] = self.OnSubFinish501718
    }
end

function Quest5017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["501708"] = self.OnSubFailed501708,
        ["501709"] = self.OnSubFailed501709,
        ["501720"] = self.OnSubFailed501720,
        ["501712"] = self.OnSubFailed501712
    }
end

function Quest5017:Start()
    print("Start")
end

function Quest5017:OnDestroy()
    print("OnDestroy")
end

function Quest5017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5017:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 50170801 then
        actorUtils.FinishQuestID(false, 501724)
    end
end

function Quest5017:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest5017:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest5017:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5017:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5017:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5017:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5017:OnSubStart501701(arg1)
    print("OnSubStart501701")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc14997.id, 0, 501701, 80, true)
end

function Quest5017:OnSubFinish501701(arg1)
    print("OnSubFinish501701")
    this:SafeDestroyQuestNpc(npcs.Npc14997.alias, 1099)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId501701, nil)
    end)
end

function Quest5017:OnSubStart501702(arg1)
    print("OnSubStart501702")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1096.id, 0, 501702, 20, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6037.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6038.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6039.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6014.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6013.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6032.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6025.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6033.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6017.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6161.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6011.alias, true, 1)
end

function Quest5017:OnSubFinish501702(arg1)
    print("OnSubFinish501702")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:ClearNarratorTask()
end

function Quest5017:OnSubStart501721(arg1)
    print("OnSubStart501721")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501721, 0, 20, 1, npcs.Npc1087.id)
    this:CreateQuestNpc(arg1, npcs.Npc6010.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6015.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6031.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6037.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6038.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6039.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6014.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6013.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6032.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6025.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6033.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6017.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6161.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6011.alias, true, 1)
end

function Quest5017:OnSubFinish501721(arg1)
    print("OnSubFinish501721")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14224.alias, 3)
end

function Quest5017:OnSubStart501703(arg1)
    print("OnSubStart501703")
    this:NpcCreateWithNpcTrigger(npcs.Npc1089.id, 0, 5, 501703)
    this:DailyNpcSafeHideSelf(npcs.Npc6037.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6038.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6039.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6014.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6013.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6032.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6025.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6033.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6017.alias, true, 1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14524.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14544.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc6161.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6011.alias, true, 1)
end

function Quest5017:OnSubFinish501703(arg1)
    print("OnSubFinish501703")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6010.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6015.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6031.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14524.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14544.alias, 3)
    this:LightNotifyTo(npcs.Npc6037.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6038.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6039.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6014.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6013.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6032.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6025.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6033.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6017.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6161.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6011.alias, 0, true)
end

function Quest5017:OnSubStart501704(arg1)
    print("OnSubStart501704")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501704, 0, 40, 1, npcs.Npc1086.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6082.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6092.alias, true, 1)
end

function Quest5017:OnSubFinish501704(arg1)
    print("OnSubFinish501704")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
end

function Quest5017:OnSubStart501705(arg1)
    print("OnSubStart501705")
    this:CreateQuestNpc(arg1, npcs.Npc14527.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14528.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14561.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14557.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14558.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14559.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14560.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6082.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6092.id, arg1)
    actorMgr:CreateActorWithPos("Q501705Trigger", "Actor/Gadget/Q501705Trigger", 70900002, 0, points._Q501705TriggerPoint_.pos, points._Q501705TriggerPoint_.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("501705", 1, function(arg1)
            this:GetQuestNpcActor(npcs.Npc14559.alias, 5017):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc14560.alias, 5017):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc14527.alias, 5017):DoFreeStyle(1070, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc14528.alias, 5017):DoFreeStyle(1070, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc14557.alias, 5017):DoFreeStyle(4110, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc14558.alias, 5017):DoFreeStyle(4300, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc14559.alias, 5017):DoFreeStyle(1240, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc14560.alias, 5017):DoFreeStyle(1230, true, nil, true, true, false, true)
        end)
    end)
end

function Quest5017:OnSubFinish501705(arg1)
    print("OnSubFinish501705")
end

function Quest5017:OnSubStart501722(arg1)
    print("OnSubStart501722")
end

function Quest5017:OnSubFinish501722(arg1)
    print("OnSubFinish501722")
end

function Quest5017:OnSubStart501706(arg1)
    print("OnSubStart501706")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501706, 0, 80, 0, npcs.Npc1095.id)
    this:CreateQuestNpc(arg1, npcs.Npc14527.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14528.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14572.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14573.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14561.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14557.alias, 5017):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14558.alias, 5017):DoFreeStyle(4300, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14559.alias, 5017):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14560.alias, 5017):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14559.alias, 5017):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14560.alias, 5017):DisableInteeHeadCtrl(true)
end

function Quest5017:OnSubFinish501706(arg1)
    print("OnSubFinish501706")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14527.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14528.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14572.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14573.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14561.alias, 3)
    this:ClearNarratorTask()
end

function Quest5017:OnSubStart501719(arg1)
    print("OnSubStart501719")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501719, 0, 45, 1, npcs.Npc1095.id)
    this:GetQuestNpcActor(npcs.Npc14557.alias, 5017):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14558.alias, 5017):DoFreeStyle(4300, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14559.alias, 5017):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14560.alias, 5017):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14559.alias, 5017):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14560.alias, 5017):DisableInteeHeadCtrl(true)
end

function Quest5017:OnSubFinish501719(arg1)
    print("OnSubFinish501719")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14557.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14558.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14559.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14560.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6082.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14527.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14528.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14572.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14573.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14561.alias, 3)
end

function Quest5017:OnSubStart501707(arg1)
    print("OnSubStart501707")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 501707, 20, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14557.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6082.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6092.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14527.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14528.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14572.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14573.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14561.id, arg1)
    this:ActionSafeCall(function(arg1_2)
        this:CallDelayByQuest("501707", 1, function(arg1_2)
            this:GetQuestNpcActor(npcs.Npc14559.alias, 5017):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc14560.alias, 5017):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc14527.alias, 5017):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc14528.alias, 5017):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc14572.alias, 5017):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc14573.alias, 5017):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc14527.alias, 5017):DoFreeStyle(1230, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc14528.alias, 5017):DoFreeStyle(1190, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc14573.alias, 5017):DoFreeStyle(1120, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc14557.alias, 5017):DoFreeStyle(4110, true, nil, true, true, false, true)
            this:NpcCreateWithActionSafeCall(0, npcs.Npc14558.id, arg1)
            this:GetQuestNpcActor(npcs.Npc14558.alias, 5017):DoFreeStyle(4300, true, nil, true, true, false, true)
            this:NpcCreateWithActionSafeCall(0, npcs.Npc14559.id, arg1)
            this:GetQuestNpcActor(npcs.Npc14559.alias, 5017):DoFreeStyle(1240, true, nil, true, true, false, true)
            this:NpcCreateWithActionSafeCall(0, npcs.Npc14560.id, arg1)
            this:GetQuestNpcActor(npcs.Npc14560.alias, 5017):DoFreeStyle(1230, true, nil, true, true, false, true)
        end)
    end)
end

function Quest5017:OnSubFinish501707(arg1)
    print("OnSubFinish501707")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc14224.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc14557.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14558.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14559.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14560.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6082.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14527.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14528.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14572.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14573.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14561.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.BlackTransmitData, nil, nil, nil)
        this:GetQuestNpcActor(npcs.Npc14559.alias, 5017):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc14560.alias, 5017):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc14527.alias, 5017):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc14528.alias, 5017):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc14572.alias, 5017):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc14573.alias, 5017):DisableInteeHeadCtrl(false)
    end)
end

function Quest5017:OnSubStart501725(arg1)
    print("OnSubStart501725")
    actorMgr:CreateActorWithPos("Q501725Trigger", "Actor/Gadget/Q501725Trigger", 70900002, 0, points._Q501725TriggerPoint_.pos, points._Q501725TriggerPoint_.rot, true, false, 3)
end

function Quest5017:OnSubFinish501725(arg1)
    print("OnSubFinish501725")
end

function Quest5017:OnSubStart501708(arg1)
    print("OnSubStart501708")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1092.id, 0, 501708, 60, true)
end

function Quest5017:OnSubFinish501708(arg1)
    print("OnSubFinish501708")
    this:SafeDestroyQuestNpc(npcs.Npc14224.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:TransmitPlayerByData(arg1, 2, datas.BlackTransmitData, nil, nil, nil)
end

function Quest5017:OnSubFailed501708(arg1)
    print("OnSubFailed501708")
    this:DestroyNpcTrigger("Q501708N1092Trigger")
end

function Quest5017:OnSubStart501724(arg1)
    print("OnSubStart501724")
end

function Quest5017:OnSubFinish501724(arg1)
    print("OnSubFinish501724")
end

function Quest5017:OnSubStart501709(arg1)
    print("OnSubStart501709")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1092.id, 0, 501709, 10, true)
end

function Quest5017:OnSubFinish501709(arg1)
    print("OnSubFinish501709")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14224.alias, 3)
end

function Quest5017:OnSubFailed501709(arg1)
    print("OnSubFailed501709")
    this:DestroyNpcTrigger("Q501709N1092Trigger")
end

function Quest5017:OnSubStart501720(arg1)
    print("OnSubStart501720")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1092.id, 0, 501720, 20, true)
end

function Quest5017:OnSubFinish501720(arg1)
    print("OnSubFinish501720")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14224.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 4, datas.BlackTransmitData, nil, nil, nil)
    end)
end

function Quest5017:OnSubFailed501720(arg1)
    print("OnSubFailed501720")
    this:DestroyNpcTrigger("Q501720N1092Trigger")
end

function Quest5017:OnSubStart501710(arg1)
    print("OnSubStart501710")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 501710, 20, true)
end

function Quest5017:OnSubFinish501710(arg1)
    print("OnSubFinish501710")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc14224.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 1095)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 5, datas.BlackTransmitData, nil, nil, nil)
    end)
end

function Quest5017:OnSubStart501711(arg1)
    print("OnSubStart501711")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1092.id, 0, 501711, 10, false)
    actorMgr:CreateActorWithPos("Q501712Trigger", "Actor/Gadget/Q501712Trigger", 70900002, 0, points._Q501712TriggerPoint_.pos, points._Q501712TriggerPoint_.rot, true, false, 1099)
end

function Quest5017:OnSubFinish501711(arg1)
    print("OnSubFinish501711")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14224.alias, 3)
    this:ActorDestroy("Q501712Trigger")
end

function Quest5017:OnSubStart501712(arg1)
    print("OnSubStart501712")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501712, 0, 20, 1, npcs.Npc1096.id)
    this:DestroyNpcTrigger("Q501713N1094Trigger")
    this:DestroyNpcTrigger("Q501714N1094Trigger")
    this:DestroyNpcTrigger("Q501715N1094Trigger")
    this:DestroyNpcTrigger("Q501716N1094Trigger")
    this:DestroyNpcTrigger("Q501717N1094Trigger")
    this:DestroyNpcTrigger("Q501723N1094Trigger")
    this:ActorDestroy("Q501713Trigger")
end

function Quest5017:OnSubFinish501712(arg1)
    print("OnSubFinish501712")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:TransmitPlayerByData(arg1, 6, datas.SoulStoneTransmitData, function(arg1)
        actorMgr:CreateActorWithPos("Q501713Trigger", "Actor/Gadget/Q501713Trigger", 70900002, 0, points._Q501713TriggerPoint_.pos, points._Q501713TriggerPoint_.rot, true, false, 3)
    end, nil, nil)
end

function Quest5017:OnSubFailed501712(arg1)
    print("OnSubFailed501712")
    this:DestroyNpcTrigger("Q501712N1096Trigger")
    this:ActorDestroy("Q501712Trigger")
end

function Quest5017:OnSubStart501713(arg1)
    print("OnSubStart501713")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1094.id, 0, 501713, 10, true)
end

function Quest5017:OnSubFinish501713(arg1)
    print("OnSubFinish501713")
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:TransmitPlayerByData(arg1, 7, datas.SoulStoneTransmitData, nil, nil, nil)
end

function Quest5017:OnSubStart501714(arg1)
    print("OnSubStart501714")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1094.id, 0, 501714, 10, true)
end

function Quest5017:OnSubFinish501714(arg1)
    print("OnSubFinish501714")
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:TransmitPlayerByData(arg1, 8, datas.SoulStoneTransmitData, nil, nil, nil)
end

function Quest5017:OnSubStart501715(arg1)
    print("OnSubStart501715")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1094.id, 0, 501715, 10, true)
end

function Quest5017:OnSubFinish501715(arg1)
    print("OnSubFinish501715")
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:TransmitPlayerByData(arg1, 9, datas.SoulStoneTransmitData, nil, nil, nil)
end

function Quest5017:OnSubStart501716(arg1)
    print("OnSubStart501716")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1094.id, 0, 501716, 10, true)
end

function Quest5017:OnSubFinish501716(arg1)
    print("OnSubFinish501716")
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 10, datas.SoulStoneTransmitData, nil, nil, nil)
    end)
end

function Quest5017:OnSubStart501717(arg1)
    print("OnSubStart501717")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1094.id, 0, 501717, 10, true)
end

function Quest5017:OnSubFinish501717(arg1)
    print("OnSubFinish501717")
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 1099)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 11, datas.SoulStoneTransmitData, nil, nil, nil)
    end)
end

function Quest5017:OnSubStart501723(arg1)
    print("OnSubStart501723")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1094.id, 0, 501723, 10, true)
end

function Quest5017:OnSubFinish501723(arg1)
    print("OnSubFinish501723")
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 3)
    this:TransmitPlayerByData(arg1, 12, datas.BlackTransmitData, nil, nil, nil)
end

function Quest5017:OnSubStart501718(arg1)
    print("OnSubStart501718")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1096.id, 0, 501718, 20, true)
    this:ActorDestroy("Q501713Trigger")
end

function Quest5017:OnSubFinish501718(arg1)
    print("OnSubFinish501718")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
end

return Quest5017
