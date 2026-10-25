require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71148 = class("Quest71148", QuestActorProxy)
Quest71148.defaultAlias = "Quest71148"
local clientData
local this
local mainID
local actorAlias

function Quest71148:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71148:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7114801"] = self.OnSubStart7114801,
        ["7114803"] = self.OnSubStart7114803,
        ["7114802"] = self.OnSubStart7114802,
        ["7114805"] = self.OnSubStart7114805,
        ["7114804"] = self.OnSubStart7114804,
        ["7114806"] = self.OnSubStart7114806
    }
end

function Quest71148:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7114801"] = self.OnSubFinish7114801,
        ["7114803"] = self.OnSubFinish7114803,
        ["7114802"] = self.OnSubFinish7114802,
        ["7114805"] = self.OnSubFinish7114805,
        ["7114804"] = self.OnSubFinish7114804,
        ["7114806"] = self.OnSubFinish7114806
    }
end

function Quest71148:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7114804"] = self.OnSubFailed7114804}
end

function Quest71148:Start()
    print("Start")
end

function Quest71148:OnDestroy()
    print("OnDestroy")
end

function Quest71148:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71148:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71148:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71148:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71148:OnSubStart7114801(arg1)
    print("OnSubStart7114801")
end

function Quest71148:OnSubFinish7114801(arg1)
    print("OnSubFinish7114801")
end

function Quest71148:OnSubStart7114803(arg1)
    print("OnSubStart7114803")
end

function Quest71148:OnSubFinish7114803(arg1)
    print("OnSubFinish7114803")
end

function Quest71148:OnSubStart7114802(arg1)
    print("OnSubStart7114802")
end

function Quest71148:OnSubFinish7114802(arg1)
    print("OnSubFinish7114802")
end

function Quest71148:OnSubStart7114805(arg1)
    print("OnSubStart7114805")
end

function Quest71148:OnSubFinish7114805(arg1)
    print("OnSubFinish7114805")
end

function Quest71148:OnSubStart7114804(arg1)
    print("OnSubStart7114804")
    this:DeployStoryByQuest(147114801)
end

function Quest71148:OnSubFinish7114804(arg1)
    print("OnSubFinish7114804")
    this:CancelStoryByQuest(147114801)
end

function Quest71148:OnSubFailed7114804(arg1)
    print("OnSubFailed7114804")
    this:CancelStoryByQuest(147114801)
end

function Quest71148:OnSubStart7114806(arg1)
    print("OnSubStart7114806")
end

function Quest71148:OnSubFinish7114806(arg1)
    print("OnSubFinish7114806")
end

return Quest71148
