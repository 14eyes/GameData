require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15044 = class("Quest15044", QuestActorProxy)
Quest15044.defaultAlias = "Quest15044"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15044:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15044:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1504401"] = self.OnSubStart1504401,
        ["1504402"] = self.OnSubStart1504402,
        ["1504403"] = self.OnSubStart1504403,
        ["1504404"] = self.OnSubStart1504404,
        ["1504405"] = self.OnSubStart1504405,
        ["1504406"] = self.OnSubStart1504406,
        ["1504413"] = self.OnSubStart1504413,
        ["1504407"] = self.OnSubStart1504407,
        ["1504408"] = self.OnSubStart1504408,
        ["1504409"] = self.OnSubStart1504409,
        ["1504415"] = self.OnSubStart1504415,
        ["1504418"] = self.OnSubStart1504418,
        ["1504419"] = self.OnSubStart1504419,
        ["1504414"] = self.OnSubStart1504414,
        ["1504410"] = self.OnSubStart1504410,
        ["1504411"] = self.OnSubStart1504411,
        ["1504412"] = self.OnSubStart1504412,
        ["1504416"] = self.OnSubStart1504416,
        ["1504420"] = self.OnSubStart1504420,
        ["1504421"] = self.OnSubStart1504421,
        ["1504430"] = self.OnSubStart1504430,
        ["1504423"] = self.OnSubStart1504423,
        ["1504422"] = self.OnSubStart1504422,
        ["1504417"] = self.OnSubStart1504417
    }
end

function Quest15044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1504401"] = self.OnSubFinish1504401,
        ["1504402"] = self.OnSubFinish1504402,
        ["1504403"] = self.OnSubFinish1504403,
        ["1504404"] = self.OnSubFinish1504404,
        ["1504405"] = self.OnSubFinish1504405,
        ["1504406"] = self.OnSubFinish1504406,
        ["1504413"] = self.OnSubFinish1504413,
        ["1504407"] = self.OnSubFinish1504407,
        ["1504408"] = self.OnSubFinish1504408,
        ["1504409"] = self.OnSubFinish1504409,
        ["1504415"] = self.OnSubFinish1504415,
        ["1504418"] = self.OnSubFinish1504418,
        ["1504419"] = self.OnSubFinish1504419,
        ["1504414"] = self.OnSubFinish1504414,
        ["1504410"] = self.OnSubFinish1504410,
        ["1504411"] = self.OnSubFinish1504411,
        ["1504412"] = self.OnSubFinish1504412,
        ["1504416"] = self.OnSubFinish1504416,
        ["1504420"] = self.OnSubFinish1504420,
        ["1504421"] = self.OnSubFinish1504421,
        ["1504430"] = self.OnSubFinish1504430,
        ["1504423"] = self.OnSubFinish1504423,
        ["1504422"] = self.OnSubFinish1504422,
        ["1504417"] = self.OnSubFinish1504417
    }
end

function Quest15044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1504406"] = self.OnSubFailed1504406,
        ["1504407"] = self.OnSubFailed1504407,
        ["1504408"] = self.OnSubFailed1504408,
        ["1504409"] = self.OnSubFailed1504409,
        ["1504418"] = self.OnSubFailed1504418,
        ["1504416"] = self.OnSubFailed1504416
    }
end

function Quest15044:Start()
    print("Start")
end

function Quest15044:OnDestroy()
    print("OnDestroy")
end

function Quest15044:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15044:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15044:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1504407Trigger")
    this:ActorDestroy("Q1504404Trigger")
    this:ActorDestroy("Q1504408Trigger")
    this:ActorDestroy("Q1504410Trigger")
    this:ActorDestroy("Q1504430Trigger")
    this:ActorDestroy("Q1504410Trigger_Transmit")
    this:BanCrowdNpc(3520, 74, nil, false, true)
end

function Quest15044:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 150441301 then
        actorUtils.FinishQuestID(false, 1504413)
    elseif arg1 == 150441501 then
        actorUtils.FinishQuestID(false, 1504415)
    elseif arg1 == 150441901 then
        actorUtils.FinishQuestID(false, 1504419)
    elseif arg1 == 150441401 then
        actorUtils.FinishQuestID(false, 1504414)
    end
end

function Quest15044:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15044:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15044:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15044:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest15044:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15044:OnSubStart1504401(arg1)
    print("OnSubStart1504401")
end

function Quest15044:OnSubFinish1504401(arg1)
    print("OnSubFinish1504401")
    this:QuestNarratorTask(datas.NarratorWithId_1504401, nil)
end

function Quest15044:OnSubStart1504402(arg1)
    print("OnSubStart1504402")
