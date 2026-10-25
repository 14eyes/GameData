require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74105 = class("Quest74105", QuestActorProxy)
Quest74105.defaultAlias = "Quest74105"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74105:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74105:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7410501"] = self.OnSubStart7410501,
        ["7410502"] = self.OnSubStart7410502,
        ["7410503"] = self.OnSubStart7410503,
        ["7410504"] = self.OnSubStart7410504,
        ["7410505"] = self.OnSubStart7410505,
        ["7410506"] = self.OnSubStart7410506,
        ["7410507"] = self.OnSubStart7410507
    }
end

function Quest74105:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7410501"] = self.OnSubFinish7410501,
        ["7410502"] = self.OnSubFinish7410502,
        ["7410503"] = self.OnSubFinish7410503,
        ["7410504"] = self.OnSubFinish7410504,
        ["7410505"] = self.OnSubFinish7410505,
        ["7410506"] = self.OnSubFinish7410506,
        ["7410507"] = self.OnSubFinish7410507
    }
end

function Quest74105:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74105:Start()
    print("Start")
end

function Quest74105:OnDestroy()
    print("OnDestroy")
end

function Quest74105:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74105:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74105:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74105:OnSubStart7410501(arg1)
    print("OnSubStart7410501")
end

function Quest74105:OnSubFinish7410501(arg1)
    print("OnSubFinish7410501")
end

function Quest74105:OnSubStart7410502(arg1)
    print("OnSubStart7410502")
    actorUtils.FinishQuestID(false, 7410502)
end

function Quest74105:OnSubFinish7410502(arg1)
    print("OnSubFinish7410502")
end

function Quest74105:OnSubStart7410503(arg1)
    print("OnSubStart7410503")
    actorUtils.FinishQuestID(false, 7410503)
end

function Quest74105:OnSubFinish7410503(arg1)
    print("OnSubFinish7410503")
end

function Quest74105:OnSubStart7410504(arg1)
    print("OnSubStart7410504")
    actorUtils.FinishQuestID(false, 7410504)
end

function Quest74105:OnSubFinish7410504(arg1)
    print("OnSubFinish7410504")
end

function Quest74105:OnSubStart7410505(arg1)
    print("OnSubStart7410505")
    actorUtils.FinishQuestID(false, 7410505)
end

function Quest74105:OnSubFinish7410505(arg1)
    print("OnSubFinish7410505")
end

function Quest74105:OnSubStart7410506(arg1)
    print("OnSubStart7410506")
    actorUtils.FinishQuestID(false, 7410506)
end

function Quest74105:OnSubFinish7410506(arg1)
    print("OnSubFinish7410506")
end

function Quest74105:OnSubStart7410507(arg1)
    print("OnSubStart7410507")
end

function Quest74105:OnSubFinish7410507(arg1)
    print("OnSubFinish7410507")
end

return Quest74105
