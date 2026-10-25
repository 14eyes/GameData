require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75502 = class("Quest75502", QuestActorProxy)
Quest75502.defaultAlias = "Quest75502"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest75502:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest75502:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7550201"] = self.OnSubStart7550201}
end

function Quest75502:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7550201"] = self.OnSubFinish7550201}
end

function Quest75502:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75502:Start()
    print("Start")
end

function Quest75502:OnDestroy()
    print("OnDestroy")
end

function Quest75502:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75502:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75502:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:ActorDestroy("Q75502trigger")
end

function Quest75502:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75502:OnSubStart7550201(arg1)
    print("OnSubStart7550201")
    actorMgr:CreateActorWithPos("Q75502trigger", "Actor/Gadget/Q75502trigger", 70900002, 0, points._Q75502triggerPoint_.pos, points._Q75502triggerPoint_.rot, true, false, 3)
end

function Quest75502:OnSubFinish7550201(arg1)
    print("OnSubFinish7550201")
    this:ActorDestroy("Q75502trigger")
    this:ClearNarratorTask()
end

return Quest75502
