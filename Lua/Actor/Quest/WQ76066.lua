require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76066 = class("Quest76066", QuestActorProxy)
Quest76066.defaultAlias = "Quest76066"
local clientData
local this
local mainID
local actorAlias
local points

function Quest76066:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest76066:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7606601"] = self.OnSubStart7606601,
        ["7606602"] = self.OnSubStart7606602,
        ["7606603"] = self.OnSubStart7606603,
        ["7606604"] = self.OnSubStart7606604,
        ["7606605"] = self.OnSubStart7606605,
        ["7606606"] = self.OnSubStart7606606,
        ["7606607"] = self.OnSubStart7606607
    }
end

function Quest76066:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7606601"] = self.OnSubFinish7606601,
        ["7606602"] = self.OnSubFinish7606602,
        ["7606603"] = self.OnSubFinish7606603,
        ["7606604"] = self.OnSubFinish7606604,
        ["7606605"] = self.OnSubFinish7606605,
        ["7606606"] = self.OnSubFinish7606606,
        ["7606607"] = self.OnSubFinish7606607
    }
end

function Quest76066:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76066:OnSubStart7606601(arg1)
    print("OnSubStart7606601")
    actorMgr:CreateActorWithPos("Q7606601Trigger", "Actor/Gadget/Q7606601Trigger", 70900002, 0, points._Q7606601TriggerPoint_.pos, points._Q7606601TriggerPoint_.rot, true, false, 102)
end

function Quest76066:OnSubFinish7606601(arg1)
    print("OnSubFinish7606601")
end

function Quest76066:OnSubStart7606602(arg1)
    print("OnSubStart7606602")
    actorMgr:CreateActorWithPos("Q7606602Trigger", "Actor/Gadget/Q7606602Trigger", 70900002, 0, points._Q7606602TriggerPoint_.pos, points._Q7606602TriggerPoint_.rot, true, false, 102)
end

function Quest76066:OnSubFinish7606602(arg1)
    print("OnSubFinish7606602")
end

function Quest76066:OnSubStart7606603(arg1)
    print("OnSubStart7606603")
    actorMgr:CreateActorWithPos("Q7606603Trigger", "Actor/Gadget/Q7606603Trigger", 70900002, 0, points._Q7606603TriggerPoint_.pos, points._Q7606603TriggerPoint_.rot, true, false, 102)
end

function Quest76066:OnSubFinish7606603(arg1)
    print("OnSubFinish7606603")
end

function Quest76066:OnSubStart7606604(arg1)
    print("OnSubStart7606604")
end

function Quest76066:OnSubFinish7606604(arg1)
    print("OnSubFinish7606604")
end

function Quest76066:OnSubStart7606605(arg1)
    print("OnSubStart7606605")
    actorMgr:CreateActorWithPos("Q7606605Trigger", "Actor/Gadget/Q7606605Trigger", 70900002, 0, points._Q7606605TriggerPoint_.pos, points._Q7606605TriggerPoint_.rot, true, false, 102)
end

function Quest76066:OnSubFinish7606605(arg1)
    print("OnSubFinish7606605")
end

function Quest76066:OnSubStart7606606(arg1)
    print("OnSubStart7606606")
end

function Quest76066:OnSubFinish7606606(arg1)
    print("OnSubFinish7606606")
end

function Quest76066:OnSubStart7606607(arg1)
    print("OnSubStart7606607")
    actorMgr:CreateActorWithPos("Q7606607Trigger", "Actor/Gadget/Q7606607Trigger", 70900002, 0, points._Q7606607TriggerPoint_.pos, points._Q7606607TriggerPoint_.rot, true, false, 3)
end

function Quest76066:OnSubFinish7606607(arg1)
    print("OnSubFinish7606607")
end

return Quest76066
