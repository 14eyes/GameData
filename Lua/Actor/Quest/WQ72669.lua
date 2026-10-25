require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72669 = class("Quest72669", QuestActorProxy)
Quest72669.defaultAlias = "Quest72669"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72669:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72669:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7266901"] = self.OnSubStart7266901, ["7266902"] = self.OnSubStart7266902}
end

function Quest72669:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7266901"] = self.OnSubFinish7266901, ["7266902"] = self.OnSubFinish7266902}
end

function Quest72669:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7266901"] = self.OnSubFailed7266901, ["7266902"] = self.OnSubFailed7266902}
end

function Quest72669:Start()
    print("Start")
end

function Quest72669:OnDestroy()
    print("OnDestroy")
end

function Quest72669:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72669:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72669:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72669:OnSubStart7266901(arg1)
    print("OnSubStart7266901")
end

function Quest72669:OnSubFinish7266901(arg1)
    print("OnSubFinish7266901")
end

function Quest72669:OnSubFailed7266901(arg1)
    print("OnSubFailed7266901")
end

function Quest72669:OnSubStart7266902(arg1)
    print("OnSubStart7266902")
end

function Quest72669:OnSubFinish7266902(arg1)
    print("OnSubFinish7266902")
end

function Quest72669:OnSubFailed7266902(arg1)
    print("OnSubFailed7266902")
end

return Quest72669