end

function Quest15044:OnSubFinish1504402(arg1)
    print("OnSubFinish1504402")
    this:QuestNarratorTask(datas.NarratorWithId_1504401, nil)
end

function Quest15044:OnSubStart1504403(arg1)
    print("OnSubStart1504403")
    this:NpcCreateWithNpcTrigger(npcs.Npc6550.id, 0, 10, 1504403)
end

function Quest15044:OnSubFinish1504403(arg1)
    print("OnSubFinish1504403")
    this:SafeDestroyQuestNpc(npcs.Npc6550.alias, 3)
end

function Quest15044:OnSubStart1504404(arg1)
    print("OnSubStart1504404")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504404, 0, 30, 1, npcs.Npc21844.id)
    actorMgr:CreateActorWithPos("Q1504404Trigger", "Actor/Gadget/Q1504404Trigger", 70900002, 0, points._Q1504404TriggerPoint_.pos, points._Q1504404TriggerPoint_.rot, true, false, 3)
end

function Quest15044:OnSubFinish1504404(arg1)
    print("OnSubFinish1504404")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest15044:OnSubStart1504405(arg1)
    print("OnSubStart1504405")
end

function Quest15044:OnSubFinish1504405(arg1)
    print("OnSubFinish1504405")
end

function Quest15044:OnSubStart1504406(arg1)
    print("OnSubStart1504406")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21847.id, 0, 1504406, 20, true)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20269 then
                this:TransmitPlayerByData(arg1, 1, datas.TransmitDataBlack, nil, nil, nil)
            end
        end)
    end)
end

function Quest15044:OnSubFinish1504406(arg1)
    print("OnSubFinish1504406")
    this:SafeDestroyQuestNpc(npcs.Npc21847.alias, 20269)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1504403, nil)
    end)
end

function Quest15044:OnSubFailed1504406(arg1)
    print("OnSubFailed1504406")
    this:ClearNpcTriggerByQuestId(1504406)
    this:SafeDestroyQuestNpc(npcs.Npc21847.alias, 20269)
    this:ClearNarratorTask()
end

function Quest15044:OnSubStart1504413(arg1)
    print("OnSubStart1504413")
end

function Quest15044:OnSubFinish1504413(arg1)
    print("OnSubFinish1504413")
end

function Quest15044:OnSubStart1504407(arg1)
    print("OnSubStart1504407")
    actorMgr:CreateActorWithPos("Q1504407Trigger", "Actor/Gadget/Q1504407Trigger", 70900002, 0, points._Q1504407TriggerPoint_.pos, points._Q1504407TriggerPoint_.rot, true, false, 20269)
end

function Quest15044:OnSubFinish1504407(arg1)
    print("OnSubFinish1504407")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1504404, nil)
    end)
end

function Quest15044:OnSubFailed1504407(arg1)
    print("OnSubFailed1504407")
    this:ActorDestroy("Q1504407Trigger")
    this:ClearNarratorTask()
end

function Quest15044:OnSubStart1504408(arg1)
    print("OnSubStart1504408")
    actorMgr:CreateActorWithPos("Q1504408Trigger", "Actor/Gadget/Q1504408Trigger", 70900002, 0, points._Q1504408TriggerPoint_.pos, points._Q1504408TriggerPoint_.rot, true, false, 20269)
end

function Quest15044:OnSubFinish1504408(arg1)
    print("OnSubFinish1504408")
end

function Quest15044:OnSubFailed1504408(arg1)
    print("OnSubFailed1504408")
    this:ActorDestroy("Q1504408Trigger")
end

function Quest15044:OnSubStart1504409(arg1)
    print("OnSubStart1504409")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504409, 0, 60, 1, npcs.Npc21847.id)
end

function Quest15044:OnSubFinish1504409(arg1)
    print("OnSubFinish1504409")
    this:SafeDestroyQuestNpc(npcs.Npc21847.alias, 20269)
end

function Quest15044:OnSubFailed1504409(arg1)
    print("OnSubFailed1504409")
    this:ClearNpcTriggerByQuestId(1504409)
    this:SafeDestroyQuestNpc(npcs.Npc21847.alias, 20269)
end

function Quest15044:OnSubStart1504415(arg1)
    print("OnSubStart1504415")
end

function Quest15044:OnSubFinish1504415(arg1)
    print("OnSubFinish1504415")
end

function Quest15044:OnSubStart1504418(arg1)
    print("OnSubStart1504418")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504418, 0, 39, 1, npcs.Npc21844.id)
end

function Quest15044:OnSubFinish1504418(arg1)
    print("OnSubFinish1504418")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 20269)
end

