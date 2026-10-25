require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71120 = class("Quest71120", QuestActorProxy)
Quest71120.defaultAlias = "Quest71120"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest71120:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71120:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7112001"] = self.OnSubStart7112001,
        ["7112003"] = self.OnSubStart7112003,
        ["7112002"] = self.OnSubStart7112002
    }
end

function Quest71120:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7112001"] = self.OnSubFinish7112001,
        ["7112003"] = self.OnSubFinish7112003,
        ["7112002"] = self.OnSubFinish7112002
    }
end

function Quest71120:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71120:Start()
    print("Start")
end

function Quest71120:OnDestroy()
    print("OnDestroy")
end

function Quest71120:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71120:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71120:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71120:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71120:OnSubStart7112001(arg1)
    print("OnSubStart7112001")
    this:CreateQuestNpc(arg1, npcs.Npc21397Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21413Data.id, 0)
    actorMgr:CreateActorWithPos("Q7112001Trigger", "Actor/Gadget/Q7112001Trigger", 70900002, 0, points.TPos_Q7112001Trigger.pos, points.TPos_Q7112001Trigger.rot, true, false, 3)
end

function Quest71120:OnSubFinish7112001(arg1)
    print("OnSubFinish7112001")
    this:ActorDestroy("Q7112001Trigger")
end

function Quest71120:OnSubStart7112003(arg1)
    print("OnSubStart7112003")
    this:CreateQuestNpc(arg1, npcs.Npc21397Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21413Data.id, 0)
    actorMgr:CreateActorWithPos("Q7112002Trigger", "Actor/Gadget/Q7112002Trigger", 70900002, 0, points.TPos_Q7112002Trigger.pos, points.TPos_Q7112002Trigger.rot, true, false, 3)
end

function Quest71120:OnSubFinish7112003(arg1)
    print("OnSubFinish7112003")
    this:ShowBlackScreenWithDialogText(0.5, 3, 0.5, nil, nil, nil, 711205199, false, true)
    this:ActorDestroy("Q7112002Trigger")
end

function Quest71120:OnSubStart7112002(arg1)
    print("OnSubStart7112002")
    actorMgr:CreateActorWithPos("Q7112003Trigger", "Actor/Gadget/Q7112003Trigger", 70900002, 0, points.TPos_Q7112003Trigger.pos, points.TPos_Q7112003Trigger.rot, true, false, 3)
end

function Quest71120:OnSubFinish7112002(arg1)
    print("OnSubFinish7112002")
    this:SafeDestroyQuestNpc(npcs.Npc21397Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21413Data.alias, 3)
    this:ActorDestroy("Q7112003Trigger")
end

return Quest71120
