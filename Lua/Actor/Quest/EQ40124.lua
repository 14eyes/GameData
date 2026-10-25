require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40124 = class("Quest40124", QuestActorProxy)
Quest40124.defaultAlias = "Quest40124"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40124:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40124:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4012401"] = self.OnSubStart4012401,
        ["4012402"] = self.OnSubStart4012402,
        ["4012403"] = self.OnSubStart4012403,
        ["4012419"] = self.OnSubStart4012419,
        ["4012420"] = self.OnSubStart4012420,
        ["4012404"] = self.OnSubStart4012404,
        ["4012405"] = self.OnSubStart4012405,
        ["4012413"] = self.OnSubStart4012413,
        ["4012416"] = self.OnSubStart4012416,
        ["4012406"] = self.OnSubStart4012406,
        ["4012414"] = self.OnSubStart4012414,
        ["4012407"] = self.OnSubStart4012407,
        ["4012408"] = self.OnSubStart4012408,
        ["4012417"] = self.OnSubStart4012417,
        ["4012418"] = self.OnSubStart4012418,
        ["4012409"] = self.OnSubStart4012409,
        ["4012410"] = self.OnSubStart4012410,
        ["4012415"] = self.OnSubStart4012415,
        ["4012411"] = self.OnSubStart4012411,
        ["4012412"] = self.OnSubStart4012412
    }
end

function Quest40124:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4012401"] = self.OnSubFinish4012401,
        ["4012402"] = self.OnSubFinish4012402,
        ["4012403"] = self.OnSubFinish4012403,
        ["4012419"] = self.OnSubFinish4012419,
        ["4012420"] = self.OnSubFinish4012420,
        ["4012404"] = self.OnSubFinish4012404,
        ["4012405"] = self.OnSubFinish4012405,
        ["4012413"] = self.OnSubFinish4012413,
        ["4012416"] = self.OnSubFinish4012416,
        ["4012406"] = self.OnSubFinish4012406,
        ["4012414"] = self.OnSubFinish4012414,
        ["4012407"] = self.OnSubFinish4012407,
        ["4012408"] = self.OnSubFinish4012408,
        ["4012417"] = self.OnSubFinish4012417,
        ["4012418"] = self.OnSubFinish4012418,
        ["4012409"] = self.OnSubFinish4012409,
        ["4012410"] = self.OnSubFinish4012410,
        ["4012415"] = self.OnSubFinish4012415,
        ["4012411"] = self.OnSubFinish4012411,
        ["4012412"] = self.OnSubFinish4012412
    }
end

function Quest40124:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40124:Start()
    print("Start")
end

function Quest40124:OnDestroy()
    print("OnDestroy")
end

function Quest40124:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40124:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40124:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13431Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13604Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1060Data.alias, 3)
    local actor = actorMgr:GetActor("40123")
    if actor ~= actorMgr.dummyActor then
        actor:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    end

    self:LightNotifyTo("Npc2410", 0, true)
    local v = actorMgr:GetActor("40124")
    self:RemoveLocalGadget(70290013, "1")
    self:RemoveLocalGadget(71700711, "1")
    self:RemoveLocalGadget(71700711, "2")
    self:RemoveLocalGadget(71700711, "3")
    self:RemoveLocalGadget(70710470, "1")
    self:RemoveLocalGadget(70290001, "1")
    self:RemoveLocalGadget(71700712, "1")
    self:RemoveLocalGadget(71700712, "2")
    self:RemoveLocalGadget(71700712, "3")
    self:RemoveLocalGadget(70900635, "1")
    actorMgr:DestroyEntityActor("Q40124Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012402N1021Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012403N1061Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012404N1061Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012414N1061Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012407N1027Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012409N10045Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012411N1021Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012415N13431Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012405N1061Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012410N1027Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012409N10045Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012411N1001Trigger", 3, false)
    self:UnCallDelayByQuest("4012403Narrator")
    self:UnCallDelayByQuest("4012405Trigger1")
    self:UnCallDelayByQuest("4012409Trigger1")
    globalActor:ResumePaimonInProfilePage({3})
    self:CancelWeather()
end

function Quest40124:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest40124:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest40124:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:FinishQuestID(false, 4012404)
    end
