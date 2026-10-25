require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70686 = class("Quest70686", QuestActorProxy)
Quest70686.defaultAlias = "Quest70686"
local clientData
local this
local mainID
local actorAlias

function Quest70686:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70686:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7068601"] = self.OnSubStart7068601, ["7068602"] = self.OnSubStart7068602}
end

function Quest70686:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7068601"] = self.OnSubFinish7068601, ["7068602"] = self.OnSubFinish7068602}
end

function Quest70686:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70686:Start()
    print("Start")
end

function Quest70686:OnDestroy()
    print("OnDestroy")
end

function Quest70686:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70686:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70686:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70686:OnSubStart7068601(arg1)
    print("OnSubStart7068601")
    actorUtils.FinishQuestID(false, 7068601)
end

function Quest70686:OnSubFinish7068601(arg1)
    print("OnSubFinish7068601")
end

function Quest70686:OnSubStart7068602(arg1)
    print("OnSubStart7068602")
    actorUtils.FinishQuestID(false, 7068602)
end

function Quest70686:OnSubFinish7068602(arg1)
    print("OnSubFinish7068602")
end

return Quest70686
