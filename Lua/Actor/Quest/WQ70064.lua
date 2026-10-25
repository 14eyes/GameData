require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70064 = class("Quest70064", QuestActorProxy)
Quest70064.defaultAlias = "Quest70064"
local clientData
local this
local mainID
local actorAlias
local points

function Quest70064:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest70064:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7006401"] = self.OnSubStart7006401,
        ["7006405"] = self.OnSubStart7006405,
        ["7006402"] = self.OnSubStart7006402,
        ["7006403"] = self.OnSubStart7006403,
        ["7006404"] = self.OnSubStart7006404,
        ["7006406"] = self.OnSubStart7006406,
        ["7006407"] = self.OnSubStart7006407
    }
end

function Quest70064:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7006401"] = self.OnSubFinish7006401,
        ["7006405"] = self.OnSubFinish7006405,
        ["7006402"] = self.OnSubFinish7006402,
        ["7006403"] = self.OnSubFinish7006403,
        ["7006404"] = self.OnSubFinish7006404,
        ["7006406"] = self.OnSubFinish7006406,
        ["7006407"] = self.OnSubFinish7006407
    }
end

function Quest70064:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70064:Start()
    print("Start")
end

function Quest70064:OnDestroy()
    print("OnDestroy")
end

function Quest70064:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70064:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70064:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70064:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7006401Trigger", nil)
end

function Quest70064:ActorDestroy(arg1, arg2)
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

function Quest70064:OnSubStart7006401(arg1)
    print("OnSubStart7006401")
    actorMgr:CreateActorWithPos("Q7006401Trigger", "Actor/Gadget/Q7006401Trigger", 70900002, 0, points._Q7006401TriggerPoint_.pos, points._Q7006401TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest70064:OnSubFinish7006401(arg1)
    print("OnSubFinish7006401")
end

function Quest70064:OnSubStart7006405(arg1)
    print("OnSubStart7006405")
end

function Quest70064:OnSubFinish7006405(arg1)
    print("OnSubFinish7006405")
end

function Quest70064:OnSubStart7006402(arg1)
    print("OnSubStart7006402")
end

function Quest70064:OnSubFinish7006402(arg1)
    print("OnSubFinish7006402")
end

function Quest70064:OnSubStart7006403(arg1)
    print("OnSubStart7006403")
end

function Quest70064:OnSubFinish7006403(arg1)
    print("OnSubFinish7006403")
end

function Quest70064:OnSubStart7006404(arg1)
    print("OnSubStart7006404")
end

function Quest70064:OnSubFinish7006404(arg1)
    print("OnSubFinish7006404")
end

function Quest70064:OnSubStart7006406(arg1)
    print("OnSubStart7006406")
end

function Quest70064:OnSubFinish7006406(arg1)
    print("OnSubFinish7006406")
end

function Quest70064:OnSubStart7006407(arg1)
    print("OnSubStart7006407")
end

function Quest70064:OnSubFinish7006407(arg1)
    print("OnSubFinish7006407")
end

return Quest70064
