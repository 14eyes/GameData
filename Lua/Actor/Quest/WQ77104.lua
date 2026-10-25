require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77104 = class("Quest77104", QuestActorProxy)
Quest77104.defaultAlias = "Quest77104"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77104:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77104:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7710428"] = self.OnSubStart7710428,
        ["7710427"] = self.OnSubStart7710427,
        ["7710429"] = self.OnSubStart7710429,
        ["7710401"] = self.OnSubStart7710401,
        ["7710430"] = self.OnSubStart7710430,
        ["7710402"] = self.OnSubStart7710402,
        ["7710422"] = self.OnSubStart7710422,
        ["7710416"] = self.OnSubStart7710416,
        ["7710403"] = self.OnSubStart7710403,
        ["7710404"] = self.OnSubStart7710404,
        ["7710432"] = self.OnSubStart7710432,
        ["7710407"] = self.OnSubStart7710407,
        ["7710413"] = self.OnSubStart7710413,
        ["7710406"] = self.OnSubStart7710406,
        ["7710419"] = self.OnSubStart7710419,
        ["7710405"] = self.OnSubStart7710405,
        ["7710423"] = self.OnSubStart7710423,
        ["7710414"] = self.OnSubStart7710414,
        ["7710410"] = self.OnSubStart7710410,
        ["7710408"] = self.OnSubStart7710408,
        ["7710409"] = self.OnSubStart7710409,
        ["7710415"] = self.OnSubStart7710415,
        ["7710411"] = self.OnSubStart7710411
    }
end

function Quest77104:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7710428"] = self.OnSubFinish7710428,
        ["7710427"] = self.OnSubFinish7710427,
        ["7710429"] = self.OnSubFinish7710429,
        ["7710401"] = self.OnSubFinish7710401,
        ["7710430"] = self.OnSubFinish7710430,
        ["7710402"] = self.OnSubFinish7710402,
        ["7710422"] = self.OnSubFinish7710422,
        ["7710416"] = self.OnSubFinish7710416,
        ["7710403"] = self.OnSubFinish7710403,
        ["7710404"] = self.OnSubFinish7710404,
        ["7710432"] = self.OnSubFinish7710432,
        ["7710407"] = self.OnSubFinish7710407,
        ["7710413"] = self.OnSubFinish7710413,
        ["7710406"] = self.OnSubFinish7710406,
        ["7710419"] = self.OnSubFinish7710419,
        ["7710405"] = self.OnSubFinish7710405,
        ["7710423"] = self.OnSubFinish7710423,
        ["7710414"] = self.OnSubFinish7710414,
        ["7710410"] = self.OnSubFinish7710410,
        ["7710408"] = self.OnSubFinish7710408,
        ["7710409"] = self.OnSubFinish7710409,
        ["7710415"] = self.OnSubFinish7710415,
        ["7710411"] = self.OnSubFinish7710411
    }
end

function Quest77104:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77104:Start()
    print("Start")
end

function Quest77104:OnDestroy()
    print("OnDestroy")
end

function Quest77104:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77104:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77104:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77104:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7710401Trigger", 0)
    this:ActorDestroy("Q7710401Trigger_2", 77104)
    this:ActorDestroy("Q7710402Trigger_1", 0)
    this:ActorDestroy("Q7710402Trigger_2", 0)
    this:ActorDestroy("Q7710404Trigger", 0)
    this:ActorDestroy("Q7710408Trigger", 0)
    this:ActorDestroy("Q7710409Trigger", 0)
    this:ActorDestroy("Q7710427Trigger_1", 77104)
    this:ActorDestroy("Q7710428Trigger", 77104)
    this:ActorDestroy("Q7710428Trigger_1", 77104)
    this:ActorDestroy("Q7710428Trigger_2", 77104)
    this:ActorDestroy("Q7710429Trigger", 0)
    this:ActorDestroy("Q7710432Trigger02", 77104)
    this:ActorDestroy("Q7710432Trigger", 77104)
    this:ActorDestroy("Q7710410Trigger_Left", 77104)
    this:ActorDestroy("Q7710410Trigger_Right", 77104)
    this:ActorDestroy("Q7710410Trigger_4", 77104)
    this:ActorDestroy("Q7710410Trigger_5", 77104)
    this:ActorDestroy("Q7710410Trigger_6", 77104)
    this:ActorDestroy("Q7710413Trigger", 77104)
    this:ActorDestroy("Q7710414Trigger_1", 77104)
    this:ActorDestroy("Q7710407Trigger_1", 77104)
    this:ActorDestroy("Q7710407Trigger_2", 77104)
end

