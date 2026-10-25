require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71032 = class("Quest71032", QuestActorProxy)
Quest71032.defaultAlias = "Quest71032"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71032:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71032:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7103201"] = self.OnSubStart7103201, ["7103202"] = self.OnSubStart7103202}
end

function Quest71032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7103201"] = self.OnSubFinish7103201, ["7103202"] = self.OnSubFinish7103202}
end

function Quest71032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7103201"] = self.OnSubFailed7103201, ["7103202"] = self.OnSubFailed7103202}
end

function Quest71032:Start()
    print("Start")
end

function Quest71032:OnDestroy()
    print("OnDestroy")
end

function Quest71032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71032:OnSubStart7103201(arg1)
    print("OnSubStart7103201")
end

function Quest71032:OnSubFinish7103201(arg1)
    print("OnSubFinish7103201")
end

function Quest71032:OnSubFailed7103201(arg1)
    print("OnSubFailed7103201")
end

function Quest71032:OnSubStart7103202(arg1)
    print("OnSubStart7103202")
end

function Quest71032:OnSubFinish7103202(arg1)
    print("OnSubFinish7103202")
end

function Quest71032:OnSubFailed7103202(arg1)
    print("OnSubFailed7103202")
end

return Quest71032
