require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6004 = class("Quest6004", QuestActorProxy)
Quest6004.defaultAlias = "Quest6004"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6004:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["600401"] = self.OnSubStart600401,
        ["600402"] = self.OnSubStart600402,
        ["600403"] = self.OnSubStart600403,
        ["600404"] = self.OnSubStart600404,
        ["600405"] = self.OnSubStart600405,
        ["600406"] = self.OnSubStart600406,
        ["600414"] = self.OnSubStart600414,
        ["600407"] = self.OnSubStart600407,
        ["600408"] = self.OnSubStart600408,
        ["600409"] = self.OnSubStart600409,
        ["600410"] = self.OnSubStart600410,
        ["600413"] = self.OnSubStart600413,
        ["600411"] = self.OnSubStart600411
    }
end

function Quest6004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["600401"] = self.OnSubFinish600401,
        ["600402"] = self.OnSubFinish600402,
        ["600403"] = self.OnSubFinish600403,
        ["600404"] = self.OnSubFinish600404,
        ["600405"] = self.OnSubFinish600405,
        ["600406"] = self.OnSubFinish600406,
        ["600414"] = self.OnSubFinish600414,
        ["600407"] = self.OnSubFinish600407,
        ["600408"] = self.OnSubFinish600408,
        ["600409"] = self.OnSubFinish600409,
        ["600410"] = self.OnSubFinish600410,
        ["600413"] = self.OnSubFinish600413,
        ["600411"] = self.OnSubFinish600411
    }
end

function Quest6004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["600414"] = self.OnSubFailed600414}
end

function Quest6004:Start()
    print("Start")
end

function Quest6004:OnDestroy()
    print("OnDestroy")
end

function Quest6004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6004:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q600401trigger")
    this:BanCrowdNpc(3504, 1, nil, false, true)
    this:BanCrowdNpc(3504, 5, nil, false, true)
end

function Quest6004:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 60041001 then
        actorUtils.FinishQuestID(false, 600413)
    end
end

function Quest6004:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6004:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6004:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6004:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest6004:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6004:OnSubStart600401(arg1)
    print("OnSubStart600401")
    actorMgr:CreateActorWithPos("Q600401trigger", "Actor/Gadget/Q600401trigger", 70900002, 0, points._Q600401triggerPoint_.pos, points._Q600401triggerPoint_.rot, true, false, 3)
end

function Quest6004:OnSubFinish600401(arg1)
    print("OnSubFinish600401")
end

function Quest6004:OnSubStart600402(arg1)
    print("OnSubStart600402")
    this:NpcCreateWithNpcTrigger(npcs.Npc1092.id, 0, 40, 600402)
    this:GetQuestNpcActor(npcs.Npc1092.alias, 6004):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1307.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1307.alias, 6004):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14977.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15361.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15361.alias, 6004):DoFreeStyle(3, true, nil, true, true, false, true)
end

function Quest6004:OnSubFinish600402(arg1)
    print("OnSubFinish600402")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1307.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14977.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15361.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataBlack, nil, nil, nil)
end

function Quest6004:OnSubStart600403(arg1)
    print("OnSubStart600403")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc15345.id, 0, 600403, 80, true)
end

function Quest6004:OnSubFinish600403(arg1)
    print("OnSubFinish600403")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 3)
end

function Quest6004:OnSubStart600404(arg1)
    print("OnSubStart600404")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110600400)
    end)
end

function Quest6004:OnSubFinish600404(arg1)
    print("OnSubFinish600404")
    this:CancelStoryByQuest(110600400)
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, nil, nil, 0, false, true)
end

function Quest6004:OnSubStart600405(arg1)
    print("OnSubStart600405")
    this:CallDelayByQuest("\230\159\165\231\156\139\230\131\133\229\134\181", 1, function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc15345.id, 0, 80, 600405)
        this:GetQuestNpcActor(npcs.Npc15345.alias, 6004):DoFreeStyle(1382, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc15345.alias, 6004):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Normal01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed05", 0, false, true, true)
        this:GetQuestNpcActor(npcs.Npc15345.alias, 6004):DisableInteeHeadCtrl(true)
    end)
end

function Quest6004:OnSubFinish600405(arg1)
    print("OnSubFinish600405")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 3)
    this:GetQuestNpcActor(npcs.Npc15345.alias, 6004):DisableInteeHeadCtrl(false)
end