function Quest77104:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7710415 then
        actorUtils.FinishQuestWithParam({false}, {7710419})
    elseif arg1 == 7710408 then
        actorUtils.FinishQuestWithParam({false}, {7710419})
        this:SetQuestVarByMainId(18, 1)
    end
end

function Quest77104:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77104:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77104:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest77104:OnSubStart7710428(arg1)
    print("OnSubStart7710428")
    this:CreateQuestNpc(arg1, npcs.Npc22812.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710428Trigger", "Actor/Gadget/Q7710428Trigger", 70900002, 0, points._Q7710428TriggerPoint_.pos, points._Q7710428TriggerPoint_.rot, true, false, 3, nil, 0, 77104)
    actorMgr:CreateActorWithPos("Q7710428Trigger_1", "Actor/Gadget/Q7710428Trigger_1", 70900002, 0, points._Q7710428Trigger_1Point_.pos, points._Q7710428Trigger_1Point_.rot, true, false, 3, nil, 0, 77104)
    actorMgr:CreateActorWithPos("Q7710428Trigger_2", "Actor/Gadget/Q7710428Trigger_2", 70900002, 0, points._Q7710428Trigger_2Point_.pos, points._Q7710428Trigger_2Point_.rot, true, false, 3, nil, 0, 77104)
end

function Quest77104:OnSubFinish7710428(arg1)
    print("OnSubFinish7710428")
    this:SafeDestroyQuestNpc(npcs.Npc22812.alias, 3)
end

function Quest77104:OnSubStart7710427(arg1)
    print("OnSubStart7710427")
    actorMgr:CreateActorWithPos("Q7710427Trigger_1", "Actor/Gadget/Q7710427Trigger_1", 70900002, 0, points._Q7710427Trigger_1Point_.pos, points._Q7710427Trigger_1Point_.rot, true, false, 3, nil, 0, 77104)
end

function Quest77104:OnSubFinish7710427(arg1)
    print("OnSubFinish7710427")
end

function Quest77104:OnSubStart7710429(arg1)
    print("OnSubStart7710429")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710429, 0, 18, 0.5, npcs.Npc22318.id)
end

function Quest77104:OnSubFinish7710429(arg1)
    print("OnSubFinish7710429")
    this:SetNavigationByMainId(77104, true)
end

function Quest77104:OnSubStart7710401(arg1)
    print("OnSubStart7710401")
    actorMgr:CreateActorWithPos("Q7710401Trigger", "Actor/Gadget/Q7710401Trigger", 70900002, 0, points._Q7710401TriggerPoint_.pos, points._Q7710401TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7710401Trigger_2", "Actor/Gadget/Q7710401Trigger_2", 70900002, 0, points._Q7710401Trigger_2Point_.pos, points._Q7710401Trigger_2Point_.rot, true, false, 3, nil, 0, 77104)
    this:DeployStoryByQuest(147710400)
end

function Quest77104:OnSubFinish7710401(arg1)
    print("OnSubFinish7710401")
end

function Quest77104:OnSubStart7710430(arg1)
    print("OnSubStart7710430")
end

function Quest77104:OnSubFinish7710430(arg1)
    print("OnSubFinish7710430")
end

function Quest77104:OnSubStart7710402(arg1)
    print("OnSubStart7710402")
    actorMgr:CreateActorWithPos("Q7710402Trigger_2", "Actor/Gadget/Q7710402Trigger_2", 70900002, 0, points._Q7710402Trigger_2Point_.pos, points._Q7710402Trigger_2Point_.rot, true, false, 3, nil, 0, 0)
    this:DeployStoryByQuest(147710400)
end

function Quest77104:OnSubFinish7710402(arg1)
    print("OnSubFinish7710402")
    this:ShowBlackScreenWithDialogText(0, 2, 0.2, nil, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_77104020, nil)
        actorMgr:CreateActorWithPos("Q7710402Trigger_1", "Actor/Gadget/Q7710402Trigger_1", 70900002, 0, points._Q7710402Trigger_1Point_.pos, points._Q7710402Trigger_1Point_.rot, true, false, 3, nil, 0, 0)
    end, nil, 0, false, true)
end

function Quest77104:OnSubStart7710422(arg1)
    print("OnSubStart7710422")
    this:CreateQuestNpc(arg1, npcs.Npc7655.id, 0, false, 0)
    this:SafeDestroyQuestNpc(npcs.Npc22318.alias, 3)
    this:CancelStoryByQuest(147710400)
end

function Quest77104:OnSubFinish7710422(arg1)
    print("OnSubFinish7710422")
    this:RequestInteraction(npcs.Npc7655.alias, "", true)
    this:ActionSafeCall(nil)
    this:ActorDestroy("Q7710402Trigger_1", 0)
end

