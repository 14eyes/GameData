require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75276 = class("Quest75276", QuestActorProxy)
Quest75276.defaultAlias = "Quest75276"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest75276:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest75276:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7527601"] = self.OnSubStart7527601,
        ["7527602"] = self.OnSubStart7527602,
        ["7527603"] = self.OnSubStart7527603
    }
end

function Quest75276:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7527601"] = self.OnSubFinish7527601,
        ["7527602"] = self.OnSubFinish7527602,
        ["7527603"] = self.OnSubFinish7527603
    }
end

function Quest75276:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75276:Start()
    print("Start")
end

function Quest75276:OnDestroy()
    print("OnDestroy")
end

function Quest75276:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75276:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75276:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75276:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7527601Trigger")
    this:ActorDestroy("Q7527602Trigger")
    this:ActorDestroy("Q7527603Trigger")
end

function Quest75276:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75276:OnSubStart7527601(arg1)
    print("OnSubStart7527601")
    actorMgr:CreateActorWithPos("Q7527601Trigger", "Actor/Gadget/Q7527601Trigger", 70900002, 0, points._Q7527601TriggerPoint_.pos, points._Q7527601TriggerPoint_.rot, true, false, 3)
end

function Quest75276:OnSubFinish7527601(arg1)
    print("OnSubFinish7527601")
end

function Quest75276:OnSubStart7527602(arg1)
    print("OnSubStart7527602")
    actorMgr:CreateActorWithPos("Q7527602Trigger", "Actor/Gadget/Q7527602Trigger", 70900002, 0, points._Q7527602TriggerPoint_.pos, points._Q7527602TriggerPoint_.rot, true, false, 3)
end

function Quest75276:OnSubFinish7527602(arg1)
    print("OnSubFinish7527602")
    this:PlayerEnterDungeonWithData(1618, 1245, 7527602, 0, datas.TransmitData, nil, nil)
end

function Quest75276:OnSubStart7527603(arg1)
    print("OnSubStart7527603")
    actorMgr:CreateActorWithPos("Q7527601Trigger", "Actor/Gadget/Q7527601Trigger", 70900002, 0, points._Q7527601TriggerPoint_.pos, points._Q7527601TriggerPoint_.rot, true, false, 3)
end

function Quest75276:OnSubFinish7527603(arg1)
    print("OnSubFinish7527603")
end

return Quest75276