function Quest6004:OnSubStart600406(arg1)
    print("OnSubStart600406")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc1095.id, 0, 15, 600406)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 6004):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1307.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1307.alias, 6004):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc14977.id, 0, false, 0)
        this:DailyNpcSafeHideSelf(npcs.Npc6180.alias, true, 1)
        this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
        this:BanCrowdNpc(3504, 1, nil, true, true)
        this:BanCrowdNpc(3504, 5, nil, true, true)
    end)
end

function Quest6004:OnSubFinish600406(arg1)
    print("OnSubFinish600406")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1307.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14977.alias, 3)
end

function Quest6004:OnSubStart600414(arg1)
    print("OnSubStart600414")
end

function Quest6004:OnSubFinish600414(arg1)
    print("OnSubFinish600414")
end

function Quest6004:OnSubFailed600414(arg1)
    print("OnSubFailed600414")
    this:ClearNpcTriggerByQuestId(600409)
    this:ClearNpcTriggerByQuestId(600410)
    this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest04")
    actorUtils.BanUIByQuest(16, false, 6004)
    actorUtils.BanUIByQuest(27, false, 6004)
end

function Quest6004:OnSubStart600407(arg1)
    print("OnSubStart600407")
    this:DailyNpcSafeHideSelf(npcs.Npc6180.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
    this:BanCrowdNpc(3504, 1, nil, true, true)
    this:BanCrowdNpc(3504, 5, nil, true, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableIneffaQuest04")
    actorUtils.BanUIByQuest(16, true, 6004)
    actorUtils.BanUIByQuest(27, true, 6004)
end

function Quest6004:OnSubFinish600407(arg1)
    print("OnSubFinish600407")
end

function Quest6004:OnSubStart600408(arg1)
    print("OnSubStart600408")
    this:DailyNpcSafeHideSelf(npcs.Npc6180.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
    this:BanCrowdNpc(3504, 1, nil, true, true)
    this:BanCrowdNpc(3504, 5, nil, true, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableIneffaQuest04")
    actorUtils.BanUIByQuest(16, true, 6004)
    actorUtils.BanUIByQuest(27, true, 6004)
end

function Quest6004:OnSubFinish600408(arg1)
    print("OnSubFinish600408")
end

function Quest6004:OnSubStart600409(arg1)
    print("OnSubStart600409")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600409, 0, 10, 0, npcs.Npc15345.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6180.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
    this:BanCrowdNpc(3504, 1, nil, true, true)
    this:BanCrowdNpc(3504, 5, nil, true, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableIneffaQuest04")
    actorUtils.BanUIByQuest(16, true, 6004)
    actorUtils.BanUIByQuest(27, true, 6004)
end

function Quest6004:OnSubFinish600409(arg1)
    print("OnSubFinish600409")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 3)
    this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest04")
    actorUtils.BanUIByQuest(16, false, 6004)
    actorUtils.BanUIByQuest(27, false, 6004)
end

function Quest6004:OnSubStart600410(arg1)
    print("OnSubStart600410")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600410, 0, 80, 0, npcs.Npc1095.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6180.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
    this:BanCrowdNpc(3504, 1, nil, true, true)
    this:BanCrowdNpc(3504, 5, nil, true, true)
end

function Quest6004:OnSubFinish600410(arg1)
    print("OnSubFinish600410")
    this:ActionSafeCall(function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
        this:QuestNarratorTask(datas.NarratorWithId600410, nil)
        this:BanCrowdNpc(3504, 1, nil, false, true)
        this:BanCrowdNpc(3504, 5, nil, false, true)
    end)
end

function Quest6004:OnSubStart600413(arg1)
    print("OnSubStart600413")
end

function Quest6004:OnSubFinish600413(arg1)
    print("OnSubFinish600413")
end

function Quest6004:OnSubStart600411(arg1)
    print("OnSubStart600411")
    this:NpcCreateWithNpcTrigger(npcs.Npc15356.id, 0, 10, 600411)
    this:GetQuestNpcActor(npcs.Npc15356.alias, 6004):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc15357.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15358.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15359.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15360.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6180.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6265.alias, true, 1)
end

function Quest6004:OnSubFinish600411(arg1)
    print("OnSubFinish600411")
    this:SafeDestroyQuestNpc(npcs.Npc15356.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15357.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15358.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15359.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15360.alias, 3)
    this:LightNotifyTo(npcs.Npc6180.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6265.alias, 0, true)
    this:ClearNarratorTask()
end

return Quest6004
