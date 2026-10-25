require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74069 = class("Quest74069", QuestActorProxy)
Quest74069.defaultAlias = "Quest74069"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest74069:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest74069:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7406902"] = self.OnSubStart7406902, ["7406901"] = self.OnSubStart7406901}
end

function Quest74069:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7406902"] = self.OnSubFinish7406902, ["7406901"] = self.OnSubFinish7406901}
end

function Quest74069:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74069:Start()
    print("Start")
end

function Quest74069:OnDestroy()
    print("OnDestroy")
end

function Quest74069:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74069:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74069:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74069:OnSubStart7406902(arg1)
    print("OnSubStart7406902")
    actorUtils.FinishQuestID(false, 7406902)
end

function Quest74069:OnSubFinish7406902(arg1)
    print("OnSubFinish7406902")
end

function Quest74069:OnSubStart7406901(arg1)
    print("OnSubStart7406901")
end

function Quest74069:OnSubFinish7406901(arg1)
    print("OnSubFinish7406901")
end

return Quest74069
