require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75183 = class("Quest75183", QuestActorProxy)
Quest75183.defaultAlias = "Quest75183"
local clientData
local this
local mainID
local actorAlias

function Quest75183:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75183:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7518301"] = self.OnSubStart7518301,
        ["7518302"] = self.OnSubStart7518302,
        ["7518303"] = self.OnSubStart7518303,
        ["7518304"] = self.OnSubStart7518304
    }
end

function Quest75183:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7518301"] = self.OnSubFinish7518301,
        ["7518302"] = self.OnSubFinish7518302,
        ["7518303"] = self.OnSubFinish7518303,
        ["7518304"] = self.OnSubFinish7518304
    }
end

function Quest75183:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75183:Start()
    print("Start")
end

function Quest75183:OnDestroy()
    print("OnDestroy")
end

function Quest75183:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75183:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75183:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75183:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75183:OnSubStart7518301(arg1)
    print("OnSubStart7518301")
end

function Quest75183:OnSubFinish7518301(arg1)
    print("OnSubFinish7518301")
end

function Quest75183:OnSubStart7518302(arg1)
    print("OnSubStart7518302")
end

function Quest75183:OnSubFinish7518302(arg1)
    print("OnSubFinish7518302")
end

function Quest75183:OnSubStart7518303(arg1)
    print("OnSubStart7518303")
end

function Quest75183:OnSubFinish7518303(arg1)
    print("OnSubFinish7518303")
end

function Quest75183:OnSubStart7518304(arg1)
    print("OnSubStart7518304")
    this:RequestInteractionForceAlias("6328", "", true)
end

function Quest75183:OnSubFinish7518304(arg1)
    print("OnSubFinish7518304")
end

return Quest75183
