require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77017 = class("Quest77017", QuestActorProxy)
Quest77017.defaultAlias = "Quest77017"
local clientData
local this
local mainID
local actorAlias

function Quest77017:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7701701"] = self.OnSubStart7701701,
        ["7701702"] = self.OnSubStart7701702,
        ["7701703"] = self.OnSubStart7701703,
        ["7701704"] = self.OnSubStart7701704,
        ["7701705"] = self.OnSubStart7701705,
        ["7701706"] = self.OnSubStart7701706,
        ["7701750"] = self.OnSubStart7701750,
        ["7701752"] = self.OnSubStart7701752
    }
end

function Quest77017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7701701"] = self.OnSubFinish7701701,
        ["7701702"] = self.OnSubFinish7701702,
        ["7701703"] = self.OnSubFinish7701703,
        ["7701704"] = self.OnSubFinish7701704,
        ["7701705"] = self.OnSubFinish7701705,
        ["7701706"] = self.OnSubFinish7701706,
        ["7701750"] = self.OnSubFinish7701750,
        ["7701752"] = self.OnSubFinish7701752
    }
end

function Quest77017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77017:Start()
    print("Start")
end

function Quest77017:OnDestroy()
    print("OnDestroy")
end

function Quest77017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77017:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77017:OnSubStart7701701(arg1)
    print("OnSubStart7701701")
    actorUtils.FinishQuestWithParam({false}, {7701701})
end

function Quest77017:OnSubFinish7701701(arg1)
    print("OnSubFinish7701701")
end

function Quest77017:OnSubStart7701702(arg1)
    print("OnSubStart7701702")
end

function Quest77017:OnSubFinish7701702(arg1)
    print("OnSubFinish7701702")
end

function Quest77017:OnSubStart7701703(arg1)
    print("OnSubStart7701703")
end

function Quest77017:OnSubFinish7701703(arg1)
    print("OnSubFinish7701703")
end

function Quest77017:OnSubStart7701704(arg1)
    print("OnSubStart7701704")
end

function Quest77017:OnSubFinish7701704(arg1)
    print("OnSubFinish7701704")
end

function Quest77017:OnSubStart7701705(arg1)
    print("OnSubStart7701705")
end

function Quest77017:OnSubFinish7701705(arg1)
    print("OnSubFinish7701705")
end

function Quest77017:OnSubStart7701706(arg1)
    print("OnSubStart7701706")
end

function Quest77017:OnSubFinish7701706(arg1)
    print("OnSubFinish7701706")
end

function Quest77017:OnSubStart7701750(arg1)
    print("OnSubStart7701750")
end

function Quest77017:OnSubFinish7701750(arg1)
    print("OnSubFinish7701750")
end

function Quest77017:OnSubStart7701752(arg1)
    print("OnSubStart7701752")
end

function Quest77017:OnSubFinish7701752(arg1)
    print("OnSubFinish7701752")
end

return Quest77017
