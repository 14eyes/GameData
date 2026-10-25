require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74164 = class("Quest74164", QuestActorProxy)
Quest74164.defaultAlias = "Quest74164"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74164:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74164:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7416401"] = self.OnSubStart7416401,
        ["7416425"] = self.OnSubStart7416425,
        ["7416426"] = self.OnSubStart7416426,
        ["7416429"] = self.OnSubStart7416429,
        ["7416430"] = self.OnSubStart7416430,
        ["7416402"] = self.OnSubStart7416402,
        ["7416403"] = self.OnSubStart7416403,
        ["7416405"] = self.OnSubStart7416405,
        ["7416404"] = self.OnSubStart7416404,
        ["7416420"] = self.OnSubStart7416420,
        ["7416421"] = self.OnSubStart7416421,
        ["7416422"] = self.OnSubStart7416422,
        ["7416423"] = self.OnSubStart7416423,
        ["7416424"] = self.OnSubStart7416424,
        ["7416427"] = self.OnSubStart7416427,
        ["7416406"] = self.OnSubStart7416406,
        ["7416407"] = self.OnSubStart7416407,
        ["7416408"] = self.OnSubStart7416408,
        ["7416409"] = self.OnSubStart7416409,
        ["7416410"] = self.OnSubStart7416410,
        ["7416411"] = self.OnSubStart7416411,
        ["7416417"] = self.OnSubStart7416417,
        ["7416418"] = self.OnSubStart7416418,
        ["7416419"] = self.OnSubStart7416419,
        ["7416428"] = self.OnSubStart7416428,
        ["7416412"] = self.OnSubStart7416412,
        ["7416413"] = self.OnSubStart7416413,
        ["7416414"] = self.OnSubStart7416414,
        ["7416415"] = self.OnSubStart7416415,
        ["7416416"] = self.OnSubStart7416416
    }
end

function Quest74164:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7416401"] = self.OnSubFinish7416401,
        ["7416425"] = self.OnSubFinish7416425,
        ["7416426"] = self.OnSubFinish7416426,
        ["7416429"] = self.OnSubFinish7416429,
        ["7416430"] = self.OnSubFinish7416430,
        ["7416402"] = self.OnSubFinish7416402,
        ["7416403"] = self.OnSubFinish7416403,
        ["7416405"] = self.OnSubFinish7416405,
        ["7416404"] = self.OnSubFinish7416404,
        ["7416420"] = self.OnSubFinish7416420,
        ["7416421"] = self.OnSubFinish7416421,
        ["7416422"] = self.OnSubFinish7416422,
        ["7416423"] = self.OnSubFinish7416423,
        ["7416424"] = self.OnSubFinish7416424,
        ["7416427"] = self.OnSubFinish7416427,
        ["7416406"] = self.OnSubFinish7416406,
        ["7416407"] = self.OnSubFinish7416407,
        ["7416408"] = self.OnSubFinish7416408,
        ["7416409"] = self.OnSubFinish7416409,
        ["7416410"] = self.OnSubFinish7416410,
        ["7416411"] = self.OnSubFinish7416411,
        ["7416417"] = self.OnSubFinish7416417,
        ["7416418"] = self.OnSubFinish7416418,
        ["7416419"] = self.OnSubFinish7416419,
        ["7416428"] = self.OnSubFinish7416428,
        ["7416412"] = self.OnSubFinish7416412,
        ["7416413"] = self.OnSubFinish7416413,
        ["7416414"] = self.OnSubFinish7416414,
        ["7416415"] = self.OnSubFinish7416415,
        ["7416416"] = self.OnSubFinish7416416
    }
end

function Quest74164:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74164:Start()
    print("Start")
end

function Quest74164:OnDestroy()
    print("OnDestroy")
end

