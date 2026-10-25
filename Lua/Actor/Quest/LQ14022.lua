require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14022 = class("Quest14022", QuestActorProxy)
Quest14022.defaultAlias = "Quest14022"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14022:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1402201"] = self.OnSubStart1402201,
        ["1402202"] = self.OnSubStart1402202,
        ["1402210"] = self.OnSubStart1402210,
        ["1402215"] = self.OnSubStart1402215,
        ["1402203"] = self.OnSubStart1402203,
        ["1402212"] = self.OnSubStart1402212,
        ["1402213"] = self.OnSubStart1402213,
        ["1402214"] = self.OnSubStart1402214,
        ["1402216"] = self.OnSubStart1402216,
        ["1402204"] = self.OnSubStart1402204,
        ["1402205"] = self.OnSubStart1402205,
        ["1402217"] = self.OnSubStart1402217,
        ["1402206"] = self.OnSubStart1402206,
        ["1402207"] = self.OnSubStart1402207,
        ["1402208"] = self.OnSubStart1402208,
        ["1402209"] = self.OnSubStart1402209,
        ["1402211"] = self.OnSubStart1402211,
        ["1402218"] = self.OnSubStart1402218
    }
end

function Quest14022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1402201"] = self.OnSubFinish1402201,
        ["1402202"] = self.OnSubFinish1402202,
        ["1402210"] = self.OnSubFinish1402210,
        ["1402215"] = self.OnSubFinish1402215,
        ["1402203"] = self.OnSubFinish1402203,
        ["1402212"] = self.OnSubFinish1402212,
        ["1402213"] = self.OnSubFinish1402213,
        ["1402214"] = self.OnSubFinish1402214,
        ["1402216"] = self.OnSubFinish1402216,
        ["1402204"] = self.OnSubFinish1402204,
        ["1402205"] = self.OnSubFinish1402205,
        ["1402217"] = self.OnSubFinish1402217,
        ["1402206"] = self.OnSubFinish1402206,
        ["1402207"] = self.OnSubFinish1402207,
        ["1402208"] = self.OnSubFinish1402208,
        ["1402209"] = self.OnSubFinish1402209,
        ["1402211"] = self.OnSubFinish1402211,
        ["1402218"] = self.OnSubFinish1402218
    }
end

function Quest14022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1402204"] = self.OnSubFailed1402204,
        ["1402205"] = self.OnSubFailed1402205,
        ["1402207"] = self.OnSubFailed1402207
    }
end

function Quest14022:Start()
    print("Start")
end

function Quest14022:OnDestroy()
    print("OnDestroy")
end

function Quest14022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14022:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14022:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14022:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14022:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest14022:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14022:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 1402217)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 1402218)
    elseif arg1 == 3 then
        this:SetWeather("BigWorld/Weather_ClearSky_Fd41_PSHA_1st")
        actorMgr:CreateActorWithPos("Q1402209TriggerCancelWeather", "Actor/Gadget/Q1402209TriggerCancelWeather", 70900002, 0, points.TPos_Q1402209TriggerCancelWeather.pos, points.TPos_Q1402209TriggerCancelWeather.rot, true, false, 3)
    end
end

function Quest14022:OnSubStart1402201(arg1)
    print("OnSubStart1402201")
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13926Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13925Data.id, 0)
end

function Quest14022:OnSubFinish1402201(arg1)
    print("OnSubFinish1402201")
    this:SafeDestroyQuestNpc(npcs.Npc13926Data.alias, 3)
end

function Quest14022:OnSubStart1402202(arg1)
    print("OnSubStart1402202")
    this:NpcCreateWithNpcTrigger(npcs.Npc1082Data.id, 1402202, 0, 7)
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest14022:OnSubFinish1402202(arg1)
    print("OnSubFinish1402202")
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
end

function Quest14022:OnSubStart1402210(arg1)
    print("OnSubStart1402210")
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14022:OnSubFinish1402210(arg1)
    print("OnSubFinish1402210")
end

function Quest14022:OnSubStart1402215(arg1)
    print("OnSubStart1402215")
    this:ActorDestroy("Q1402215TriggerFinish")
    this:ActorDestroy("Q1402206TriggerFinish")
    this:ActorDestroy("Q1402216TriggerFinish")
    actorMgr:CreateActorWithPos("Q1402215TriggerFinish", "Actor/Gadget/Q1402215TriggerFinish", 70900002, 0, {x = 303.778, y = 129.127, z = 177.823}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20212)
end

function Quest14022:OnSubFinish1402215(arg1)
    print("OnSubFinish1402215")
