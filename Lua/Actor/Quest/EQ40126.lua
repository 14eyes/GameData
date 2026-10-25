require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40126 = class("Quest40126", QuestActorProxy)
Quest40126.defaultAlias = "Quest40126"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40126:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40126:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4012601"] = self.OnSubStart4012601,
        ["4012602"] = self.OnSubStart4012602,
        ["4012603"] = self.OnSubStart4012603,
        ["4012611"] = self.OnSubStart4012611,
        ["4012612"] = self.OnSubStart4012612,
        ["4012613"] = self.OnSubStart4012613,
        ["4012614"] = self.OnSubStart4012614,
        ["4012615"] = self.OnSubStart4012615,
        ["4012616"] = self.OnSubStart4012616,
        ["4012606"] = self.OnSubStart4012606,
        ["4012607"] = self.OnSubStart4012607,
        ["4012608"] = self.OnSubStart4012608,
        ["4012609"] = self.OnSubStart4012609,
        ["4012610"] = self.OnSubStart4012610,
        ["4012605"] = self.OnSubStart4012605
    }
end

function Quest40126:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4012601"] = self.OnSubFinish4012601,
        ["4012602"] = self.OnSubFinish4012602,
        ["4012603"] = self.OnSubFinish4012603,
        ["4012611"] = self.OnSubFinish4012611,
        ["4012612"] = self.OnSubFinish4012612,
        ["4012613"] = self.OnSubFinish4012613,
        ["4012614"] = self.OnSubFinish4012614,
        ["4012615"] = self.OnSubFinish4012615,
        ["4012616"] = self.OnSubFinish4012616,
        ["4012606"] = self.OnSubFinish4012606,
        ["4012607"] = self.OnSubFinish4012607,
        ["4012608"] = self.OnSubFinish4012608,
        ["4012609"] = self.OnSubFinish4012609,
        ["4012610"] = self.OnSubFinish4012610,
        ["4012605"] = self.OnSubFinish4012605
    }
end

function Quest40126:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40126:Start()
    print("Start")
end

function Quest40126:OnDestroy()
    print("OnDestroy")
end

function Quest40126:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40126:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40126:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:GetQuestNpcActor(npcs.Npc13431Data.alias):EnableInteractionWithUI(true)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13431Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13495Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13493Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1060Data.alias, 3)
    self.SafeDestroyQuestNpc(self, npcs.Npc1650Data.alias, 3)
    self.SafeDestroyQuestNpc(self, npcs.WendyData.alias, 3)
    self.SafeDestroyQuestNpc(self, npcs.Npc13604Data.alias, 3)
    self.LightNotifyTo(self, npcs.Npc1650Data.alias, 0, true)
    self.RemoveLocalGadget(self, 70900635, "1")
    self.ActionSafeCall(self, function()
        self:RemoveLocalGadget(70900635, "1")
    end)

    actorMgr:DestroyEntityActor("Q40126Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40126Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40126Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q4012602N1023Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012603N1023Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012606N1023Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012607N13431Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012610N1021Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012611N13493Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012612N13493Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012613N13493Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012614N13493Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012609N13431Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012608N1650Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012610N1001Trigger", 3, false)
    self.UnCallDelayByQuest(self, "4012606Trigger2")
end

function Quest40126:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest40126:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest40126:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 4012611)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 4012612)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 4012613)
    end
end

function Quest40126:OnSubStart4012601(arg1)
    print("OnSubStart4012601")
end

function Quest40126:OnSubFinish4012601(arg1)
    print("OnSubFinish4012601")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest40126:OnSubStart4012602(arg1)
    print("OnSubStart4012602")
    this:NpcCreateWithNpcTrigger(npcs.Npc1023Data.id, 4012602, 0, 12, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1061Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1060Data.id, 0)
end

