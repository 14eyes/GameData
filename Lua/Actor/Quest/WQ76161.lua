require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76161 = class("Quest76161", QuestActorProxy)
Quest76161.defaultAlias = "Quest76161"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest76161:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest76161:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7616101"] = self.OnSubStart7616101, ["7616102"] = self.OnSubStart7616102}
end

function Quest76161:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7616101"] = self.OnSubFinish7616101, ["7616102"] = self.OnSubFinish7616102}
end

function Quest76161:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76161:Start()
    print("Start")
end

function Quest76161:OnDestroy()
    print("OnDestroy")
end

function Quest76161:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76161:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76161:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76161:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7616101Trigger")
end

function Quest76161:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76161:OnSubStart7616101(arg1)
    print("OnSubStart7616101")
    actorMgr:CreateActorWithPos("Q7616101Trigger", "Actor/Gadget/Q7616101Trigger", 70900002, 0, points._Q7616101TriggerPoint_.pos, points._Q7616101TriggerPoint_.rot, true, false, 3)
end

function Quest76161:OnSubFinish7616101(arg1)
    print("OnSubFinish7616101")
    this:SetNavigationByMainId(76161, true)
end

function Quest76161:OnSubStart7616102(arg1)
    print("OnSubStart7616102")
end

function Quest76161:OnSubFinish7616102(arg1)
    print("OnSubFinish7616102")
    this:SetNavigationByMainId(76100, true)
end

return Quest76161
