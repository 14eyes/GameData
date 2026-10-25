require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71142 = class("Quest71142", QuestActorProxy)
Quest71142.defaultAlias = "Quest71142"
local clientData
local this
local mainID
local actorAlias

function Quest71142:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71142:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7114201"] = self.OnSubStart7114201,
        ["7114203"] = self.OnSubStart7114203,
        ["7114202"] = self.OnSubStart7114202,
        ["7114205"] = self.OnSubStart7114205,
        ["7114204"] = self.OnSubStart7114204,
        ["7114206"] = self.OnSubStart7114206
    }
end

function Quest71142:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7114201"] = self.OnSubFinish7114201,
        ["7114203"] = self.OnSubFinish7114203,
        ["7114202"] = self.OnSubFinish7114202,
        ["7114205"] = self.OnSubFinish7114205,
        ["7114204"] = self.OnSubFinish7114204,
        ["7114206"] = self.OnSubFinish7114206
    }
end

function Quest71142:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7114204"] = self.OnSubFailed7114204}
end

function Quest71142:Start()
    print("Start")
end

function Quest71142:OnDestroy()
    print("OnDestroy")
end

function Quest71142:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71142:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71142:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71142:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71142:OnSubStart7114201(arg1)
    print("OnSubStart7114201")
end

function Quest71142:OnSubFinish7114201(arg1)
    print("OnSubFinish7114201")
end

function Quest71142:OnSubStart7114203(arg1)
    print("OnSubStart7114203")
end

function Quest71142:OnSubFinish7114203(arg1)
    print("OnSubFinish7114203")
end

function Quest71142:OnSubStart7114202(arg1)
    print("OnSubStart7114202")
end

function Quest71142:OnSubFinish7114202(arg1)
    print("OnSubFinish7114202")
end

function Quest71142:OnSubStart7114205(arg1)
    print("OnSubStart7114205")
end

function Quest71142:OnSubFinish7114205(arg1)
    print("OnSubFinish7114205")
end

function Quest71142:OnSubStart7114204(arg1)
    print("OnSubStart7114204")
    this:DeployStoryByQuest(147114201)
end

function Quest71142:OnSubFinish7114204(arg1)
    print("OnSubFinish7114204")
    this:CancelStoryByQuest(147114201)
end

function Quest71142:OnSubFailed7114204(arg1)
    print("OnSubFailed7114204")
    this:CancelStoryByQuest(147114201)
end

function Quest71142:OnSubStart7114206(arg1)
    print("OnSubStart7114206")
end

function Quest71142:OnSubFinish7114206(arg1)
    print("OnSubFinish7114206")
end

return Quest71142
