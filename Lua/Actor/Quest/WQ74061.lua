require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74061 = class("Quest74061", QuestActorProxy)
Quest74061.defaultAlias = "Quest74061"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74061:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74061:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7406101"] = self.OnSubStart7406101,
        ["7406102"] = self.OnSubStart7406102,
        ["7406103"] = self.OnSubStart7406103,
        ["7406104"] = self.OnSubStart7406104
    }
end

function Quest74061:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7406101"] = self.OnSubFinish7406101,
        ["7406102"] = self.OnSubFinish7406102,
        ["7406103"] = self.OnSubFinish7406103,
        ["7406104"] = self.OnSubFinish7406104
    }
end

function Quest74061:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74061:Start()
    print("Start")
end

function Quest74061:OnDestroy()
    print("OnDestroy")
end

function Quest74061:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74061:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74061:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74061:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74061:OnSubStart7406101(arg1)
    print("OnSubStart7406101")
    this:CreateQuestNpc(arg1, npcs.Npc21095Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21114Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21115Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21116Data.id, 0)
    actorMgr:CreateActorWithPos("Q7406101Trigger", "Actor/Gadget/Q7406101Trigger", 70900002, 0, points.TPos_Q7406101Trigger.pos, points.TPos_Q7406101Trigger.rot, true, false, 3)
end

function Quest74061:OnSubFinish7406101(arg1)
    print("OnSubFinish7406101")
    self:SetNavigationByMainId(74061, true)
end

function Quest74061:OnSubStart7406102(arg1)
    print("OnSubStart7406102")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21095Data.id, 0, npcs.Npc21095Data.alias)
end

function Quest74061:OnSubFinish7406102(arg1)
    print("OnSubFinish7406102")
    this:SafeDestroyQuestNpc(npcs.Npc21095Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21114Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21115Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21116Data.alias, 3)
end

function Quest74061:OnSubStart7406103(arg1)
    print("OnSubStart7406103")
    actorMgr:CreateActorWithPos("Q7406103Trigger", "Actor/Gadget/Q7406103Trigger", 70900002, 0, points.TPos_Q7406103Trigger.pos, points.TPos_Q7406103Trigger.rot, true, false, 3)
end

function Quest74061:OnSubFinish7406103(arg1)
    print("OnSubFinish7406103")
end

function Quest74061:OnSubStart7406104(arg1)
    print("OnSubStart7406104")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21095Data.id, 0, npcs.Npc21095Data.alias)
end

function Quest74061:OnSubFinish7406104(arg1)
    print("OnSubFinish7406104")
    self:SetNavigationByMainId(74025, true)
    this:SafeDestroyQuestNpc(npcs.Npc21095Data.alias, 3)
end

return Quest74061
