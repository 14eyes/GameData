require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79081 = class("Quest79081", QuestActorProxy)
Quest79081.defaultAlias = "Quest79081"
local clientData
local this
local mainID
local actorAlias
local subIDs
local points

function Quest79081:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    points = clientData.Points
end

function Quest79081:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7908101"] = self.OnSubStart7908101,
        ["7908102"] = self.OnSubStart7908102,
        ["7908103"] = self.OnSubStart7908103,
        ["7908104"] = self.OnSubStart7908104,
        ["7908105"] = self.OnSubStart7908105,
        ["7908106"] = self.OnSubStart7908106,
        ["7908107"] = self.OnSubStart7908107,
        ["7908108"] = self.OnSubStart7908108,
        ["7908109"] = self.OnSubStart7908109,
        ["7908110"] = self.OnSubStart7908110,
        ["7908111"] = self.OnSubStart7908111,
        ["7908112"] = self.OnSubStart7908112,
        ["7908113"] = self.OnSubStart7908113,
        ["7908114"] = self.OnSubStart7908114,
        ["7908115"] = self.OnSubStart7908115,
        ["7908116"] = self.OnSubStart7908116,
        ["7908117"] = self.OnSubStart7908117,
        ["7908118"] = self.OnSubStart7908118
    }
end

function Quest79081:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7908101"] = self.OnSubFinish7908101,
        ["7908102"] = self.OnSubFinish7908102,
        ["7908103"] = self.OnSubFinish7908103,
        ["7908104"] = self.OnSubFinish7908104,
        ["7908105"] = self.OnSubFinish7908105,
        ["7908106"] = self.OnSubFinish7908106,
        ["7908107"] = self.OnSubFinish7908107,
        ["7908108"] = self.OnSubFinish7908108,
        ["7908109"] = self.OnSubFinish7908109,
        ["7908110"] = self.OnSubFinish7908110,
        ["7908111"] = self.OnSubFinish7908111,
        ["7908112"] = self.OnSubFinish7908112,
        ["7908113"] = self.OnSubFinish7908113,
        ["7908114"] = self.OnSubFinish7908114,
        ["7908115"] = self.OnSubFinish7908115,
        ["7908116"] = self.OnSubFinish7908116,
        ["7908117"] = self.OnSubFinish7908117,
        ["7908118"] = self.OnSubFinish7908118
    }
end

function Quest79081:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79081:Start()
    print("Start")
end

function Quest79081:OnDestroy()
    print("OnDestroy")
end

