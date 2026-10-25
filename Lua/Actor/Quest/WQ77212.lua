require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77212 = class("Quest77212", QuestActorProxy)
Quest77212.defaultAlias = "Quest77212"
local clientData
local this
local mainID
local actorAlias

function Quest77212:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77212:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7721201"] = self.OnSubStart7721201,
        ["7721206"] = self.OnSubStart7721206,
        ["7721202"] = self.OnSubStart7721202,
        ["7721203"] = self.OnSubStart7721203,
        ["7721204"] = self.OnSubStart7721204,
        ["7721205"] = self.OnSubStart7721205
    }
end

function Quest77212:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7721201"] = self.OnSubFinish7721201,
        ["7721206"] = self.OnSubFinish7721206,
        ["7721202"] = self.OnSubFinish7721202,
        ["7721203"] = self.OnSubFinish7721203,
        ["7721204"] = self.OnSubFinish7721204,
        ["7721205"] = self.OnSubFinish7721205
    }
end

function Quest77212:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77212:Start()
    print("Start")
end

function Quest77212:OnDestroy()
    print("OnDestroy")
end

function Quest77212:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77212:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77212:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77212:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77212:OnSubStart7721201(arg1)
    print("OnSubStart7721201")
    actorUtils.FinishQuestWithParam({false}, {7721201})
end

function Quest77212:OnSubFinish7721201(arg1)
    print("OnSubFinish7721201")
end

function Quest77212:OnSubStart7721206(arg1)
    print("OnSubStart7721206")
end

function Quest77212:OnSubFinish7721206(arg1)
    print("OnSubFinish7721206")
end

function Quest77212:OnSubStart7721202(arg1)
    print("OnSubStart7721202")
    this:DeployStoryByQuest(147721200)
end

function Quest77212:OnSubFinish7721202(arg1)
    print("OnSubFinish7721202")
    this:CancelStoryByQuest(147721200)
end

function Quest77212:OnSubStart7721203(arg1)
    print("OnSubStart7721203")
end

function Quest77212:OnSubFinish7721203(arg1)
    print("OnSubFinish7721203")
end

function Quest77212:OnSubStart7721204(arg1)
    print("OnSubStart7721204")
    this:DeployStoryByQuest(147721203)
end

function Quest77212:OnSubFinish7721204(arg1)
    print("OnSubFinish7721204")
    this:CancelStoryByQuest(147721203)
end

function Quest77212:OnSubStart7721205(arg1)
    print("OnSubStart7721205")
end

function Quest77212:OnSubFinish7721205(arg1)
    print("OnSubFinish7721205")
end

return Quest77212
