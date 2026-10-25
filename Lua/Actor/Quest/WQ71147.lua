require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71147 = class("Quest71147", QuestActorProxy)
Quest71147.defaultAlias = "Quest71147"
local clientData
local this
local mainID
local actorAlias

function Quest71147:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71147:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7114701"] = self.OnSubStart7114701,
        ["7114703"] = self.OnSubStart7114703,
        ["7114702"] = self.OnSubStart7114702,
        ["7114705"] = self.OnSubStart7114705,
        ["7114704"] = self.OnSubStart7114704,
        ["7114706"] = self.OnSubStart7114706
    }
end

function Quest71147:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7114701"] = self.OnSubFinish7114701,
        ["7114703"] = self.OnSubFinish7114703,
        ["7114702"] = self.OnSubFinish7114702,
        ["7114705"] = self.OnSubFinish7114705,
        ["7114704"] = self.OnSubFinish7114704,
        ["7114706"] = self.OnSubFinish7114706
    }
end

function Quest71147:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7114704"] = self.OnSubFailed7114704}
end

function Quest71147:Start()
    print("Start")
end

function Quest71147:OnDestroy()
    print("OnDestroy")
end

function Quest71147:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71147:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71147:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71147:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71147:OnSubStart7114701(arg1)
    print("OnSubStart7114701")
end

function Quest71147:OnSubFinish7114701(arg1)
    print("OnSubFinish7114701")
end

function Quest71147:OnSubStart7114703(arg1)
    print("OnSubStart7114703")
end

function Quest71147:OnSubFinish7114703(arg1)
    print("OnSubFinish7114703")
end

function Quest71147:OnSubStart7114702(arg1)
    print("OnSubStart7114702")
end

function Quest71147:OnSubFinish7114702(arg1)
    print("OnSubFinish7114702")
end

function Quest71147:OnSubStart7114705(arg1)
    print("OnSubStart7114705")
end

function Quest71147:OnSubFinish7114705(arg1)
    print("OnSubFinish7114705")
end

function Quest71147:OnSubStart7114704(arg1)
    print("OnSubStart7114704")
    this:DeployStoryByQuest(147114701)
end

function Quest71147:OnSubFinish7114704(arg1)
    print("OnSubFinish7114704")
    this:CancelStoryByQuest(147114701)
end

function Quest71147:OnSubFailed7114704(arg1)
    print("OnSubFailed7114704")
    this:CancelStoryByQuest(147114701)
end

function Quest71147:OnSubStart7114706(arg1)
    print("OnSubStart7114706")
end

function Quest71147:OnSubFinish7114706(arg1)
    print("OnSubFinish7114706")
end

return Quest71147
