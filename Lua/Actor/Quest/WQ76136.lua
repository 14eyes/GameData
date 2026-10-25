require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76136 = class("Quest76136", QuestActorProxy)
Quest76136.defaultAlias = "Quest76136"
local clientData
local this
local mainID
local actorAlias

function Quest76136:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76136:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7613601"] = self.OnSubStart7613601,
        ["7613604"] = self.OnSubStart7613604,
        ["7613605"] = self.OnSubStart7613605,
        ["7613606"] = self.OnSubStart7613606,
        ["7613608"] = self.OnSubStart7613608,
        ["7613602"] = self.OnSubStart7613602,
        ["7613603"] = self.OnSubStart7613603,
        ["7613607"] = self.OnSubStart7613607,
        ["7613609"] = self.OnSubStart7613609,
        ["7613610"] = self.OnSubStart7613610
    }
end

function Quest76136:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7613601"] = self.OnSubFinish7613601,
        ["7613604"] = self.OnSubFinish7613604,
        ["7613605"] = self.OnSubFinish7613605,
        ["7613606"] = self.OnSubFinish7613606,
        ["7613608"] = self.OnSubFinish7613608,
        ["7613602"] = self.OnSubFinish7613602,
        ["7613603"] = self.OnSubFinish7613603,
        ["7613607"] = self.OnSubFinish7613607,
        ["7613609"] = self.OnSubFinish7613609,
        ["7613610"] = self.OnSubFinish7613610
    }
end

function Quest76136:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76136:Start()
    print("Start")
end

function Quest76136:OnDestroy()
    print("OnDestroy")
end

function Quest76136:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76136:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76136:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76136:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76136:OnSubStart7613601(arg1)
    print("OnSubStart7613601")
end

function Quest76136:OnSubFinish7613601(arg1)
    print("OnSubFinish7613601")
end

function Quest76136:OnSubStart7613604(arg1)
    print("OnSubStart7613604")
end

function Quest76136:OnSubFinish7613604(arg1)
    print("OnSubFinish7613604")
end

function Quest76136:OnSubStart7613605(arg1)
    print("OnSubStart7613605")
end

function Quest76136:OnSubFinish7613605(arg1)
    print("OnSubFinish7613605")
end

function Quest76136:OnSubStart7613606(arg1)
    print("OnSubStart7613606")
end

function Quest76136:OnSubFinish7613606(arg1)
    print("OnSubFinish7613606")
end

function Quest76136:OnSubStart7613608(arg1)
    print("OnSubStart7613608")
end

function Quest76136:OnSubFinish7613608(arg1)
    print("OnSubFinish7613608")
end

function Quest76136:OnSubStart7613602(arg1)
    print("OnSubStart7613602")
end

function Quest76136:OnSubFinish7613602(arg1)
    print("OnSubFinish7613602")
end

function Quest76136:OnSubStart7613603(arg1)
    print("OnSubStart7613603")
end

function Quest76136:OnSubFinish7613603(arg1)
    print("OnSubFinish7613603")
end

function Quest76136:OnSubStart7613607(arg1)
    print("OnSubStart7613607")
end

function Quest76136:OnSubFinish7613607(arg1)
    print("OnSubFinish7613607")
end

function Quest76136:OnSubStart7613609(arg1)
    print("OnSubStart7613609")
end

function Quest76136:OnSubFinish7613609(arg1)
    print("OnSubFinish7613609")
end

function Quest76136:OnSubStart7613610(arg1)
    print("OnSubStart7613610")
    actorUtils.FinishQuestID(false, 7613610)
end

function Quest76136:OnSubFinish7613610(arg1)
    print("OnSubFinish7613610")
end

return Quest76136