end

function Quest40124:OnSubStart4012401(arg1)
    print("OnSubStart4012401")
end

function Quest40124:OnSubFinish4012401(arg1)
    print("OnSubFinish4012401")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest40124:OnSubStart4012402(arg1)
    print("OnSubStart4012402")
    this:NpcCreateWithNpcTrigger(npcs.Npc1021Data.id, 4012402, 0, 15)
    this:CreateQuestNpc(arg1, npcs.WendyData.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1061Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10045Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1027Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1060Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 0)
end

function Quest40124:OnSubFinish4012402(arg1)
    print("OnSubFinish4012402")
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1060Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:ClearNarratorTask()
end

function Quest40124:OnSubStart4012403(arg1)
    print("OnSubStart4012403")
    self:ClearNarratorTask()
    self:CancelWeather()
    self:RemoveLocalGadget(70710470, "1")
    self:UnCallDelayByQuest("4012403Narrator")
    self:UnCallDelayByQuest("4012405Trigger1")
    actorMgr:DestroyEntityActor("Q4012405N1061Trigger", 3, false)
    self:RemoveLocalGadget(70900635, "1")
    self:SafeDestroyQuestNpc(npcs.Npc13604Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1061Data.id, 4012403, 0, 20, 1)
end

function Quest40124:OnSubFinish4012403(arg1)
    print("OnSubFinish4012403")
    self:ActionSafeCall(function(arg1)
        arg1.CallDelayByQuest(arg1, "4012403Narrator", 2, function()
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId_01)
        end)
    end)

    self:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
end

function Quest40124:OnSubStart4012419(arg1)
    print("OnSubStart4012419")
end

function Quest40124:OnSubFinish4012419(arg1)
    print("OnSubFinish4012419")
end

function Quest40124:OnSubStart4012420(arg1)
    print("OnSubStart4012420")
end

function Quest40124:OnSubFinish4012420(arg1)
    print("OnSubFinish4012420")
end

function Quest40124:OnSubStart4012404(arg1)
    print("OnSubStart4012404")
end

function Quest40124:OnSubFinish4012404(arg1)
    print("OnSubFinish4012404")
end

function Quest40124:OnSubStart4012413(arg1)
    print("OnSubStart4012413")
    self:CreateLocalGadget(70710470, "1", {x = 938.79, y = 207.59, z = 44.514}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self:SetWeather("BigWorld/Weather_ClearSky")
end

function Quest40124:OnSubFinish4012413(arg1)
    print("OnSubFinish4012413")
    self:RemoveLocalGadget(70710470, "1")
end

function Quest40124:OnSubStart4012416(arg1)
    print("OnSubStart4012416")
    self:SetWeather("BigWorld/Weather_ClearSky")
    self:EnterSceneLookCamera({x = 942.91, y = 204.99, z = 51.21}, 0, 2, true, true)
end

function Quest40124:OnSubFinish4012416(arg1)
    print("OnSubFinish4012416")
end

function Quest40124:OnSubStart4012405(arg1)
    print("OnSubStart4012405")
    self.SetWeather(self, "BigWorld/Weather_ClearSky")
    self.CallDelayByQuest(self, "4012405Trigger1", 2, function()
        self:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1061Data.id, 4012405, 0, 20, 1)
    end)
end

function Quest40124:OnSubFinish4012405(arg1)
    print("OnSubFinish4012405")
    self:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
end

function Quest40124:OnSubStart4012406(arg1)
    print("OnSubStart4012406")
    self:SetWeather("BigWorld/Weather_ClearSky")
    self:CreateLocalGadget(70900635, "1", {x = 926.8988, y = 200, z = 61.31171}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    this:CreateQuestNpc(arg1, npcs.Npc13604Data.id, 0)
end

function Quest40124:OnSubFinish4012406(arg1)
    print("OnSubFinish4012406")
    self:CancelWeather()
    this:SafeDestroyQuestNpc(npcs.Npc13604Data.alias, 3)
    self:RemoveLocalGadget(70900635, "1")
end

function Quest40124:OnSubStart4012414(arg1)
    print("OnSubStart4012414")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1061Data.id, 4012414, 0, 10, 1)
end