function Quest74164:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74164:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74164:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74164:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74164:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74164:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest74164:OnSubStart7416401(arg1)
    print("OnSubStart7416401")
    this:CreateQuestNpc(arg1, npcs.Npc5290Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5291Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21356Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5290Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74164:OnSubFinish7416401(arg1)
    print("OnSubFinish7416401")
end

function Quest74164:OnSubStart7416425(arg1)
    print("OnSubStart7416425")
    this:CreateQuestNpc(arg1, npcs.Npc5290Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5291Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21356Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5290Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74164:OnSubFinish7416425(arg1)
    print("OnSubFinish7416425")
    this:SafeDestroyQuestNpc(npcs.Npc5291Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21356Data.alias, 3)
end

function Quest74164:OnSubStart7416426(arg1)
    print("OnSubStart7416426")
    this:CreateQuestNpc(arg1, npcs.Npc5290Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5291Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21356Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5290Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74164:OnSubFinish7416426(arg1)
    print("OnSubFinish7416426")
    this:SafeDestroyQuestNpc(npcs.Npc5291Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21356Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5290Data.alias, 3)
end

function Quest74164:OnSubStart7416429(arg1)
    print("OnSubStart7416429")
end

function Quest74164:OnSubFinish7416429(arg1)
    print("OnSubFinish7416429")
end

function Quest74164:OnSubStart7416430(arg1)
    print("OnSubStart7416430")
end

function Quest74164:OnSubFinish7416430(arg1)
    print("OnSubFinish7416430")
end

function Quest74164:OnSubStart7416402(arg1)
    print("OnSubStart7416402")
    this:CreateQuestNpc(arg1, npcs.Npc5290Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21278Data.id, 0)
    actorMgr:CreateActorWithPos("Q7416402Trigger", "Actor/Gadget/Q7416402Trigger", 70900002, 0, {x = 2653.554, y = 435.291, z = 3517.739}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5290Data.alias)
    questNpcActor:DisableInteeHeadCtrl(false)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
end

function Quest74164:OnSubFinish7416402(arg1)
    print("OnSubFinish7416402")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 4, nil, nil)
    this:GetQuestNpcActor(npcs.Npc5290Data.alias):DisableInteeHeadCtrl(true)
    this:SafeDestroyQuestNpc(npcs.Npc21278Data.alias, 3)
end

function Quest74164:OnSubStart7416403(arg1)
    print("OnSubStart7416403")
    this:CreateQuestNpc(arg1, npcs.Npc5290Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5291Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5291Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q74164Trigger", "Actor/Gadget/Q74164Trigger", 70900002, 0, {x = 3279.526, y = 441.366, z = 3100.856}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest74164:OnSubFinish7416403(arg1)
    print("OnSubFinish7416403")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5291Data.alias, 3)
end

function Quest74164:OnSubStart7416405(arg1)
    print("OnSubStart7416405")
    this:CreateQuestNpc(arg1, npcs.Npc5290Data.id, 0)
    actorMgr:CreateActorWithPos("Q74164Trigger1", "Actor/Gadget/Q74164Trigger1", 70900002, 0, {x = 2668.825, y = 192.751, z = 3654.754}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74164:OnSubFinish7416405(arg1)
    print("OnSubFinish7416405")
    this:CallDelayByQuest("", 10, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7416413)
    end)

    this:ActorDestroy("Q74164Trigger1")
end

function Quest74164:OnSubStart7416404(arg1)
    print("OnSubStart7416404")
    actorMgr:CreateActorWithPos("Q7416404Trigger", "Actor/Gadget/Q7416404Trigger", 70900002, 0, {x = 2711.285, y = 226.443, z = 3644.84}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74164:OnSubFinish7416404(arg1)
    print("OnSubFinish7416404")
    this:NarratorOnlyTaskByData(datas.Narrator_7416409)
end

function Quest74164:OnSubStart7416420(arg1)
    print("OnSubStart7416420")
    actorMgr:CreateActorWithPos("Q7416420Trigger", "Actor/Gadget/Q7416420Trigger", 70900002, 0, {x = 2744.272, y = 226.582, z = 3642.231}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74164:OnSubFinish7416420(arg1)
    print("OnSubFinish7416420")
    this:NarratorOnlyTaskByData(datas.Narrator_7416411)
end

function Quest74164:OnSubStart7416421(arg1)
    print("OnSubStart7416421")
end

function Quest74164:OnSubFinish7416421(arg1)
    print("OnSubFinish7416421")
    this:NarratorOnlyTaskByData(datas.Narrator_7416406)
end

function Quest74164:OnSubStart7416422(arg1)
    print("OnSubStart7416422")
    actorMgr:CreateActorWithPos("Q7416422Trigger", "Actor/Gadget/Q7416422Trigger", 70900002, 0, {x = 2722.877, y = 230.496, z = 3684.568}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74164:OnSubFinish7416422(arg1)
    print("OnSubFinish7416422")
    this:NarratorOnlyTaskByData(datas.Narrator_7416405)
end

function Quest74164:OnSubStart7416423(arg1)
    print("OnSubStart7416423")
end

function Quest74164:OnSubFinish7416423(arg1)
    print("OnSubFinish7416423")
    this:NarratorOnlyTaskByData(datas.Narrator_7416412)
end

function Quest74164:OnSubStart7416424(arg1)
    print("OnSubStart7416424")
end

function Quest74164:OnSubFinish7416424(arg1)
    print("OnSubFinish7416424")
    this:NarratorOnlyTaskByData(datas.Narrator_7416407)
end

function Quest74164:OnSubStart7416427(arg1)
    print("OnSubStart7416427")
end

function Quest74164:OnSubFinish7416427(arg1)
    print("OnSubFinish7416427")
end

function Quest74164:OnSubStart7416406(arg1)
    print("OnSubStart7416406")
    this:CreateQuestNpc(arg1, npcs.Npc5290Data.id, 0)
end

function Quest74164:OnSubFinish7416406(arg1)
    print("OnSubFinish7416406")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5290Data.alias, 3)
end

function Quest74164:OnSubStart7416407(arg1)
    print("OnSubStart7416407")
    actorMgr:CreateActorWithPos("Q74164Trigger2", "Actor/Gadget/Q74164Trigger2", 70900002, 0, {x = 3273.854, y = 408.104, z = 3896.235}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74164:OnSubFinish7416407(arg1)
    print("OnSubFinish7416407")
end

function Quest74164:OnSubStart7416408(arg1)
    print("OnSubStart7416408")
end

function Quest74164:OnSubFinish7416408(arg1)
    print("OnSubFinish7416408")
    this:NarratorOnlyTaskByData(datas.Narrator_7416415)
end

function Quest74164:OnSubStart7416409(arg1)
    print("OnSubStart7416409")
    actorMgr:CreateActorWithPos("Q74164Trigger3", "Actor/Gadget/Q74164Trigger3", 70900002, 0, {x = 3281.111, y = 407.416, z = 3886.196}, {x = 0.0, y = 45.163, z = 0.0}, true, false, 3)
end

function Quest74164:OnSubFinish7416409(arg1)
    print("OnSubFinish7416409")
end

function Quest74164:OnSubStart7416410(arg1)
    print("OnSubStart7416410")
    this:CreateQuestNpc(arg1, npcs.Npc5291Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5291Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc21277Data.id, 0)
    this:RequestInteraction(npcs.Npc21277Data.alias, "", true)
end

function Quest74164:OnSubFinish7416410(arg1)
    print("OnSubFinish7416410")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74164:OnSubStart7416411(arg1)
    print("OnSubStart7416411")
    this:CreateQuestNpc(arg1, npcs.Npc5291Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5291Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc21277Data.id, 0)
end

function Quest74164:OnSubFinish7416411(arg1)
    print("OnSubFinish7416411")
    this:NarratorOnlyTaskByData(datas.Narrator_7416416)
end

function Quest74164:OnSubStart7416417(arg1)
    print("OnSubStart7416417")
    this:CreateQuestNpc(arg1, npcs.Npc21301Data.id, 0)
end

function Quest74164:OnSubFinish7416417(arg1)
    print("OnSubFinish7416417")
    this:SafeDestroyQuestNpc(npcs.Npc21301Data.alias, 3)
end

function Quest74164:OnSubStart7416418(arg1)
    print("OnSubStart7416418")
    this:CreateQuestNpc(arg1, npcs.Npc21302Data.id, 0)
end

function Quest74164:OnSubFinish7416418(arg1)
    print("OnSubFinish7416418")
    this:SafeDestroyQuestNpc(npcs.Npc21302Data.alias, 3)
end

function Quest74164:OnSubStart7416419(arg1)
    print("OnSubStart7416419")
    this:CreateQuestNpc(arg1, npcs.Npc21303Data.id, 0)
end

function Quest74164:OnSubFinish7416419(arg1)
    print("OnSubFinish7416419")
    this:SafeDestroyQuestNpc(npcs.Npc21303Data.alias, 3)
end

function Quest74164:OnSubStart7416428(arg1)
    print("OnSubStart7416428")
end

function Quest74164:OnSubFinish7416428(arg1)
    print("OnSubFinish7416428")
end

function Quest74164:OnSubStart7416412(arg1)
    print("OnSubStart7416412")
    this:CreateQuestNpc(arg1, npcs.Npc5291Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5291Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc21277Data.id, 0)
end

function Quest74164:OnSubFinish7416412(arg1)
    print("OnSubFinish7416412")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74164:OnSubStart7416413(arg1)
    print("OnSubStart7416413")
    this:CreateQuestNpc(arg1, npcs.Npc5291Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5291Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc21277Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21325Data.id, 0)
end

function Quest74164:OnSubFinish7416413(arg1)
    print("OnSubFinish7416413")
    this:SafeDestroyQuestNpc(npcs.Npc21325Data.alias, 3)
end

function Quest74164:OnSubStart7416414(arg1)
    print("OnSubStart7416414")
    this:DailyNpcSafeHideSelf(npcs.Npc5291Data.alias, 1, true)
end

function Quest74164:OnSubFinish7416414(arg1)
    print("OnSubFinish7416414")
end

function Quest74164:OnSubStart7416415(arg1)
    print("OnSubStart7416415")
    this:DailyNpcSafeHideSelf(npcs.Npc5291Data.alias, 1, true)
end

function Quest74164:OnSubFinish7416415(arg1)
    print("OnSubFinish7416415")
end

function Quest74164:OnSubStart7416416(arg1)
    print("OnSubStart7416416")
    this:CreateQuestNpc(arg1, npcs.Npc5291Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21277Data.id, 0)
    this:RequestInteraction(npcs.Npc21277Data.alias, "", true)
end

function Quest74164:OnSubFinish7416416(arg1)
    print("OnSubFinish7416416")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5291Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21277Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5291Data.alias, 0, true)
end

return Quest74164
