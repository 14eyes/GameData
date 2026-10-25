require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74500 = class("Quest74500", QuestActorProxy)
Quest74500.defaultAlias = "Quest74500"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74500:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74500:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7450003"] = self.OnSubStart7450003,
        ["7450001"] = self.OnSubStart7450001,
        ["7450002"] = self.OnSubStart7450002,
        ["7450004"] = self.OnSubStart7450004,
        ["7450005"] = self.OnSubStart7450005,
        ["7450011"] = self.OnSubStart7450011,
        ["7450007"] = self.OnSubStart7450007,
        ["7450008"] = self.OnSubStart7450008,
        ["7450009"] = self.OnSubStart7450009,
        ["7450010"] = self.OnSubStart7450010,
        ["7450006"] = self.OnSubStart7450006
    }
end

function Quest74500:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7450003"] = self.OnSubFinish7450003,
        ["7450001"] = self.OnSubFinish7450001,
        ["7450002"] = self.OnSubFinish7450002,
        ["7450004"] = self.OnSubFinish7450004,
        ["7450005"] = self.OnSubFinish7450005,
        ["7450011"] = self.OnSubFinish7450011,
        ["7450007"] = self.OnSubFinish7450007,
        ["7450008"] = self.OnSubFinish7450008,
        ["7450009"] = self.OnSubFinish7450009,
        ["7450010"] = self.OnSubFinish7450010,
        ["7450006"] = self.OnSubFinish7450006
    }
end

function Quest74500:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74500:Start()
    print("Start")
end

function Quest74500:OnDestroy()
    print("OnDestroy")
end

function Quest74500:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74500:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74500:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5029Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5024Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30411Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30412Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30413Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5040Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5029Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5040Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q74500Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q74500Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q74500Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q74500Trigger3", 3, false)
end

function Quest74500:OnSubStart7450003(arg1)
    print("OnSubStart7450003")
end

function Quest74500:OnSubFinish7450003(arg1)
    print("OnSubFinish7450003")
end

function Quest74500:OnSubStart7450001(arg1)
    print("OnSubStart7450001")
    this:CreateQuestNpc(arg1, npcs.Npc5024Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30411Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30411Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc30412Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc30412Data.alias):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc30413Data.id, 0)
    actorMgr:CreateActorWithPos("Q74500Trigger", "Actor/Gadget/Q74500Trigger", 70900002, 0, points.TPos_Q74500Trigger.pos, points.TPos_Q74500Trigger.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5029Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
end

function Quest74500:OnSubFinish7450001(arg1)
    print("OnSubFinish7450001")
end

function Quest74500:OnSubStart7450002(arg1)
    print("OnSubStart7450002")
    this:NotifyTo(npcs.Npc5029Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q74500Trigger2", "Actor/Gadget/Q74500Trigger2", 70900002, 0, points.TPos_Q74500Trigger2.pos, points.TPos_Q74500Trigger2.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30411Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30412Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74500:OnSubFinish7450002(arg1)
    print("OnSubFinish7450002")
end

function Quest74500:OnSubStart7450004(arg1)
    print("OnSubStart7450004")
    actorMgr:CreateActorWithPos("Q74500Trigger1", "Actor/Gadget/Q74500Trigger1", 70900002, 0, points.TPos_Q74500Trigger1.pos, points.TPos_Q74500Trigger1.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5029Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc30411Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30412Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30411Data.alias):DoFreeStyle(1170, true, nil, true, true, false, true)
end

function Quest74500:OnSubFinish7450004(arg1)
    print("OnSubFinish7450004")
    this:NarratorOnlyTaskByData(datas.Narrator_7450001, nil, 74500)
end

function Quest74500:OnSubStart7450005(arg1)
    print("OnSubStart7450005")
    this:NotifyTo(npcs.Npc5029Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc30411Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30412Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30411Data.alias):DoFreeStyle(1170, true, nil, true, true, false, true)
end

function Quest74500:OnSubFinish7450005(arg1)
    print("OnSubFinish7450005")
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc5029Data.alias, 0, true)
        this:ClearNarratorTask()
        this:StopNarrator()
    end)
end

function Quest74500:OnSubStart7450011(arg1)
    print("OnSubStart7450011")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5029Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc5029Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
        this:CreateQuestNpc(arg1, npcs.Npc30411Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc30412Data.id, 0)
        actorMgr:CreateActorWithPos("Q74500Trigger3", "Actor/Gadget/Q74500Trigger3", 70900002, 0, points.TPos_Q74500Trigger3.pos, points.TPos_Q74500Trigger3.rot, true, false, 3)
        this:GetQuestNpcActor(npcs.Npc30411Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc30412Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc5029Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc5024Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest74500:OnSubFinish7450011(arg1)
    print("OnSubFinish7450011")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc30411Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc30412Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc5029Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc5024Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5029Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5024Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc30411Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc30412Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc30413Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5040Data.alias, 0, true)
        actorUtils.ShowContext("ToyBattleMainPage", 0)
    end)
end

function Quest74500:OnSubStart7450007(arg1)
    print("OnSubStart7450007")
end

function Quest74500:OnSubFinish7450007(arg1)
    print("OnSubFinish7450007")
end

function Quest74500:OnSubStart7450008(arg1)
    print("OnSubStart7450008")
end

function Quest74500:OnSubFinish7450008(arg1)
    print("OnSubFinish7450008")
end

function Quest74500:OnSubStart7450009(arg1)
    print("OnSubStart7450009")
end

function Quest74500:OnSubFinish7450009(arg1)
    print("OnSubFinish7450009")
end

function Quest74500:OnSubStart7450010(arg1)
    print("OnSubStart7450010")
end

function Quest74500:OnSubFinish7450010(arg1)
    print("OnSubFinish7450010")
end

function Quest74500:OnSubStart7450006(arg1)
    print("OnSubStart7450006")
end

function Quest74500:OnSubFinish7450006(arg1)
    print("OnSubFinish7450006")
end

return Quest74500
