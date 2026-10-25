require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14000 = class("Quest14000", QuestActorProxy)
Quest14000.defaultAlias = "Quest14000"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14000:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1400001"] = self.OnSubStart1400001,
        ["1400002"] = self.OnSubStart1400002,
        ["1400003"] = self.OnSubStart1400003,
        ["1400004"] = self.OnSubStart1400004,
        ["1400005"] = self.OnSubStart1400005,
        ["1400006"] = self.OnSubStart1400006,
        ["1400010"] = self.OnSubStart1400010,
        ["1400009"] = self.OnSubStart1400009,
        ["1400008"] = self.OnSubStart1400008,
        ["1400007"] = self.OnSubStart1400007
    }
end

function Quest14000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1400001"] = self.OnSubFinish1400001,
        ["1400002"] = self.OnSubFinish1400002,
        ["1400003"] = self.OnSubFinish1400003,
        ["1400004"] = self.OnSubFinish1400004,
        ["1400005"] = self.OnSubFinish1400005,
        ["1400006"] = self.OnSubFinish1400006,
        ["1400010"] = self.OnSubFinish1400010,
        ["1400009"] = self.OnSubFinish1400009,
        ["1400008"] = self.OnSubFinish1400008,
        ["1400007"] = self.OnSubFinish1400007
    }
end

function Quest14000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14000:Start()
    print("Start")
end

function Quest14000:OnDestroy()
    print("OnDestroy")
end

function Quest14000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14000:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest14000:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest14000:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest14000:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14000:OnSubStart1400001(arg1)
    print("OnSubStart1400001")
    this:NpcCreateWithNpcTrigger(npcs.Npc1070Data.id, 1400001, 0, 5)
    actorMgr:CreateActorWithPos("Q1400001Trigger", "Actor/Gadget/Q1400001Trigger", 70900002, 0, points.TPos_Q1400001Trigger.pos, points.TPos_Q1400001Trigger.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13455Data.id, 0)
end

function Quest14000:OnSubFinish1400001(arg1)
    print("OnSubFinish1400001")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1070Data.alias)
    this:ActorDestroy("Q1400001Trigger")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13455Data.alias, 3)
end

function Quest14000:OnSubStart1400002(arg1)
    print("OnSubStart1400002")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc1071Data.id, 1400002, 0, 5)
        this:CreateQuestNpc(arg1, npcs.Npc13439Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13439Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
    end)

    this:ClearNarratorTask()
end

function Quest14000:OnSubFinish1400002(arg1)
    print("OnSubFinish1400002")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1071Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc13439Data.alias, 3)
end

function Quest14000:OnSubStart1400003(arg1)
    print("OnSubStart1400003")
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13389Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13390Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13391Data.id, 0)
    actorMgr:CreateActorWithPos("Q1400003Trigger", "Actor/Gadget/Q1400003Trigger", 70900002, 0, points.TPos_Q1400003Trigger.pos, points.TPos_Q1400003Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13389Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13390Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13391Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest14000:OnSubFinish1400003(arg1)
    print("OnSubFinish1400003")
    this:ActorDestroy("Q1400003Trigger")
end

function Quest14000:OnSubStart1400004(arg1)
    print("OnSubStart1400004")
    this:NpcCreateWithNpcTrigger(npcs.Npc1072Data.id, 1400004, 0, 15)
    this:GetQuestNpcActor(npcs.Npc13389Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13390Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13391Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest14000:OnSubFinish1400004(arg1)
    print("OnSubFinish1400004")
end

function Quest14000:OnSubStart1400005(arg1)
    print("OnSubStart1400005")
    this:GetQuestNpcActor(npcs.Npc13389Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13390Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13391Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13389Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13390Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13391Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest14000:OnSubFinish1400005(arg1)
    print("OnSubFinish1400005")
end

function Quest14000:OnSubStart1400006(arg1)
    print("OnSubStart1400006")
    this:GetQuestNpcActor(npcs.Npc13389Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13390Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13391Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13389Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13390Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13391Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest14000:OnSubFinish1400006(arg1)
    print("OnSubFinish1400006")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1072Data.alias)
end

function Quest14000:OnSubStart1400010(arg1)
    print("OnSubStart1400010")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13387Data.id, 1400010, 0, 20, 1)
    this:GetQuestNpcActor(npcs.Npc13389Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13390Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13391Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13389Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13390Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13391Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest14000:OnSubFinish1400010(arg1)
    print("OnSubFinish1400010")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13387Data.alias)
end

function Quest14000:OnSubStart1400009(arg1)
    print("OnSubStart1400009")
end

function Quest14000:OnSubFinish1400009(arg1)
    print("OnSubFinish1400009")
end

function Quest14000:OnSubStart1400008(arg1)
    print("OnSubStart1400008")
end

function Quest14000:OnSubFinish1400008(arg1)
    print("OnSubFinish1400008")
end

function Quest14000:OnSubStart1400007(arg1)
    print("OnSubStart1400007")
end

function Quest14000:OnSubFinish1400007(arg1)
    print("OnSubFinish1400007")
end

return Quest14000