function Quest79081:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79081:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79081:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79081:OnSubStart7908101(arg1)
    print("OnSubStart7908101")
    actorMgr:CreateActorWithPos("Q7908101Trigger", "Actor/Gadget/Q7908101Trigger", 70900002, 0, points.TPos_Q7908101Trigger.pos, points.TPos_Q7908101Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908101(arg1)
    print("OnSubFinish7908101")
    this:SetNavigationByMainId(79081, true)
end

function Quest79081:OnSubStart7908102(arg1)
    print("OnSubStart7908102")
    actorMgr:CreateActorWithPos("Q7908102Trigger", "Actor/Gadget/Q7908102Trigger", 70900002, 0, points.TPos_Q7908102Trigger.pos, points.TPos_Q7908102Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908102(arg1)
    print("OnSubFinish7908102")
end

function Quest79081:OnSubStart7908103(arg1)
    print("OnSubStart7908103")
    actorMgr:CreateActorWithPos("Q7908103Trigger", "Actor/Gadget/Q7908103Trigger", 70900002, 0, points.TPos_Q7908103Trigger.pos, points.TPos_Q7908103Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908103(arg1)
    print("OnSubFinish7908103")
end

function Quest79081:OnSubStart7908104(arg1)
    print("OnSubStart7908104")
    actorMgr:CreateActorWithPos("Q7908104Trigger", "Actor/Gadget/Q7908104Trigger", 70900002, 0, points.TPos_Q7908104Trigger.pos, points.TPos_Q7908104Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908104(arg1)
    print("OnSubFinish7908104")
end

function Quest79081:OnSubStart7908105(arg1)
    print("OnSubStart7908105")
end

function Quest79081:OnSubFinish7908105(arg1)
    print("OnSubFinish7908105")
end

function Quest79081:OnSubStart7908106(arg1)
    print("OnSubStart7908106")
    actorMgr:CreateActorWithPos("Q7908106Trigger", "Actor/Gadget/Q7908106Trigger", 70900002, 0, points.TPos_Q7908106Trigger.pos, points.TPos_Q7908106Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908106(arg1)
    print("OnSubFinish7908106")
end

function Quest79081:OnSubStart7908107(arg1)
    print("OnSubStart7908107")
    actorMgr:CreateActorWithPos("Q7908107Trigger", "Actor/Gadget/Q7908107Trigger", 70900002, 0, points.TPos_Q7908107Trigger.pos, points.TPos_Q7908107Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908107(arg1)
    print("OnSubFinish7908107")
end

function Quest79081:OnSubStart7908108(arg1)
    print("OnSubStart7908108")
    actorMgr:CreateActorWithPos("Q7908108Trigger", "Actor/Gadget/Q7908108Trigger", 70900002, 0, points.TPos_Q7908108Trigger.pos, points.TPos_Q7908108Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908108(arg1)
    print("OnSubFinish7908108")
end

function Quest79081:OnSubStart7908109(arg1)
    print("OnSubStart7908109")
    actorMgr:CreateActorWithPos("Q7908109Trigger", "Actor/Gadget/Q7908109Trigger", 70900002, 0, points.TPos_Q7908109Trigger.pos, points.TPos_Q7908109Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908109(arg1)
    print("OnSubFinish7908109")
end

function Quest79081:OnSubStart7908110(arg1)
    print("OnSubStart7908110")
    actorMgr:CreateActorWithPos("Q7908110Trigger", "Actor/Gadget/Q7908110Trigger", 70900002, 0, points.TPos_Q7908110Trigger.pos, points.TPos_Q7908110Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908110(arg1)
    print("OnSubFinish7908110")
end

function Quest79081:OnSubStart7908111(arg1)
    print("OnSubStart7908111")
    actorMgr:CreateActorWithPos("Q7908111Trigger", "Actor/Gadget/Q7908111Trigger", 70900002, 0, points.TPos_Q7908111Trigger.pos, points.TPos_Q7908111Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908111(arg1)
    print("OnSubFinish7908111")
end

function Quest79081:OnSubStart7908112(arg1)
    print("OnSubStart7908112")
    actorMgr:CreateActorWithPos("Q7908112Trigger", "Actor/Gadget/Q7908112Trigger", 70900002, 0, points.TPos_Q7908112Trigger.pos, points.TPos_Q7908112Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908112(arg1)
    print("OnSubFinish7908112")
end

function Quest79081:OnSubStart7908113(arg1)
    print("OnSubStart7908113")
    actorMgr:CreateActorWithPos("Q7908113Trigger", "Actor/Gadget/Q7908113Trigger", 70900002, 0, points.TPos_Q7908113Trigger.pos, points.TPos_Q7908113Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908113(arg1)
    print("OnSubFinish7908113")
end

function Quest79081:OnSubStart7908114(arg1)
    print("OnSubStart7908114")
    actorMgr:CreateActorWithPos("Q7908114Trigger", "Actor/Gadget/Q7908114Trigger", 70900002, 0, points.TPos_Q7908114Trigger.pos, points.TPos_Q7908114Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908114(arg1)
    print("OnSubFinish7908114")
end

function Quest79081:OnSubStart7908115(arg1)
    print("OnSubStart7908115")
    actorMgr:CreateActorWithPos("Q7908115Trigger", "Actor/Gadget/Q7908115Trigger", 70900002, 0, points.TPos_Q7908115Trigger.pos, points.TPos_Q7908115Trigger.rot, true, false, 100)
end

function Quest79081:OnSubFinish7908115(arg1)
    print("OnSubFinish7908115")
end

function Quest79081:OnSubStart7908116(arg1)
    print("OnSubStart7908116")
end

function Quest79081:OnSubFinish7908116(arg1)
    print("OnSubFinish7908116")
end

function Quest79081:OnSubStart7908117(arg1)
    print("OnSubStart7908117")
end

function Quest79081:OnSubFinish7908117(arg1)
    print("OnSubFinish7908117")
end

function Quest79081:OnSubStart7908118(arg1)
    print("OnSubStart7908118")
end

function Quest79081:OnSubFinish7908118(arg1)
    print("OnSubFinish7908118")
end

return Quest79081
