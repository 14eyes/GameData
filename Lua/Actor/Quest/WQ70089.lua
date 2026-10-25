require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70089 = class("Quest70089", QuestActorProxy)
Quest70089.defaultAlias = "Quest70089"
local clientData
local this
local mainID
local actorAlias
local points

function Quest70089:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest70089:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7008901"] = self.OnSubStart7008901, ["7008902"] = self.OnSubStart7008902}
end

function Quest70089:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7008901"] = self.OnSubFinish7008901, ["7008902"] = self.OnSubFinish7008902}
end

function Quest70089:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7008902"] = self.OnSubFailed7008902}
end

function Quest70089:Start()
    print("Start")
end

function Quest70089:OnDestroy()
    print("OnDestroy")
end

function Quest70089:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70089:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70089:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70089:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7008902Trigger", 0)
end

function Quest70089:ActorDestroy(arg1, arg2)
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

function Quest70089:OnSubStart7008901(arg1)
    print("OnSubStart7008901")
end

function Quest70089:OnSubFinish7008901(arg1)
    print("OnSubFinish7008901")
end

function Quest70089:OnSubStart7008902(arg1)
    print("OnSubStart7008902")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:AfterInterCall(function(arg1)
            actorMgr:CreateActorWithPos("Q7008902Trigger", "Actor/Gadget/Q7008902Trigger", 70900002, 0, points.Q7008902Trigger.pos, points.Q7008902Trigger.rot, true, false, 3, nil, 0, 0)
        end)
    end)
end

function Quest70089:OnSubFinish7008902(arg1)
    print("OnSubFinish7008902")
end

function Quest70089:OnSubFailed7008902(arg1)
    print("OnSubFailed7008902")
    this:RecycleAllRes()
end

return Quest70089
