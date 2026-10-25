require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79011 = class("Quest79011", QuestActorProxy)
Quest79011.defaultAlias = "Quest79011"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79011:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79011:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7901101"] = self.OnSubStart7901101}
end

function Quest79011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7901101"] = self.OnSubFinish7901101}
end

function Quest79011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7901101"] = self.OnSubFailed7901101}
end

function Quest79011:Start()
    print("Start")
end

function Quest79011:OnDestroy()
    print("OnDestroy")
end

function Quest79011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79011:OnSubStart7901101(arg1)
    print("OnSubStart7901101")
end

function Quest79011:OnSubFinish7901101(arg1)
    print("OnSubFinish7901101")
    self:ShowTutorialDialog(821)
end

function Quest79011:OnSubFailed7901101(arg1)
    print("OnSubFailed7901101")
end

return Quest79011
