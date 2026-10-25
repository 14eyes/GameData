require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75049 = class("Quest75049", QuestActorProxy)
Quest75049.defaultAlias = "Quest75049"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest75049:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75049:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7504901"] = self.OnSubStart7504901,
        ["7504902"] = self.OnSubStart7504902,
        ["7504903"] = self.OnSubStart7504903,
        ["7504904"] = self.OnSubStart7504904,
        ["7504911"] = self.OnSubStart7504911
    }
end

function Quest75049:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7504901"] = self.OnSubFinish7504901,
        ["7504902"] = self.OnSubFinish7504902,
        ["7504903"] = self.OnSubFinish7504903,
        ["7504904"] = self.OnSubFinish7504904,
        ["7504911"] = self.OnSubFinish7504911
    }
end

function Quest75049:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75049:Start()
    print("Start")
end

function Quest75049:OnDestroy()
    print("OnDestroy")
end

function Quest75049:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75049:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75049:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75049:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75049:OnSubStart7504901(arg1)
    print("OnSubStart7504901")
end

function Quest75049:OnSubFinish7504901(arg1)
    print("OnSubFinish7504901")
end

function Quest75049:OnSubStart7504902(arg1)
    print("OnSubStart7504902")
end

function Quest75049:OnSubFinish7504902(arg1)
    print("OnSubFinish7504902")
end

function Quest75049:OnSubStart7504903(arg1)
    print("OnSubStart7504903")
    this:CreateQuestNpc(arg1, npcs.Npc21715Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21715Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7504903Trigger", "Actor/Gadget/Q7504903Trigger", 70900002, 0, points.TPos_Q7504903Trigger.pos, points.TPos_Q7504903Trigger.rot, true, false, 3)
end

function Quest75049:OnSubFinish7504903(arg1)
    print("OnSubFinish7504903")
end

function Quest75049:OnSubStart7504904(arg1)
    print("OnSubStart7504904")
    this:GetQuestNpcActor(npcs.Npc21715Data.alias):DoFreeStyle(3, true, nil, true, true, false, false)
end

function Quest75049:OnSubFinish7504904(arg1)
    print("OnSubFinish7504904")
    this:TransmitPlayerById(arg1, 3)
end

function Quest75049:OnSubStart7504911(arg1)
    print("OnSubStart7504911")
    this:GetQuestNpcActor(npcs.Npc21715Data.alias):DoFreeStyle(5, true, nil, true, true, false, false)
end

function Quest75049:OnSubFinish7504911(arg1)
    print("OnSubFinish7504911")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21715Data.alias)
end

return Quest75049