function Quest15044:OnSubFailed1504418(arg1)
    print("OnSubFailed1504418")
    this:ClearNpcTriggerByQuestId(1504418)
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 20269)
end

function Quest15044:OnSubStart1504419(arg1)
    print("OnSubStart1504419")
end

function Quest15044:OnSubFinish1504419(arg1)
    print("OnSubFinish1504419")
end

function Quest15044:OnSubStart1504414(arg1)
    print("OnSubStart1504414")
end

function Quest15044:OnSubFinish1504414(arg1)
    print("OnSubFinish1504414")
end

function Quest15044:OnSubStart1504410(arg1)
    print("OnSubStart1504410")
    actorMgr:CreateActorWithPos("Q1504410Trigger", "Actor/Gadget/Q1504410Trigger", 70900002, 0, points._Q1504410TriggerPoint_.pos, points._Q1504410TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1504410Trigger_Transmit", "Actor/Gadget/Q1504410Trigger_Transmit", 70900002, 0, points._Q1504410Trigger_TransmitPoint_.pos, points._Q1504410Trigger_TransmitPoint_.rot, true, false, 20269)
end

function Quest15044:OnSubFinish1504410(arg1)
    print("OnSubFinish1504410")
    this:ActorDestroy("Q1504410Trigger_Transmit")
end

function Quest15044:OnSubStart1504411(arg1)
    print("OnSubStart1504411")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504411, 0, 20, 1, npcs.Npc21844.id)
    this:BanCrowdNpc(3520, 74, nil, true, true)
end

function Quest15044:OnSubFinish1504411(arg1)
    print("OnSubFinish1504411")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
    this:BanCrowdNpc(3520, 74, nil, false, true)
end

function Quest15044:OnSubStart1504412(arg1)
    print("OnSubStart1504412")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504412, 0, 15, 1, npcs.Npc21845.id)
end

function Quest15044:OnSubFinish1504412(arg1)
    print("OnSubFinish1504412")
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
end

function Quest15044:OnSubStart1504416(arg1)
    print("OnSubStart1504416")
    this:DailyNpcSafeHideSelf(npcs.Npc6570.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6572.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6600.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6601.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6603.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6604.alias, true, 1)
end

function Quest15044:OnSubFinish1504416(arg1)
    print("OnSubFinish1504416")
end

function Quest15044:OnSubFailed1504416(arg1)
    print("OnSubFailed1504416")
    this:LightNotifyTo(npcs.Npc6570.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6572.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6600.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6601.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6603.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6604.alias, 0, true)
end

function Quest15044:OnSubStart1504420(arg1)
    print("OnSubStart1504420")
end

function Quest15044:OnSubFinish1504420(arg1)
    print("OnSubFinish1504420")
end

function Quest15044:OnSubStart1504421(arg1)
    print("OnSubStart1504421")
end

function Quest15044:OnSubFinish1504421(arg1)
    print("OnSubFinish1504421")
end

function Quest15044:OnSubStart1504430(arg1)
    print("OnSubStart1504430")
    this:DailyNpcSafeHideSelf(npcs.Npc6570.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6572.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6600.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6601.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6603.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6604.alias, true, 1)
    actorMgr:CreateActorWithPos("Q1504430Trigger", "Actor/Gadget/Q1504430Trigger", 70900002, 0, points._Q1504430TriggerPoint_.pos, points._Q1504430TriggerPoint_.rot, true, false, 3)
end

function Quest15044:OnSubFinish1504430(arg1)
    print("OnSubFinish1504430")
    this:LightNotifyTo(npcs.Npc6570.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6572.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6600.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6601.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6603.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6604.alias, 0, true)
end

function Quest15044:OnSubStart1504423(arg1)
    print("OnSubStart1504423")
    actorUtils.FinishQuestID(false, 1504423)
end

function Quest15044:OnSubFinish1504423(arg1)
    print("OnSubFinish1504423")
end

function Quest15044:OnSubStart1504422(arg1)
    print("OnSubStart1504422")
    actorUtils.FinishQuestID(false, 1504422)
end

function Quest15044:OnSubFinish1504422(arg1)
    print("OnSubFinish1504422")
end

function Quest15044:OnSubStart1504417(arg1)
    print("OnSubStart1504417")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504417, 0, 20, 1, npcs.Npc21847.id)
end

function Quest15044:OnSubFinish1504417(arg1)
    print("OnSubFinish1504417")
    this:SafeDestroyQuestNpc(npcs.Npc21847.alias, 3)
    this:LightNotifyTo(npcs.Npc6570.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6572.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6600.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6603.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6604.alias, 0, true)
end

return Quest15044
