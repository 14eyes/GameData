require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75275 = class("Quest75275", QuestActorProxy)
Quest75275.defaultAlias = "Quest75275"
local clientData
local this
local mainID
local actorAlias
local points

function Quest75275:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    points = clientData.Points
end

function Quest75275:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7527501"] = self.OnSubStart7527501,
        ["7527504"] = self.OnSubStart7527504,
        ["7527505"] = self.OnSubStart7527505,
        ["7527508"] = self.OnSubStart7527508,
        ["7527503"] = self.OnSubStart7527503,
        ["7527502"] = self.OnSubStart7527502,
        ["7527506"] = self.OnSubStart7527506,
        ["7527507"] = self.OnSubStart7527507,
        ["7527509"] = self.OnSubStart7527509,
        ["7527510"] = self.OnSubStart7527510
    }
end

function Quest75275:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7527501"] = self.OnSubFinish7527501,
        ["7527504"] = self.OnSubFinish7527504,
        ["7527505"] = self.OnSubFinish7527505,
        ["7527508"] = self.OnSubFinish7527508,
        ["7527503"] = self.OnSubFinish7527503,
        ["7527502"] = self.OnSubFinish7527502,
        ["7527506"] = self.OnSubFinish7527506,
        ["7527507"] = self.OnSubFinish7527507,
        ["7527509"] = self.OnSubFinish7527509,
        ["7527510"] = self.OnSubFinish7527510
    }
end

function Quest75275:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75275:Start()
    print("Start")
end

function Quest75275:OnDestroy()
    print("OnDestroy")
end

function Quest75275:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75275:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75275:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75275:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7527501Trigger")
end

function Quest75275:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75275:OnSubStart7527501(arg1)
    print("OnSubStart7527501")
    actorMgr:CreateActorWithPos("Q7527501Trigger", "Actor/Gadget/Q7527501Trigger", 70900002, 0, points._Q7527501TriggerPoint_.pos, points._Q7527501TriggerPoint_.rot, true, false, 3)
end

function Quest75275:OnSubFinish7527501(arg1)
    print("OnSubFinish7527501")
end

function Quest75275:OnSubStart7527504(arg1)
    print("OnSubStart7527504")
end

function Quest75275:OnSubFinish7527504(arg1)
    print("OnSubFinish7527504")
end

function Quest75275:OnSubStart7527505(arg1)
    print("OnSubStart7527505")
end

function Quest75275:OnSubFinish7527505(arg1)
    print("OnSubFinish7527505")
end

function Quest75275:OnSubStart7527508(arg1)
    print("OnSubStart7527508")
end

function Quest75275:OnSubFinish7527508(arg1)
    print("OnSubFinish7527508")
end

function Quest75275:OnSubStart7527503(arg1)
    print("OnSubStart7527503")
end

function Quest75275:OnSubFinish7527503(arg1)
    print("OnSubFinish7527503")
end

function Quest75275:OnSubStart7527502(arg1)
    print("OnSubStart7527502")
end

function Quest75275:OnSubFinish7527502(arg1)
    print("OnSubFinish7527502")
end

function Quest75275:OnSubStart7527506(arg1)
    print("OnSubStart7527506")
end

function Quest75275:OnSubFinish7527506(arg1)
    print("OnSubFinish7527506")
end

function Quest75275:OnSubStart7527507(arg1)
    print("OnSubStart7527507")
end

function Quest75275:OnSubFinish7527507(arg1)
    print("OnSubFinish7527507")
end

function Quest75275:OnSubStart7527509(arg1)
    print("OnSubStart7527509")
end

function Quest75275:OnSubFinish7527509(arg1)
    print("OnSubFinish7527509")
end

function Quest75275:OnSubStart7527510(arg1)
    print("OnSubStart7527510")
end

function Quest75275:OnSubFinish7527510(arg1)
    print("OnSubFinish7527510")
end

return Quest75275
