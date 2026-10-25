require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70081 = class("Quest70081", QuestActorProxy)
Quest70081.defaultAlias = "Quest70081"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest70081:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest70081:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7008101"] = self.OnSubStart7008101,
        ["7008105"] = self.OnSubStart7008105,
        ["7008103"] = self.OnSubStart7008103,
        ["7008102"] = self.OnSubStart7008102,
        ["7008104"] = self.OnSubStart7008104
    }
end

function Quest70081:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7008101"] = self.OnSubFinish7008101,
        ["7008105"] = self.OnSubFinish7008105,
        ["7008103"] = self.OnSubFinish7008103,
        ["7008102"] = self.OnSubFinish7008102,
        ["7008104"] = self.OnSubFinish7008104
    }
end

function Quest70081:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7008101"] = self.OnSubFailed7008101,
        ["7008103"] = self.OnSubFailed7008103,
        ["7008102"] = self.OnSubFailed7008102
    }
end

function Quest70081:Start()
    print("Start")
end

function Quest70081:OnDestroy()
    print("OnDestroy")
end

function Quest70081:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70081:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70081:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70081:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7008102Trigger", nil)
    this:ActorDestroy("Q7008103Trigger", nil)
    this:ActorDestroy("Q7008105Trigger", 70081)
end

function Quest70081:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest70081:OnSubStart7008101(arg1)
    print("OnSubStart7008101")
end

function Quest70081:OnSubFinish7008101(arg1)
    print("OnSubFinish7008101")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData1, nil, nil, nil)
end

function Quest70081:OnSubFailed7008101(arg1)
    print("OnSubFailed7008101")
    this:RecycleAllRes()
end

function Quest70081:OnSubStart7008105(arg1)
    print("OnSubStart7008105")
    actorMgr:CreateActorWithPos("Q7008105Trigger", "Actor/Gadget/Q7008105Trigger", 70900002, 0, points._Q7008105TriggerPoint_.pos, points._Q7008105TriggerPoint_.rot, true, false, 103, nil, 0, 70081)
end

function Quest70081:OnSubFinish7008105(arg1)
    print("OnSubFinish7008105")
end

function Quest70081:OnSubStart7008103(arg1)
    print("OnSubStart7008103")
    actorMgr:CreateActorWithPos("Q7008103Trigger", "Actor/Gadget/Q7008103Trigger", 70900002, 0, points._Q7008103TriggerPoint_.pos, points._Q7008103TriggerPoint_.rot, true, false, 103, nil, 0, 70081)
end

function Quest70081:OnSubFinish7008103(arg1)
    print("OnSubFinish7008103")
end

function Quest70081:OnSubFailed7008103(arg1)
    print("OnSubFailed7008103")
    this:RecycleAllRes()
end

function Quest70081:OnSubStart7008102(arg1)
    print("OnSubStart7008102")
    actorMgr:CreateActorWithPos("Q7008102Trigger", "Actor/Gadget/Q7008102Trigger", 70900002, 0, points._Q7008102TriggerPoint_.pos, points._Q7008102TriggerPoint_.rot, true, false, 103, nil, 0, 70081)
end

function Quest70081:OnSubFinish7008102(arg1)
    print("OnSubFinish7008102")
end

function Quest70081:OnSubFailed7008102(arg1)
    print("OnSubFailed7008102")
    this:RecycleAllRes()
end

function Quest70081:OnSubStart7008104(arg1)
    print("OnSubStart7008104")
end

function Quest70081:OnSubFinish7008104(arg1)
    print("OnSubFinish7008104")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData1, nil, nil, nil)
end

return Quest70081
