require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40035 = class("Quest40035", QuestActorProxy)
Quest40035.defaultAlias = "Quest40035"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40035:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4003501"] = self.OnSubStart4003501,
        ["4003502"] = self.OnSubStart4003502,
        ["4003503"] = self.OnSubStart4003503,
        ["4003506"] = self.OnSubStart4003506,
        ["4003507"] = self.OnSubStart4003507,
        ["4003504"] = self.OnSubStart4003504,
        ["4003505"] = self.OnSubStart4003505
    }
end

function Quest40035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4003501"] = self.OnSubFinish4003501,
        ["4003502"] = self.OnSubFinish4003502,
        ["4003503"] = self.OnSubFinish4003503,
        ["4003506"] = self.OnSubFinish4003506,
        ["4003507"] = self.OnSubFinish4003507,
        ["4003504"] = self.OnSubFinish4003504,
        ["4003505"] = self.OnSubFinish4003505
    }
end

function Quest40035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4003501"] = self.OnSubFailed4003501,
        ["4003502"] = self.OnSubFailed4003502,
        ["4003503"] = self.OnSubFailed4003503,
        ["4003506"] = self.OnSubFailed4003506,
        ["4003507"] = self.OnSubFailed4003507,
        ["4003504"] = self.OnSubFailed4003504,
        ["4003505"] = self.OnSubFailed4003505
    }
end

function Quest40035:Start()
    print("Start")
end

function Quest40035:OnDestroy()
    print("OnDestroy")
end

function Quest40035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40035:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2084Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2140Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2148Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2034Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2035Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q40035Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40035Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40035Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q40035Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q40035Trigger4", 3, false)
end

function Quest40035:OnSubStart4003501(arg1)
    print("OnSubStart4003501")
    actorMgr:CreateActorWithPos("Q40035Trigger", "Actor/Gadget/Q40035Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003501_N10211_310701342").pos, sceneData:GetDummyPoint(3, "Q4003501_N10211_310701342").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q40035Trigger4", "Actor/Gadget/Q40035Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003501_N10211_310701342").pos, sceneData:GetDummyPoint(3, "Q4003501_N10211_310701342").rot, true, false, 3)
end

function Quest40035:OnSubFinish4003501(arg1)
    print("OnSubFinish4003501")
end

function Quest40035:OnSubFailed4003501(arg1)
    print("OnSubFailed4003501")
end

function Quest40035:OnSubStart4003502(arg1)
    print("OnSubStart4003502")
    self:CreateQuestNpc(arg1, npcs.Npc10211Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2143Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2140Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10211Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = self:GetQuestNpcActor(npcs.Npc2143Data.alias)
    v:DoFreeStyle(1130, true, nil, true, true, false)
    v:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc2140Data.alias):DisableInteeHeadCtrl(false)
    actorMgr:CreateActorWithPos("Q40035Trigger1", "Actor/Gadget/Q40035Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003501_N10211_310701342").pos, sceneData:GetDummyPoint(3, "Q4003501_N10211_310701342").rot, true, false, 3)
end

function Quest40035:OnSubFinish4003502(arg1)
    print("OnSubFinish4003502")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10211Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DisableInteeHeadCtrl(false)
    local v = self:GetQuestNpcActor(npcs.Npc2143Data.alias)
    v:DoFreeStateTrigger()
    v:DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc2140Data.alias):DisableInteeHeadCtrl(false)
    self:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2140Data.alias, 3)
end

function Quest40035:OnSubFailed4003502(arg1)
    print("OnSubFailed4003502")
end

function Quest40035:OnSubStart4003503(arg1)
    print("OnSubStart4003503")
    self:CreateQuestNpc(arg1, npcs.Npc1016Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30090Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1016Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = self:GetQuestNpcActor(npcs.Npc30090Data.alias)
    v:DoFreeStyle(1130, true, nil, true, true, false)
    v:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q40035Trigger2", "Actor/Gadget/Q40035Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003503_N1016_310701345").pos, sceneData:GetDummyPoint(3, "Q4003503_N1016_310701345").rot, true, false, 3)
end

function Quest40035:OnSubFinish4003503(arg1)
    print("OnSubFinish4003503")
    self:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1016Data.alias)
        questNpcActor:DoFreeStateTrigger()
        local v = arg1:GetQuestNpcActor(npcs.Npc30090Data.alias)
        v:DoFreeStateTrigger()
        questNpcActor:DisableInteeHeadCtrl(false)
        v:DisableInteeHeadCtrl(false)
        arg1:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc30090Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest40035:OnSubFailed4003503(arg1)
    print("OnSubFailed4003503")
end

function Quest40035:OnSubStart4003506(arg1)
    print("OnSubStart4003506")
    self:CreateQuestNpc(arg1, npcs.Npc2084Data.id, 0)
end

function Quest40035:OnSubFinish4003506(arg1)
    print("OnSubFinish4003506")
end

function Quest40035:OnSubFailed4003506(arg1)
    print("OnSubFailed4003506")
end

function Quest40035:OnSubStart4003507(arg1)
    print("OnSubStart4003507")
    actorMgr:CreateActorWithPos("Q40035Trigger3", "Actor/Gadget/Q40035Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q4003507_N10232_310701347").pos, sceneData:GetDummyPoint(3, "Q4003507_N10232_310701347").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1021Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.XianglingData.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1043Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10232Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc1021Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.XianglingData.alias):SitOnChair(0)
    self:NotifyTo(npcs.Npc2148Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2034Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2035Data.alias, 1, true)
end

function Quest40035:OnSubFinish4003507(arg1)
    print("OnSubFinish4003507")
    self:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc1021Data.alias):StandFromChair(0)
        arg1:GetQuestNpcActor(npcs.XianglingData.alias):StandFromChair(0)
        arg1:SafeDestroyQuestNpc(npcs.Npc2084Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc2148Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc2034Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc2035Data.alias, 0, true)
    end, nil, nil, "", false, true)

    self:CallDelay(7, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            actorUtils.ShowLanternRiteV2Page(0, 1)
        end)
    end)
end

function Quest40035:OnSubFailed4003507(arg1)
    print("OnSubFailed4003507")
end

function Quest40035:OnSubStart4003504(arg1)
    print("OnSubStart4003504")
end

function Quest40035:OnSubFinish4003504(arg1)
    print("OnSubFinish4003504")
end

function Quest40035:OnSubFailed4003504(arg1)
    print("OnSubFailed4003504")
end

function Quest40035:OnSubStart4003505(arg1)
    print("OnSubStart4003505")
end

function Quest40035:OnSubFinish4003505(arg1)
    print("OnSubFinish4003505")
end

function Quest40035:OnSubFailed4003505(arg1)
    print("OnSubFailed4003505")
end

return Quest40035