function Quest40124:OnSubFinish4012414(arg1)
    print("OnSubFinish4012414")
    this:ActionSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerWithDialogTextById(arg1, 1, {401249910}, 10, nil, nil)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
end

function Quest40124:OnSubStart4012407(arg1)
    print("OnSubStart4012407")
    globalActor:ResumePaimonInProfilePage({3})
    self:RemoveLocalGadget(70710470, "1")
    self:UnCallDelayByQuest("4012409Trigger1")
    actorMgr:DestroyEntityActor("Q40124Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012409N10045Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012410N1027Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012415N13431Trigger", 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc13431Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:ClearNarratorTask()
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1027Data.id, 4012407, 0, 15, 0)
    self:NotifyTo("Npc2410", 1, true)
end

function Quest40124:OnSubFinish4012407(arg1)
    print("OnSubFinish4012407")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.NarratorWithId_02, nil, 40124, 0)
    end)
end

function Quest40124:OnSubStart4012408(arg1)
    print("OnSubStart4012408")
    self:NotifyTo("Npc2410", 1, true)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest40124:OnSubFinish4012408(arg1)
    print("OnSubFinish4012408")
    self:ClearNarratorTask()
end

function Quest40124:OnSubStart4012417(arg1)
    print("OnSubStart4012417")
    local tbl = {x = 1316.418, y = 201.5729, z = 506.3349}
    local v = {x = 0, y = 331.15, z = 0}
    local tbl2 = {x = tbl.x, y = tbl.y, z = tbl.z}
    self:CreateLocalGadget(70710470, "1", tbl2, v, 3, nil, nil, true)
    self:NotifyTo("Npc2410", 1, true)
    actorMgr:CreateActorWithPos("Q40124Trigger", "Actor/Gadget/Q40124Trigger", 70900002, 0, {x = 1316.49, y = 200.64, z = 506.1}, {x = 0, y = 0, z = 0}, true, false, 3)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest40124:OnSubFinish4012417(arg1)
    print("OnSubFinish4012417")
    self:RemoveLocalGadget(70710470, "1")
end

function Quest40124:OnSubStart4012418(arg1)
    print("OnSubStart4012418")
end

function Quest40124:OnSubFinish4012418(arg1)
    print("OnSubFinish4012418")
end

function Quest40124:OnSubStart4012409(arg1)
    print("OnSubStart4012409")
    self:CallDelayByQuest("4012409Trigger1", 1, function()
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc10045Data.id, 4012409, 0, 5, 1)
    end)

    self:NotifyTo("Npc2410", 1, true)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest40124:OnSubFinish4012409(arg1)
    print("OnSubFinish4012409")
    this:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
end

function Quest40124:OnSubStart4012410(arg1)
    print("OnSubStart4012410")
    self:NpcCreateWithNpcTrigger(npcs.Npc1027Data.id, 4012410, 0, 12)
    self:NotifyTo("Npc2410", 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1027Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1230, true, nil, true, true, false, true)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest40124:OnSubFinish4012410(arg1)
    print("OnSubFinish4012410")
    this:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
end

function Quest40124:OnSubStart4012415(arg1)
    print("OnSubStart4012415")
    self:NpcCreateWithNpcTrigger(npcs.Npc13431Data.id, 4012415, 0, 15)
    self:NotifyTo("Npc2410", 1, true)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest40124:OnSubFinish4012415(arg1)
    print("OnSubFinish4012415")
    this:SafeDestroyQuestNpc(npcs.Npc13431Data.alias, 3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerWithDialogTextById(arg1, 1, {401249909}, 1, nil, nil)
    end)

    self:LightNotifyTo("Npc2410", 0, true)
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest40124:OnSubStart4012411(arg1)
    print("OnSubStart4012411")
    this:NpcCreateWithNpcTrigger(npcs.WendyData.id, 4012411, 0, 10)
end

function Quest40124:OnSubFinish4012411(arg1)
    print("OnSubFinish4012411")
end

function Quest40124:OnSubStart4012412(arg1)
    print("OnSubStart4012412")
end

function Quest40124:OnSubFinish4012412(arg1)
    print("OnSubFinish4012412")
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
end

return Quest40124