function Quest77104:OnSubStart7710416(arg1)
    print("OnSubStart7710416")
    this:RequestInteraction(npcs.Npc7655.alias, "", true)
end

function Quest77104:OnSubFinish7710416(arg1)
    print("OnSubFinish7710416")
end

function Quest77104:OnSubStart7710403(arg1)
    print("OnSubStart7710403")
end

function Quest77104:OnSubFinish7710403(arg1)
    print("OnSubFinish7710403")
    this:CancelStoryByQuest(147710400)
end

function Quest77104:OnSubStart7710404(arg1)
    print("OnSubStart7710404")
    this:RequestInteraction(npcs.Npc7655.alias, "", true)
end

function Quest77104:OnSubFinish7710404(arg1)
    print("OnSubFinish7710404")
end

function Quest77104:OnSubStart7710432(arg1)
    print("OnSubStart7710432")
    this:CreateQuestNpc(arg1, npcs.Npc3417.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710432Trigger02", "Actor/Gadget/Q7710432Trigger02", 70900002, 0, points._Q7710432Trigger02Point_.pos, points._Q7710432Trigger02Point_.rot, true, false, 3, nil, 0, 77104)
end

function Quest77104:OnSubFinish7710432(arg1)
    print("OnSubFinish7710432")
    this:SafeDestroyQuestNpc(npcs.Npc3417.alias, 3)
    this:ActorDestroy("Q7710432Trigger02", 77104)
end

function Quest77104:OnSubStart7710407(arg1)
    print("OnSubStart7710407")
    this:CreateQuestNpc(arg1, npcs.Npc3412.id, 0, false, 0)
    this:NotifyTo(npcs.Npc3412.alias, 2, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3412.alias, false, 2)
    actorMgr:CreateActorWithPos("Q7710407Trigger_1", "Actor/Gadget/Q7710407Trigger_1", 70900002, 0, points._Q7710407Trigger_1Point_.pos, points._Q7710407Trigger_1Point_.rot, true, false, 3, nil, 0, 77104)
    actorMgr:CreateActorWithPos("Q7710407Trigger_2", "Actor/Gadget/Q7710407Trigger_2", 70900002, 0, points._Q7710407Trigger_2Point_.pos, points._Q7710407Trigger_2Point_.rot, true, false, 3, nil, 0, 77104)
end

function Quest77104:OnSubFinish7710407(arg1)
    print("OnSubFinish7710407")
    this:LightNotifyTo(npcs.Npc3412.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc3412.alias, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc3412.alias, false, 0)
end

function Quest77104:OnSubStart7710413(arg1)
    print("OnSubStart7710413")
    this:CreateQuestNpc(arg1, npcs.Npc22767.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7655.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710413Trigger", "Actor/Gadget/Q7710413Trigger", 70900002, 0, points._Q7710413TriggerPoint_.pos, points._Q7710413TriggerPoint_.rot, true, false, 3, nil, 0, 77104)
end

function Quest77104:OnSubFinish7710413(arg1)
    print("OnSubFinish7710413")
    this:QuestNarratorTask(datas.NarratorWithId_7710405, nil)
end

function Quest77104:OnSubStart7710406(arg1)
    print("OnSubStart7710406")
end

function Quest77104:OnSubFinish7710406(arg1)
    print("OnSubFinish7710406")
    this:QuestNarratorTask(datas.NarratorWithId_7710406, nil)
end

function Quest77104:OnSubStart7710419(arg1)
    print("OnSubStart7710419")
    this:CreateQuestNpc(arg1, npcs.Npc22361.id, 0, false, 0)
end

function Quest77104:OnSubFinish7710419(arg1)
    print("OnSubFinish7710419")
    this:SafeDestroyQuestNpc(npcs.Npc22361.alias, 3)
    this:ShowBlackScreenWithDialogText(0, 2, 0.2, nil, nil, nil, 0, false, true)
end

function Quest77104:OnSubStart7710405(arg1)
    print("OnSubStart7710405")
end

function Quest77104:OnSubFinish7710405(arg1)
    print("OnSubFinish7710405")
    this:QuestNarratorTask(datas.NarratorWithId_7710412, nil)
end

function Quest77104:OnSubStart7710423(arg1)
    print("OnSubStart7710423")
end

function Quest77104:OnSubFinish7710423(arg1)
    print("OnSubFinish7710423")
    this:SafeDestroyQuestNpc(npcs.Npc22767.alias, 3)
    local questGlobalVar = this:GetQuestGlobalVar(7710003)
    local v = this:GetQuestGlobalVar(7710001)
    local questGlobalVar2 = this:GetQuestGlobalVar(7710003)
    local questGlobalVar3 = this:GetQuestGlobalVar(7710001)
    local questGlobalVar4 = this:GetQuestGlobalVar(7710003)
    if questGlobalVar == 0 and v == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7710407, nil)
    elseif questGlobalVar2 == 0 and questGlobalVar3 == 1 then
        this:QuestNarratorTask(datas.NarratorWithId_7710408, nil)
    elseif questGlobalVar4 == 1 then
        this:QuestNarratorTask(datas.NarratorWithId_7710409, nil)
    end
end

function Quest77104:OnSubStart7710414(arg1)
    print("OnSubStart7710414")
    this:CreateQuestNpc(arg1, npcs.Npc22764.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22765.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22766.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22361.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710414Trigger_1", "Actor/Gadget/Q7710414Trigger_1", 70900002, 0, points._Q7710414Trigger_1Point_.pos, points._Q7710414Trigger_1Point_.rot, true, false, 3, nil, 0, 77104)
end

function Quest77104:OnSubFinish7710414(arg1)
    print("OnSubFinish7710414")
    this:SafeDestroyQuestNpc(npcs.Npc7875.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22361.alias, 3)
end

function Quest77104:OnSubStart7710410(arg1)
    print("OnSubStart7710410")
    this:CreateQuestNpc(arg1, npcs.Npc22708.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22709.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22800.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710410Trigger_Left", "Actor/Gadget/Q7710410Trigger_Left", 70900002, 0, points._Q7710410Trigger_LeftPoint_.pos, points._Q7710410Trigger_LeftPoint_.rot, true, false, 3, nil, 0, 77104)
    actorMgr:CreateActorWithPos("Q7710410Trigger_Right", "Actor/Gadget/Q7710410Trigger_Right", 70900002, 0, points._Q7710410Trigger_RightPoint_.pos, points._Q7710410Trigger_RightPoint_.rot, true, false, 3, nil, 0, 77104)
    actorMgr:CreateActorWithPos("Q7710410Trigger_4", "Actor/Gadget/Q7710410Trigger_4", 70900002, 0, points._Q7710410Trigger_4Point_.pos, points._Q7710410Trigger_4Point_.rot, true, false, 3, nil, 0, 77104)
    actorMgr:CreateActorWithPos("Q7710410Trigger_5", "Actor/Gadget/Q7710410Trigger_5", 70900002, 0, points._Q7710410Trigger_5Point_.pos, points._Q7710410Trigger_5Point_.rot, true, false, 3, nil, 0, 77104)
    actorMgr:CreateActorWithPos("Q7710410Trigger_6", "Actor/Gadget/Q7710410Trigger_6", 70900002, 0, points._Q7710410Trigger_6Point_.pos, points._Q7710410Trigger_6Point_.rot, true, false, 3, nil, 0, 77104)
end

function Quest77104:OnSubFinish7710410(arg1)
    print("OnSubFinish7710410")
    this:SafeDestroyQuestNpc(npcs.Npc22708.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22709.alias, 3)
end

function Quest77104:OnSubStart7710408(arg1)
    print("OnSubStart7710408")
    this:CreateQuestNpc(arg1, npcs.Npc22764.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22765.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22766.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710408Trigger", "Actor/Gadget/Q7710408Trigger", 70900002, 0, points._Q7710408TriggerPoint_.pos, points._Q7710408TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77104:OnSubFinish7710408(arg1)
    print("OnSubFinish7710408")
end

function Quest77104:OnSubStart7710409(arg1)
    print("OnSubStart7710409")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710409, 0, 100, 0.5, npcs.Npc22361.id)
    actorMgr:CreateActorWithPos("Q7710409Trigger", "Actor/Gadget/Q7710409Trigger", 70900002, 0, points._Q7710409TriggerPoint_.pos, points._Q7710409TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77104:OnSubFinish7710409(arg1)
    print("OnSubFinish7710409")
    this:SafeDestroyQuestNpc(npcs.Npc22361.alias, 3)
    this:TransmitPlayerByData(arg1, 5, datas.TransmitData, function(arg1)
        this:AfterMainPageActiveSafeCall(nil)
    end, nil, nil)
end

function Quest77104:OnSubStart7710415(arg1)
    print("OnSubStart7710415")
    actorUtils.FinishQuestWithParam({false}, {7710415})
end

function Quest77104:OnSubFinish7710415(arg1)
    print("OnSubFinish7710415")
    this:SafeDestroyQuestNpc(npcs.Npc22708.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22709.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22764.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22765.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22766.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22800.alias, 3)
end

function Quest77104:OnSubStart7710411(arg1)
    print("OnSubStart7710411")
end

function Quest77104:OnSubFinish7710411(arg1)
    print("OnSubFinish7710411")
end

return Quest77104
