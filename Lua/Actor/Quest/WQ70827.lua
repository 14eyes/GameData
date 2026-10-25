require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70827 = class("Quest70827", QuestActorProxy)
Quest70827.defaultAlias = "Quest70827"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest70827:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest70827:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7082701"] = self.OnSubStart7082701,
        ["7082704"] = self.OnSubStart7082704,
        ["7082702"] = self.OnSubStart7082702,
        ["7082703"] = self.OnSubStart7082703,
        ["7082705"] = self.OnSubStart7082705
    }
end

function Quest70827:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7082701"] = self.OnSubFinish7082701,
        ["7082704"] = self.OnSubFinish7082704,
        ["7082702"] = self.OnSubFinish7082702,
        ["7082703"] = self.OnSubFinish7082703,
        ["7082705"] = self.OnSubFinish7082705
    }
end

function Quest70827:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70827:Start()
    print("Start")
end

function Quest70827:OnDestroy()
    print("OnDestroy")
end

function Quest70827:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70827:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70827:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70827:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest70827:OnSubStart7082701(arg1)
    print("OnSubStart7082701")
end

function Quest70827:OnSubFinish7082701(arg1)
    print("OnSubFinish7082701")
end

function Quest70827:OnSubStart7082704(arg1)
    print("OnSubStart7082704")
end

function Quest70827:OnSubFinish7082704(arg1)
    print("OnSubFinish7082704")
end

function Quest70827:OnSubStart7082702(arg1)
    print("OnSubStart7082702")
end

function Quest70827:OnSubFinish7082702(arg1)
    print("OnSubFinish7082702")
    this:QuestNarratorTask(datas.NarratorWithId_7082799, nil)
end

function Quest70827:OnSubStart7082703(arg1)
    print("OnSubStart7082703")
end

function Quest70827:OnSubFinish7082703(arg1)
    print("OnSubFinish7082703")
end

function Quest70827:OnSubStart7082705(arg1)
    print("OnSubStart7082705")
end

function Quest70827:OnSubFinish7082705(arg1)
    print("OnSubFinish7082705")
end

return Quest70827
