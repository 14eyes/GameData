require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76158 = class("Quest76158", QuestActorProxy)
Quest76158.defaultAlias = "Quest76158"
local clientData
local this
local mainID
local actorAlias

function Quest76158:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76158:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7615804"] = self.OnSubStart7615804,
        ["7615802"] = self.OnSubStart7615802,
        ["7615803"] = self.OnSubStart7615803,
        ["7615805"] = self.OnSubStart7615805
    }
end

function Quest76158:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7615804"] = self.OnSubFinish7615804,
        ["7615802"] = self.OnSubFinish7615802,
        ["7615803"] = self.OnSubFinish7615803,
        ["7615805"] = self.OnSubFinish7615805
    }
end

function Quest76158:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76158:Start()
    print("Start")
end

function Quest76158:OnDestroy()
    print("OnDestroy")
end

function Quest76158:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76158:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76158:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76158:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76158:OnSubStart7615804(arg1)
    print("OnSubStart7615804")
end

function Quest76158:OnSubFinish7615804(arg1)
    print("OnSubFinish7615804")
end

function Quest76158:OnSubStart7615802(arg1)
    print("OnSubStart7615802")
end

function Quest76158:OnSubFinish7615802(arg1)
    print("OnSubFinish7615802")
end

function Quest76158:OnSubStart7615803(arg1)
    print("OnSubStart7615803")
end

function Quest76158:OnSubFinish7615803(arg1)
    print("OnSubFinish7615803")
end

function Quest76158:OnSubStart7615805(arg1)
    print("OnSubStart7615805")
end

function Quest76158:OnSubFinish7615805(arg1)
    print("OnSubFinish7615805")
end

return Quest76158
