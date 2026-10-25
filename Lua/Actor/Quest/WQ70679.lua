require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70679 = class("Quest70679", QuestActorProxy)
Quest70679.defaultAlias = "Quest70679"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70679:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70679:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7067901"] = self.OnSubStart7067901}
end

function Quest70679:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7067901"] = self.OnSubFinish7067901}
end

function Quest70679:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70679:Start()
    print("Start")
end

function Quest70679:OnDestroy()
    print("OnDestroy")
end

function Quest70679:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70679:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70679:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70679:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 706790101 then
        this:ShowTutorialDialog(1746)
    elseif arg1 == 706790102 then
        actorUtils.FinishQuestID(false, 7067901)
    end
end

function Quest70679:OnSubStart7067901(arg1)
    print("OnSubStart7067901")
end

function Quest70679:OnSubFinish7067901(arg1)
    print("OnSubFinish7067901")
end

return Quest70679
