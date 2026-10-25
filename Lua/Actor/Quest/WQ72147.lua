require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72147 = class("Quest72147", QuestActorProxy)
Quest72147.defaultAlias = "Quest72147"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72147:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72147:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7214701"] = self.OnSubStart7214701,
        ["7214702"] = self.OnSubStart7214702,
        ["7214703"] = self.OnSubStart7214703,
        ["7214704"] = self.OnSubStart7214704
    }
end

function Quest72147:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7214701"] = self.OnSubFinish7214701,
        ["7214702"] = self.OnSubFinish7214702,
        ["7214703"] = self.OnSubFinish7214703,
        ["7214704"] = self.OnSubFinish7214704
    }
end

function Quest72147:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7214701"] = self.OnSubFailed7214701,
        ["7214702"] = self.OnSubFailed7214702,
        ["7214703"] = self.OnSubFailed7214703,
        ["7214704"] = self.OnSubFailed7214704
    }
end

function Quest72147:Start()
    print("Start")
end

function Quest72147:OnDestroy()
    print("OnDestroy")
end

function Quest72147:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72147:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72147:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72147:OnSubStart7214701(arg1)
    print("OnSubStart7214701")
end

function Quest72147:OnSubFinish7214701(arg1)
    print("OnSubFinish7214701")
end

function Quest72147:OnSubFailed7214701(arg1)
    print("OnSubFailed7214701")
end

function Quest72147:OnSubStart7214702(arg1)
    print("OnSubStart7214702")
end

function Quest72147:OnSubFinish7214702(arg1)
    print("OnSubFinish7214702")
end

function Quest72147:OnSubFailed7214702(arg1)
    print("OnSubFailed7214702")
end

function Quest72147:OnSubStart7214703(arg1)
    print("OnSubStart7214703")
end

function Quest72147:OnSubFinish7214703(arg1)
    print("OnSubFinish7214703")
end

function Quest72147:OnSubFailed7214703(arg1)
    print("OnSubFailed7214703")
end

function Quest72147:OnSubStart7214704(arg1)
    print("OnSubStart7214704")
end

function Quest72147:OnSubFinish7214704(arg1)
    print("OnSubFinish7214704")
end

function Quest72147:OnSubFailed7214704(arg1)
    print("OnSubFailed7214704")
end

return Quest72147
