require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75261 = class("Quest75261", QuestActorProxy)
Quest75261.defaultAlias = "Quest75261"
local clientData
local this
local mainID
local actorAlias
local points

function Quest75261:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest75261:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7526101"] = self.OnSubStart7526101,
        ["7526106"] = self.OnSubStart7526106,
        ["7526107"] = self.OnSubStart7526107,
        ["7526102"] = self.OnSubStart7526102,
        ["7526104"] = self.OnSubStart7526104,
        ["7526105"] = self.OnSubStart7526105,
        ["7526103"] = self.OnSubStart7526103
    }
end

function Quest75261:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7526101"] = self.OnSubFinish7526101,
        ["7526106"] = self.OnSubFinish7526106,
        ["7526107"] = self.OnSubFinish7526107,
        ["7526102"] = self.OnSubFinish7526102,
        ["7526104"] = self.OnSubFinish7526104,
        ["7526105"] = self.OnSubFinish7526105,
        ["7526103"] = self.OnSubFinish7526103
    }
end

function Quest75261:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75261:Start()
    print("Start")
end

function Quest75261:OnDestroy()
    print("OnDestroy")
end

function Quest75261:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75261:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75261:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75261:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7526103Trigger")
end

function Quest75261:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75261:OnSubStart7526101(arg1)
    print("OnSubStart7526101")
end

function Quest75261:OnSubFinish7526101(arg1)
    print("OnSubFinish7526101")
end

function Quest75261:OnSubStart7526106(arg1)
    print("OnSubStart7526106")
end

function Quest75261:OnSubFinish7526106(arg1)
    print("OnSubFinish7526106")
end

function Quest75261:OnSubStart7526107(arg1)
    print("OnSubStart7526107")
end

function Quest75261:OnSubFinish7526107(arg1)
    print("OnSubFinish7526107")
end

function Quest75261:OnSubStart7526102(arg1)
    print("OnSubStart7526102")
end

function Quest75261:OnSubFinish7526102(arg1)
    print("OnSubFinish7526102")
end

function Quest75261:OnSubStart7526104(arg1)
    print("OnSubStart7526104")
end

function Quest75261:OnSubFinish7526104(arg1)
    print("OnSubFinish7526104")
end

function Quest75261:OnSubStart7526105(arg1)
    print("OnSubStart7526105")
end

function Quest75261:OnSubFinish7526105(arg1)
    print("OnSubFinish7526105")
end

function Quest75261:OnSubStart7526103(arg1)
    print("OnSubStart7526103")
    actorMgr:CreateActorWithPos("Q7526103Trigger", "Actor/Gadget/Q7526103Trigger", 70900002, 0, points._Q7526103TriggerPoint_.pos, points._Q7526103TriggerPoint_.rot, true, false, 3)
end

function Quest75261:OnSubFinish7526103(arg1)
    print("OnSubFinish7526103")
end

return Quest75261
