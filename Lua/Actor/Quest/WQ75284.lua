require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75284 = class("Quest75284", QuestActorProxy)
Quest75284.defaultAlias = "Quest75284"
local clientData
local this
local mainID
local actorAlias

function Quest75284:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75284:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7528401"] = self.OnSubStart7528401,
        ["7528402"] = self.OnSubStart7528402,
        ["7528403"] = self.OnSubStart7528403,
        ["7528404"] = self.OnSubStart7528404,
        ["7528405"] = self.OnSubStart7528405,
        ["7528406"] = self.OnSubStart7528406,
        ["7528407"] = self.OnSubStart7528407,
        ["7528410"] = self.OnSubStart7528410,
        ["7528408"] = self.OnSubStart7528408,
        ["7528409"] = self.OnSubStart7528409
    }
end

function Quest75284:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7528401"] = self.OnSubFinish7528401,
        ["7528402"] = self.OnSubFinish7528402,
        ["7528403"] = self.OnSubFinish7528403,
        ["7528404"] = self.OnSubFinish7528404,
        ["7528405"] = self.OnSubFinish7528405,
        ["7528406"] = self.OnSubFinish7528406,
        ["7528407"] = self.OnSubFinish7528407,
        ["7528410"] = self.OnSubFinish7528410,
        ["7528408"] = self.OnSubFinish7528408,
        ["7528409"] = self.OnSubFinish7528409
    }
end

function Quest75284:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75284:Start()
    print("Start")
end

function Quest75284:OnDestroy()
    print("OnDestroy")
end

function Quest75284:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75284:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75284:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75284:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75284:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7528402 then
        actorUtils.FinishQuestID(false, 7528402)
    elseif arg1 == 7528403 then
        actorUtils.FinishQuestID(false, 7528403)
    elseif arg1 == 7528404 then
        actorUtils.FinishQuestID(false, 7528404)
    elseif arg1 == 7528405 then
        actorUtils.FinishQuestID(false, 7528405)
    elseif arg1 == 7528406 then
        actorUtils.FinishQuestID(false, 7528406)
    elseif arg1 == 7528407 then
        actorUtils.FinishQuestID(false, 7528407)
    end
end

function Quest75284:OnSubStart7528401(arg1)
    print("OnSubStart7528401")
    actorUtils.FinishQuestID(false, 7528401)
end

function Quest75284:OnSubFinish7528401(arg1)
    print("OnSubFinish7528401")
end

function Quest75284:OnSubStart7528402(arg1)
    print("OnSubStart7528402")
end

function Quest75284:OnSubFinish7528402(arg1)
    print("OnSubFinish7528402")
end

function Quest75284:OnSubStart7528403(arg1)
    print("OnSubStart7528403")
end

function Quest75284:OnSubFinish7528403(arg1)
    print("OnSubFinish7528403")
end

function Quest75284:OnSubStart7528404(arg1)
    print("OnSubStart7528404")
end

function Quest75284:OnSubFinish7528404(arg1)
    print("OnSubFinish7528404")
end

function Quest75284:OnSubStart7528405(arg1)
    print("OnSubStart7528405")
end

function Quest75284:OnSubFinish7528405(arg1)
    print("OnSubFinish7528405")
end

function Quest75284:OnSubStart7528406(arg1)
    print("OnSubStart7528406")
end

function Quest75284:OnSubFinish7528406(arg1)
    print("OnSubFinish7528406")
end

function Quest75284:OnSubStart7528407(arg1)
    print("OnSubStart7528407")
end

function Quest75284:OnSubFinish7528407(arg1)
    print("OnSubFinish7528407")
end

function Quest75284:OnSubStart7528410(arg1)
    print("OnSubStart7528410")
end

function Quest75284:OnSubFinish7528410(arg1)
    print("OnSubFinish7528410")
end

function Quest75284:OnSubStart7528408(arg1)
    print("OnSubStart7528408")
end

function Quest75284:OnSubFinish7528408(arg1)
    print("OnSubFinish7528408")
end

function Quest75284:OnSubStart7528409(arg1)
    print("OnSubStart7528409")
end

function Quest75284:OnSubFinish7528409(arg1)
    print("OnSubFinish7528409")
end

return Quest75284
