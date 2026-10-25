require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20014 = class("Quest20014", QuestActorProxy)
Quest20014.defaultAlias = "Quest20014"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2001401"] = self.OnSubStart2001401,
        ["2001402"] = self.OnSubStart2001402,
        ["2001403"] = self.OnSubStart2001403,
        ["2001406"] = self.OnSubStart2001406,
        ["2001405"] = self.OnSubStart2001405
    }
end

function Quest20014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2001401"] = self.OnSubFinish2001401,
        ["2001402"] = self.OnSubFinish2001402,
        ["2001403"] = self.OnSubFinish2001403,
        ["2001406"] = self.OnSubFinish2001406,
        ["2001405"] = self.OnSubFinish2001405
    }
end

function Quest20014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest20014:Start()
    print("Start")
end

function Quest20014:OnDestroy()
    print("OnDestroy")
end

function Quest20014:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc1405Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
end

function Quest20014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20014:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1405Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc1405Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1408Data.alias):DisableInteeHeadCtrl(false)
    self:ActorDestroy("Q20014Trigger")
    self:LightNotifyTo(npcs.Npc1405Data.alias, 0, true)
end

function Quest20014:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest20014:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest20014:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest20014:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest20014:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest20014:OnSubStart2001401(arg1)
    print("OnSubStart2001401")
    self:NpcCreate(arg1, npcs.Npc1405Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc1408Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1405Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1408Data.alias):DisableInteeHeadCtrl(true)
end

function Quest20014:OnSubFinish2001401(arg1)
    print("OnSubFinish2001401")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc1405Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc1408Data.alias):DisableInteeHeadCtrl(false)
        arg1:SafeDestroyQuestNpc(npcs.Npc1405Data.alias, 3)
    end)
end

function Quest20014:OnSubStart2001402(arg1)
    print("OnSubStart2001402")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(npcs.Npc1405Data.alias, 1, true)
        arg1_2:NpcCreate(arg1, npcs.Npc1408Data.id, 2)
    end)
end

function Quest20014:OnSubFinish2001402(arg1)
    print("OnSubFinish2001402")
end

function Quest20014:OnSubStart2001403(arg1)
    print("OnSubStart2001403")
end

function Quest20014:OnSubFinish2001403(arg1)
    print("OnSubFinish2001403")
end

function Quest20014:OnSubStart2001406(arg1)
    print("OnSubStart2001406")
    actorMgr:CreateActorWithPos("Q20014Trigger", "Actor/Gadget/Q20014Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2001402").pos, sceneData:GetDummyPoint(3, "Q2001402").rot, true, false, 3)
    self:NotifyTo(npcs.Npc1405Data.alias, 1, true)
end

function Quest20014:OnSubFinish2001406(arg1)
    print("OnSubFinish2001406")
    self:ActorDestroy("Q20014Trigger")
end

function Quest20014:OnSubStart2001405(arg1)
    print("OnSubStart2001405")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1405Data.id, 1, npcs.Npc1405Data.alias)
end

function Quest20014:OnSubFinish2001405(arg1)
    print("OnSubFinish2001405")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1405Data.alias)
    self:NpcDestroy(npcs.Npc1408Data.alias, 3)
end

return Quest20014