end

function Quest14022:OnSubStart1402203(arg1)
    print("OnSubStart1402203")
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14022:OnSubFinish1402203(arg1)
    print("OnSubFinish1402203")
end

function Quest14022:OnSubStart1402212(arg1)
    print("OnSubStart1402212")
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14022:OnSubFinish1402212(arg1)
    print("OnSubFinish1402212")
end

function Quest14022:OnSubStart1402213(arg1)
    print("OnSubStart1402213")
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14022:OnSubFinish1402213(arg1)
    print("OnSubFinish1402213")
end

function Quest14022:OnSubStart1402214(arg1)
    print("OnSubStart1402214")
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13959Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13960Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13958Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14022:OnSubFinish1402214(arg1)
    print("OnSubFinish1402214")
end

function Quest14022:OnSubStart1402216(arg1)
    print("OnSubStart1402216")
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1402216TriggerFinish", "Actor/Gadget/Q1402216TriggerFinish", 70900002, 0, {x = 307.468, y = 28.061, z = 148.36}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20212)
end

function Quest14022:OnSubFinish1402216(arg1)
    print("OnSubFinish1402216")
end

function Quest14022:OnSubStart1402204(arg1)
    print("OnSubStart1402204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1082Data.id, 1402204, 0, 20, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14022:OnSubFinish1402204(arg1)
    print("OnSubFinish1402204")
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 20212)
    this:SafeDestroyQuestNpc(npcs.Npc13959Data.alias, 20212)
    this:SafeDestroyQuestNpc(npcs.Npc13960Data.alias, 20212)
    this:SafeDestroyQuestNpc(npcs.Npc13958Data.alias, 20212)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1754)
    end)
end

function Quest14022:OnSubFailed1402204(arg1)
    print("OnSubFailed1402204")
    this:ActorDestroy("Q1402204N1082Trigger")
end

function Quest14022:OnSubStart1402205(arg1)
    print("OnSubStart1402205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1082Data.id, 1402205, 0, 17, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14022:OnSubFinish1402205(arg1)
    print("OnSubFinish1402205")
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 20212)
end

function Quest14022:OnSubFailed1402205(arg1)
    print("OnSubFailed1402205")
    this:ActorDestroy("Q1402205N1082Trigger")
end

function Quest14022:OnSubStart1402217(arg1)
    print("OnSubStart1402217")
end

function Quest14022:OnSubFinish1402217(arg1)
    print("OnSubFinish1402217")
end

function Quest14022:OnSubStart1402206(arg1)
    print("OnSubStart1402206")
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1402206TriggerFinish", "Actor/Gadget/Q1402206TriggerFinish", 70900002, 0, {x = 246.366, y = 112.916, z = 238.109}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20212)
end

function Quest14022:OnSubFinish1402206(arg1)
    print("OnSubFinish1402206")
end

function Quest14022:OnSubStart1402207(arg1)
    print("OnSubStart1402207")
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13918Data.id, 1402207, 0, 15, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14022:OnSubFinish1402207(arg1)
    print("OnSubFinish1402207")
    this:SafeDestroyQuestNpc(npcs.Npc13918Data.alias, 20212)
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 2, nil, nil)
end

function Quest14022:OnSubFailed1402207(arg1)
    print("OnSubFailed1402207")
    this:ActorDestroy("Q1402207N13918Trigger")
end

function Quest14022:OnSubStart1402208(arg1)
    print("OnSubStart1402208")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1082Data.id, 1402208, 0, 15, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14022:OnSubFinish1402208(arg1)
    print("OnSubFinish1402208")
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
end

function Quest14022:OnSubStart1402209(arg1)
    print("OnSubStart1402209")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1082Data.id, 1402209, 0, 15, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
    this:CancelWeather()
end

function Quest14022:OnSubFinish1402209(arg1)
    print("OnSubFinish1402209")
    this:LightNotifyTo(npcs.Npc5038Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5039Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5037Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13925Data.alias, 3)
    this:CancelWeather()
    this:ActorDestroy("Q1402209TriggerCancelWeather")
end

function Quest14022:OnSubStart1402211(arg1)
    print("OnSubStart1402211")
    this:DailyNpcSafeHideSelf(npcs.Npc5038Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5039Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5037Data.alias, 1, true)
end

function Quest14022:OnSubFinish1402211(arg1)
    print("OnSubFinish1402211")
end

function Quest14022:OnSubStart1402218(arg1)
    print("OnSubStart1402218")
end

function Quest14022:OnSubFinish1402218(arg1)
    print("OnSubFinish1402218")
end

return Quest14022
