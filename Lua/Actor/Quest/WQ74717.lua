require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74717 = class("Quest74717", QuestActorProxy)
Quest74717.defaultAlias = "Quest74717"
local clientData
local this
local mainID
local actorAlias
local points

function Quest74717:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest74717:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7471701"] = self.OnSubStart7471701,
        ["7471702"] = self.OnSubStart7471702,
        ["7471703"] = self.OnSubStart7471703
    }
end

function Quest74717:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7471701"] = self.OnSubFinish7471701,
        ["7471702"] = self.OnSubFinish7471702,
        ["7471703"] = self.OnSubFinish7471703
    }
end

function Quest74717:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74717:Start()
    print("Start")
end

function Quest74717:OnDestroy()
    print("OnDestroy")
end

function Quest74717:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74717:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74717:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74717:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7471701Trigger", 74717)
end

function Quest74717:ActorDestroy(arg1, arg2)
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

function Quest74717:OnSubStart7471701(arg1)
    print("OnSubStart7471701")
end

function Quest74717:OnSubFinish7471701(arg1)
    print("OnSubFinish7471701")
end

function Quest74717:OnSubStart7471702(arg1)
    print("OnSubStart7471702")
    actorMgr:CreateActorWithPos("Q7471701Trigger", "Actor/Gadget/Q7471701Trigger", 70900002, 0, points._Q7471701TriggerPoint_.pos, points._Q7471701TriggerPoint_.rot, true, false, 3, nil, 0, 74717)
end

function Quest74717:OnSubFinish7471702(arg1)
    print("OnSubFinish7471702")
    this:ActorDestroy("Q7471701Trigger", 74717)
end

function Quest74717:OnSubStart7471703(arg1)
    print("OnSubStart7471703")
end

function Quest74717:OnSubFinish7471703(arg1)
    print("OnSubFinish7471703")
end

return Quest74717
