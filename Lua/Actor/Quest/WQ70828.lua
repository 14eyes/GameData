require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70828 = class("Quest70828", QuestActorProxy)
Quest70828.defaultAlias = "Quest70828"
local clientData
local this
local mainID
local actorAlias

function Quest70828:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70828:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7082801"] = self.OnSubStart7082801,
        ["7082802"] = self.OnSubStart7082802,
        ["7082803"] = self.OnSubStart7082803,
        ["7082804"] = self.OnSubStart7082804,
        ["7082806"] = self.OnSubStart7082806,
        ["7082808"] = self.OnSubStart7082808,
        ["7082809"] = self.OnSubStart7082809,
        ["7082810"] = self.OnSubStart7082810,
        ["7082807"] = self.OnSubStart7082807,
        ["7082805"] = self.OnSubStart7082805
    }
end

function Quest70828:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7082801"] = self.OnSubFinish7082801,
        ["7082802"] = self.OnSubFinish7082802,
        ["7082803"] = self.OnSubFinish7082803,
        ["7082804"] = self.OnSubFinish7082804,
        ["7082806"] = self.OnSubFinish7082806,
        ["7082808"] = self.OnSubFinish7082808,
        ["7082809"] = self.OnSubFinish7082809,
        ["7082810"] = self.OnSubFinish7082810,
        ["7082807"] = self.OnSubFinish7082807,
        ["7082805"] = self.OnSubFinish7082805
    }
end

function Quest70828:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70828:Start()
    print("Start")
end

function Quest70828:OnDestroy()
    print("OnDestroy")
end

function Quest70828:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70828:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70828:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70828:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70828:OnSubStart7082801(arg1)
    print("OnSubStart7082801")
end

function Quest70828:OnSubFinish7082801(arg1)
    print("OnSubFinish7082801")
end

function Quest70828:OnSubStart7082802(arg1)
    print("OnSubStart7082802")
end

function Quest70828:OnSubFinish7082802(arg1)
    print("OnSubFinish7082802")
end

function Quest70828:OnSubStart7082803(arg1)
    print("OnSubStart7082803")
end

function Quest70828:OnSubFinish7082803(arg1)
    print("OnSubFinish7082803")
end

function Quest70828:OnSubStart7082804(arg1)
    print("OnSubStart7082804")
end

function Quest70828:OnSubFinish7082804(arg1)
    print("OnSubFinish7082804")
end

function Quest70828:OnSubStart7082806(arg1)
    print("OnSubStart7082806")
end

function Quest70828:OnSubFinish7082806(arg1)
    print("OnSubFinish7082806")
end

function Quest70828:OnSubStart7082808(arg1)
    print("OnSubStart7082808")
end

function Quest70828:OnSubFinish7082808(arg1)
    print("OnSubFinish7082808")
end

function Quest70828:OnSubStart7082809(arg1)
    print("OnSubStart7082809")
end

function Quest70828:OnSubFinish7082809(arg1)
    print("OnSubFinish7082809")
end

function Quest70828:OnSubStart7082810(arg1)
    print("OnSubStart7082810")
end

function Quest70828:OnSubFinish7082810(arg1)
    print("OnSubFinish7082810")
end

function Quest70828:OnSubStart7082807(arg1)
    print("OnSubStart7082807")
end

function Quest70828:OnSubFinish7082807(arg1)
    print("OnSubFinish7082807")
end

function Quest70828:OnSubStart7082805(arg1)
    print("OnSubStart7082805")
end

function Quest70828:OnSubFinish7082805(arg1)
    print("OnSubFinish7082805")
end

return Quest70828
