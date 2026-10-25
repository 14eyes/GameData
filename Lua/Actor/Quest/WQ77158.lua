require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77158 = class("Quest77158", QuestActorProxy)
Quest77158.defaultAlias = "Quest77158"
local clientData
local this
local mainID
local actorAlias

function Quest77158:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77158:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7715801"] = self.OnSubStart7715801,
        ["7715802"] = self.OnSubStart7715802,
        ["7715803"] = self.OnSubStart7715803,
        ["7715804"] = self.OnSubStart7715804
    }
end

function Quest77158:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7715801"] = self.OnSubFinish7715801,
        ["7715802"] = self.OnSubFinish7715802,
        ["7715803"] = self.OnSubFinish7715803,
        ["7715804"] = self.OnSubFinish7715804
    }
end

function Quest77158:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77158:Start()
    print("Start")
end

function Quest77158:OnDestroy()
    print("OnDestroy")
end

function Quest77158:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77158:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77158:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:RecycleAllRes()
end

function Quest77158:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77158:OnSubStart7715801(arg1)
    print("OnSubStart7715801")
end

function Quest77158:OnSubFinish7715801(arg1)
    print("OnSubFinish7715801")
end

function Quest77158:OnSubStart7715802(arg1)
    print("OnSubStart7715802")
end

function Quest77158:OnSubFinish7715802(arg1)
    print("OnSubFinish7715802")
end

function Quest77158:OnSubStart7715803(arg1)
    print("OnSubStart7715803")
end

function Quest77158:OnSubFinish7715803(arg1)
    print("OnSubFinish7715803")
end

function Quest77158:OnSubStart7715804(arg1)
    print("OnSubStart7715804")
end

function Quest77158:OnSubFinish7715804(arg1)
    print("OnSubFinish7715804")
end

return Quest77158
