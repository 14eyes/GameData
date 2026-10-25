require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76160 = class("Quest76160", QuestActorProxy)
Quest76160.defaultAlias = "Quest76160"
local clientData
local this
local mainID
local actorAlias
local points

function Quest76160:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest76160:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7616001"] = self.OnSubStart7616001,
        ["7616002"] = self.OnSubStart7616002,
        ["7616003"] = self.OnSubStart7616003
    }
end

function Quest76160:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7616001"] = self.OnSubFinish7616001,
        ["7616002"] = self.OnSubFinish7616002,
        ["7616003"] = self.OnSubFinish7616003
    }
end

function Quest76160:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76160:Start()
    print("Start")
end

function Quest76160:OnDestroy()
    print("OnDestroy")
end

function Quest76160:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76160:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76160:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76160:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7616001Trigger")
end

function Quest76160:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76160:OnSubStart7616001(arg1)
    print("OnSubStart7616001")
    actorMgr:CreateActorWithPos("Q7616001Trigger", "Actor/Gadget/Q7616001Trigger", 70900002, 0, points._Q7616001TriggerPoint_.pos, points._Q7616001TriggerPoint_.rot, true, false, 3)
end

function Quest76160:OnSubFinish7616001(arg1)
    print("OnSubFinish7616001")
    this:SetNavigationByMainId(76160, true)
end

function Quest76160:OnSubStart7616002(arg1)
    print("OnSubStart7616002")
end

function Quest76160:OnSubFinish7616002(arg1)
    print("OnSubFinish7616002")
end

function Quest76160:OnSubStart7616003(arg1)
    print("OnSubStart7616003")
end

function Quest76160:OnSubFinish7616003(arg1)
    print("OnSubFinish7616003")
    this:SetNavigationByMainId(76100, true)
end

return Quest76160
