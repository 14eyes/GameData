require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40143 = class("Quest40143", QuestActorProxy)
Quest40143.defaultAlias = "Quest40143"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest40143:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40143:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4014301"] = self.OnSubStart4014301,
        ["4014302"] = self.OnSubStart4014302,
        ["4014308"] = self.OnSubStart4014308,
        ["4014303"] = self.OnSubStart4014303,
        ["4014307"] = self.OnSubStart4014307,
        ["4014304"] = self.OnSubStart4014304,
        ["4014305"] = self.OnSubStart4014305,
        ["4014306"] = self.OnSubStart4014306
    }
end

function Quest40143:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4014301"] = self.OnSubFinish4014301,
        ["4014302"] = self.OnSubFinish4014302,
        ["4014308"] = self.OnSubFinish4014308,
        ["4014303"] = self.OnSubFinish4014303,
        ["4014307"] = self.OnSubFinish4014307,
        ["4014304"] = self.OnSubFinish4014304,
        ["4014305"] = self.OnSubFinish4014305,
        ["4014306"] = self.OnSubFinish4014306
    }
end

function Quest40143:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4014301"] = self.OnSubFailed4014301,
        ["4014302"] = self.OnSubFailed4014302,
        ["4014308"] = self.OnSubFailed4014308,
        ["4014303"] = self.OnSubFailed4014303,
        ["4014307"] = self.OnSubFailed4014307,
        ["4014304"] = self.OnSubFailed4014304,
        ["4014305"] = self.OnSubFailed4014305,
        ["4014306"] = self.OnSubFailed4014306
    }
end

function Quest40143:Start()
    print("Start")
end

function Quest40143:OnDestroy()
    print("OnDestroy")
end

function Quest40143:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40143:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40143:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc20104.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2202.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2204.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074.alias, 3)
    this:ActorDestroy("tigger1")
    this:DestroyNpcTrigger("Q4014302N2202Trigger")
end

function Quest40143:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4014308 then
        actorUtils.FinishQuestID(false, 4014308)
    end

    if arg1 == 40143888 then
        this:GetQuestNpcActor(npcs.Npc2204.alias, 40143):HideSelf()
    end

    if arg1 == 40143999 then
        this:GetQuestNpcActor(npcs.Npc2204.alias, 40143):ShowSelf()
    end
end

function Quest40143:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40143:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest40143:OnSubStart4014301(arg1)
    print("OnSubStart4014301")
    this:CreateQuestNpc(arg1, npcs.Npc20104.id, 0)
end

function Quest40143:OnSubFinish4014301(arg1)
    print("OnSubFinish4014301")
    this:SafeDestroyQuestNpc(npcs.Npc20104.alias, 3)
end

function Quest40143:OnSubFailed4014301(arg1)
    print("OnSubFailed4014301")
end

function Quest40143:OnSubStart4014302(arg1)
    print("OnSubStart4014302")
    this:NpcCreateWithNpcTrigger(npcs.Npc2202.id, 4014302, 0, 15)
    this:GetQuestNpcActor(npcs.Npc2202.alias, 40143):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc2204.id, 0)
    this:GetQuestNpcActor(npcs.Npc2204.alias, 40143):DoFreeStyle(1050, true, nil, true, true, false, false)
end

function Quest40143:OnSubFinish4014302(arg1)
    print("OnSubFinish4014302")
    this:GetQuestNpcActor(npcs.Npc2202.alias, 40143):DoFreeStateTrigger()
    this:GetQuestNpcActor(npcs.Npc2204.alias, 40143):DoFreeStateTrigger()
end

function Quest40143:OnSubFailed4014302(arg1)
    print("OnSubFailed4014302")
end

function Quest40143:OnSubStart4014308(arg1)
    print("OnSubStart4014308")
end

function Quest40143:OnSubFinish4014308(arg1)
    print("OnSubFinish4014308")
end

function Quest40143:OnSubFailed4014308(arg1)
    print("OnSubFailed4014308")
end

function Quest40143:OnSubStart4014303(arg1)
    print("OnSubStart4014303")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2202.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc2204.id, 0)
    end)
end

function Quest40143:OnSubFinish4014303(arg1)
    print("OnSubFinish4014303")
end

function Quest40143:OnSubFailed4014303(arg1)
    print("OnSubFailed4014303")
end

function Quest40143:OnSubStart4014307(arg1)
    print("OnSubStart4014307")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2202.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc2204.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1071.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1072.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1074.id, 0)
        this:GetQuestNpcActor(npcs.Npc1071.alias, 40143):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1072.alias, 40143):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1074.alias, 40143):SitOnChair(0, true)
    end)
end

function Quest40143:OnSubFinish4014307(arg1)
    print("OnSubFinish4014307")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1710, nil)
    end)
end

function Quest40143:OnSubFailed4014307(arg1)
    print("OnSubFailed4014307")
end

function Quest40143:OnSubStart4014304(arg1)
    print("OnSubStart4014304")
    this:GetQuestNpcActor(npcs.Npc1071.alias, 40143):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1072.alias, 40143):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1074.alias, 40143):SitOnChair(0, true)
end

function Quest40143:OnSubFinish4014304(arg1)
    print("OnSubFinish4014304")
end

function Quest40143:OnSubFailed4014304(arg1)
    print("OnSubFailed4014304")
end

function Quest40143:OnSubStart4014305(arg1)
    print("OnSubStart4014305")
    actorMgr:CreateActorWithPos("tigger1", "Actor/Gadget/tigger1", 70900002, 0, points.Point1.pos, points.Point1.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1071.alias, 40143):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1072.alias, 40143):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1074.alias, 40143):SitOnChair(0, true)
end

function Quest40143:OnSubFinish4014305(arg1)
    print("OnSubFinish4014305")
end

function Quest40143:OnSubFailed4014305(arg1)
    print("OnSubFailed4014305")
end

function Quest40143:OnSubStart4014306(arg1)
    print("OnSubStart4014306")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1071.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1072.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1074.id, 0)
        this:GetQuestNpcActor(npcs.Npc1074.alias, 40143):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1072.alias, 40143):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1071.alias, 40143):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1072.alias, 40143):DoFreeStyle(1190, true, nil, true, true, false, true)
    end)
end

function Quest40143:OnSubFinish4014306(arg1)
    print("OnSubFinish4014306")
    this:SafeDestroyQuestNpc(npcs.Npc2202.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2204.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074.alias, 3)
end

function Quest40143:OnSubFailed4014306(arg1)
    print("OnSubFailed4014306")
end

return Quest40143
