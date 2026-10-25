require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75501 = class("Quest75501", QuestActorProxy)
Quest75501.defaultAlias = "Quest75501"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest75501:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest75501:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7550101"] = self.OnSubStart7550101}
end

function Quest75501:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7550101"] = self.OnSubFinish7550101}
end

function Quest75501:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75501:Start()
    print("Start")
end

function Quest75501:OnDestroy()
    print("OnDestroy")
end

function Quest75501:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75501:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75501:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:ActorDestroy("Q75501trigger")
end

function Quest75501:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75501:OnSubStart7550101(arg1)
    print("OnSubStart7550101")
    actorMgr:CreateActorWithPos("Q75501trigger", "Actor/Gadget/Q75501trigger", 70900002, 0, points._Q75501triggerPoint_.pos, points._Q75501triggerPoint_.rot, true, false, 3)
end

function Quest75501:OnSubFinish7550101(arg1)
    print("OnSubFinish7550101")
    this:ActorDestroy("Q75501trigger")
    this:ClearNarratorTask()
end

return Quest75501