function Quest40126:OnSubFinish4012602(arg1)
    print("OnSubFinish4012602")
    self:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest40126:OnSubStart4012603(arg1)
    print("OnSubStart4012603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1023Data.id, 4012603, 0, 12, 1)
end

function Quest40126:OnSubFinish4012603(arg1)
    print("OnSubFinish4012603")
    this:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest40126:OnSubStart4012611(arg1)
    print("OnSubStart4012611")
    this:NpcCreateWithNpcTrigger(npcs.Npc13493Data.id, 4012611, 0, 18)
end

function Quest40126:OnSubFinish4012611(arg1)
    print("OnSubFinish4012611")
end

function Quest40126:OnSubStart4012612(arg1)
    print("OnSubStart4012612")
    this:NpcCreateWithNpcTrigger(npcs.Npc13493Data.id, 4012612, 0, 18)
end

function Quest40126:OnSubFinish4012612(arg1)
    print("OnSubFinish4012612")
end

function Quest40126:OnSubStart4012613(arg1)
    print("OnSubStart4012613")
    this:NpcCreateWithNpcTrigger(npcs.Npc13493Data.id, 4012613, 0, 18)
end

function Quest40126:OnSubFinish4012613(arg1)
    print("OnSubFinish4012613")
    this:SafeDestroyQuestNpc(npcs.Npc13493Data.alias, 3)
end

function Quest40126:OnSubStart4012614(arg1)
    print("OnSubStart4012614")
    self.CreateQuestNpc(self, arg1, npcs.Npc13604Data.id, 0)
    self.ActionSafeCall(self, function()
        self:CreateLocalGadget(70900635, "1", {x = 1153.109, y = 200.02, z = 239.2929}, {x = 0, y = 0, z = 0}, 3, nil, nil, true, 0)
    end)
end

function Quest40126:OnSubFinish4012614(arg1)
    print("OnSubFinish4012614")
    self:SafeDestroyQuestNpc(npcs.Npc13604Data.alias, 3)
    self:RemoveLocalGadget(70900635, "1")
end

function Quest40126:OnSubStart4012615(arg1)
    print("OnSubStart4012615")
    actorMgr:CreateActorWithPos("Q40126Trigger", "Actor/Gadget/Q40126Trigger", 70900002, 0, {x = 1587.637, y = 213.8815, z = 1183.983}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest40126:OnSubFinish4012615(arg1)
    print("OnSubFinish4012615")
end

function Quest40126:OnSubStart4012605(arg1)
    print("OnSubStart4012605")
    self:CreateQuestNpc(arg1, npcs.Npc13431Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc13431Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(4180, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q40126Trigger1", "Actor/Gadget/Q40126Trigger1", 70900002, 0, points.TPos_Q40126Trigger1.pos, points.TPos_Q40126Trigger1.rot, true, false, 3)
end

function Quest40126:OnSubFinish4012605(arg1)
    print("OnSubFinish4012605")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_02)
end

function Quest40126:OnSubStart4012616(arg1)
    print("OnSubStart4012616")
    self:EnterSceneLookCamera({x = 1589.71, y = 200.9, z = 1120.83}, 0, 3, true, true)
end

function Quest40126:OnSubFinish4012616(arg1)
    print("OnSubFinish4012616")
end

function Quest40126:OnSubStart4012606(arg1)
    print("OnSubStart4012606")
    self.SetQuestVarByMainId(self, 0, 0)
    self.CallDelayByQuest(self, "4012606Trigger2", 2, function()
        this:GetQuestNpcActor(npcs.Npc13431Data.alias):EnableInteractionWithUI(false)
        self:SetQuestVarByMainId(0, 1)
        actorMgr:CreateActorWithPos("Q40126Trigger2", "Actor/Gadget/Q40126Trigger2", 70900002, 0, points.TPos_Q40126Trigger1.pos, points.TPos_Q40126Trigger1.rot, true, false, 3)
    end)
end

function Quest40126:OnSubFinish4012606(arg1)
    print("OnSubFinish4012606")
    this:GetQuestNpcActor(npcs.Npc13431Data.alias):EnableInteractionWithUI(true)
    self:SafeDestroyQuestNpc(npcs.Npc13431Data.alias, 3)
end

function Quest40126:OnSubStart4012607(arg1)
    print("OnSubStart4012607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13431Data.id, 4012607, 0, 15, 1)
end

function Quest40126:OnSubFinish4012607(arg1)
    print("OnSubFinish4012607")
end

function Quest40126:OnSubStart4012608(arg1)
    print("OnSubStart4012608")
    self.ActionSafeCall(self, function()
        self:NpcCreateWithNpcTrigger(npcs.Npc1650Data.id, 4012608, 0, 10)
        self:CreateQuestNpc(arg1, npcs.Npc13431Data.id, 0)
        self:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 0)
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc13431Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, true)
        self:CreateQuestNpc(arg1, npcs.Npc1060Data.id, 0)
        local v = self:GetQuestNpcActor(npcs.Npc1060Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:DoFreeStyle(1130, true, nil, true, true, false, true)
        local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc1023Data.alias)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:DoFreeStyle(1220, true, nil, true, true, false, true)
    end)
end

function Quest40126:OnSubFinish4012608(arg1)
    print("OnSubFinish4012608")
    self.SafeDestroyQuestNpc(self, npcs.Npc1650Data.alias, 3)
    self.ActionSafeCall(self, function()
        self:TransmitPlayerWithTextById(arg1, 1, {""}, 1)
    end)
end

function Quest40126:OnSubStart4012609(arg1)
    print("OnSubStart4012609")
    self:NotifyTo(npcs.Npc1650Data.alias, 1, true)
    self:NpcCreateWithNpcTrigger(npcs.Npc13431Data.id, 4012609, 0, 20)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc13431Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, true)
    local v = self:GetQuestNpcActor(npcs.Npc1060Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1130, true, nil, true, true, false, true)
end

function Quest40126:OnSubFinish4012609(arg1)
    print("OnSubFinish4012609")
    self:SafeDestroyQuestNpc(npcs.Npc1060Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc13431Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest40126:OnSubStart4012610(arg1)
    print("OnSubStart4012610")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.WendyData.id, 4012610, 0, 15, 1)
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc1650Data.id, 0)
    end)
end

function Quest40126:OnSubFinish4012610(arg1)
    print("OnSubFinish4012610")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1650Data.alias, 3)
end

return Quest40126
