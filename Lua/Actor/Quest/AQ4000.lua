require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4000 = class("Quest4000", QuestActorProxy)
Quest4000.defaultAlias = "Quest4000"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4000:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["400001"] = self.OnSubStart400001,
        ["400008"] = self.OnSubStart400008,
        ["400002"] = self.OnSubStart400002,
        ["400003"] = self.OnSubStart400003,
        ["400004"] = self.OnSubStart400004,
        ["400005"] = self.OnSubStart400005,
        ["400006"] = self.OnSubStart400006,
        ["400007"] = self.OnSubStart400007,
        ["400009"] = self.OnSubStart400009
    }
end

function Quest4000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["400001"] = self.OnSubFinish400001,
        ["400008"] = self.OnSubFinish400008,
        ["400002"] = self.OnSubFinish400002,
        ["400003"] = self.OnSubFinish400003,
        ["400004"] = self.OnSubFinish400004,
        ["400005"] = self.OnSubFinish400005,
        ["400006"] = self.OnSubFinish400006,
        ["400007"] = self.OnSubFinish400007,
        ["400009"] = self.OnSubFinish400009
    }
end

function Quest4000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4000:Start()
    print("Start")
end

function Quest4000:OnDestroy()
    print("OnDestroy")
end

function Quest4000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4000:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4000:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest4000:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest4000:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest4000:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest4000:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest4000:OnSubStart400001(arg1)
    print("OnSubStart400001")
    actorMgr:CreateActorWithPos("Q400001_Trigger", "Actor/Gadget/Q400001_Trigger", 70900002, 0, points.TPos_Q400001_Trigger.pos, points.TPos_Q400001_Trigger.rot, true, false, 1084)
end

function Quest4000:OnSubFinish400001(arg1)
    print("OnSubFinish400001")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitBlank, 1, nil, nil)
    this:NPCDestroyImmediately(npcs.Npc1075Data.alias, 1084)
end

function Quest4000:OnSubStart400008(arg1)
    print("OnSubStart400008")
    actorMgr:CreateActorWithPos("Q400008_Trigger", "Actor/Gadget/Q400008_Trigger", 70900002, 0, points.TPos_Q400008_Trigger.pos, points.TPos_Q400008_Trigger.rot, true, false, 3)
end

function Quest4000:OnSubFinish400008(arg1)
    print("OnSubFinish400008")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest4000:OnSubStart400002(arg1)
    print("OnSubStart400002")
    this:NpcCreateWithNpcTrigger(npcs.Npc13320Data.id, 400002, 0, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc5115Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5111Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5112Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5113Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5114Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5102Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5104Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5105Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5116Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5110Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q400003_ReconnectTrigger", "Actor/Gadget/Q400003_ReconnectTrigger", 70900002, 0, {x = 3460.399, y = 496.458, z = 3674.876}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest4000:OnSubFinish400002(arg1)
    print("OnSubFinish400002")
    this:TransmitPlayerById(arg1, 1)
    if actorMgr:GetActor("Q400003_ReconnectTrigger") ~= nil then
        this:ActorDestroy("Q400003_ReconnectTrigger")
    end

    this:SafeDestroyQuestNpc(npcs.Npc13320Data.alias, 3)
end

function Quest4000:OnSubStart400003(arg1)
    print("OnSubStart400003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13314Data.id, 400003, 0, 80, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5115Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5111Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5112Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5113Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5114Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5102Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5104Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5105Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5116Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5110Data.alias, 1, true)
end

function Quest4000:OnSubFinish400003(arg1)
    print("OnSubFinish400003")
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc13314Data.alias, 3)
end

function Quest4000:OnSubStart400004(arg1)
    print("OnSubStart400004")
    this:NpcCreateWithNpcTrigger(npcs.Npc1075Data.id, 400004, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc13311Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13312Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1077Data.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5115Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5111Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5112Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5113Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5114Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5102Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5104Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5105Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5116Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5110Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1075Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest4000:OnSubFinish400004(arg1)
    print("OnSubFinish400004")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13311Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13312Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1077Data.alias, 3)
end

function Quest4000:OnSubStart400005(arg1)
    print("OnSubStart400005")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 400005, 0, 10, 1)
    this:LightNotifyTo(npcs.Npc5115Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5111Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5112Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5113Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5114Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5102Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5104Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5105Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5116Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5110Data.alias, 0, true)
end

function Quest4000:OnSubFinish400005(arg1)
    print("OnSubFinish400005")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13312Data.alias, 3)
end

function Quest4000:OnSubStart400006(arg1)
    print("OnSubStart400006")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13311Data.id, 0)
    actorMgr:CreateActorWithPos("Q400006_Trigger", "Actor/Gadget/Q400006_Trigger", 70900002, 0, points.TPos_Q400006_Trigger.pos, points.TPos_Q400006_Trigger.rot, true, false, 3)
end

function Quest4000:OnSubFinish400006(arg1)
    print("OnSubFinish400006")
    this:EnterSceneLookCamera(datas.Q400006_cameraLook, 0, 2, true, false)
end

function Quest4000:OnSubStart400007(arg1)
    print("OnSubStart400007")
    actorMgr:CreateActorWithPos("Q400007_Trigger", "Actor/Gadget/Q400007_Trigger", 70900002, 0, points.TPos_Q400007_Trigger.pos, points.TPos_Q400007_Trigger.rot, true, false, 3)
end

function Quest4000:OnSubFinish400007(arg1)
    print("OnSubFinish400007")
    if actorMgr:GetActor("Q400007_Trigger") ~= nil then
        this:ActorDestroy("Q400007_Trigger")
    end

    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13311Data.alias, 3)
end

function Quest4000:OnSubStart400009(arg1)
    print("OnSubStart400009")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13312Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13339Data.id, 0, false, 0)
end

function Quest4000:OnSubFinish400009(arg1)
    print("OnSubFinish400009")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13312Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13339Data.alias, 3)
end

return Quest4000
