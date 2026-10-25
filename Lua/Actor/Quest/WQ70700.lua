require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70700 = class("Quest70700", QuestActorProxy)
Quest70700.defaultAlias = "Quest70700"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70700:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70700:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7070001"] = self.OnSubStart7070001, ["7070002"] = self.OnSubStart7070002}
end

function Quest70700:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7070001"] = self.OnSubFinish7070001, ["7070002"] = self.OnSubFinish7070002}
end

function Quest70700:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7070001"] = self.OnSubFailed7070001, ["7070002"] = self.OnSubFailed7070002}
end

function Quest70700:Start()
    print("Start")
end

function Quest70700:OnDestroy()
    print("OnDestroy")
end

function Quest70700:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70700:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70700:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1644", 0, true)
end

function Quest70700:OnSubStart7070001(arg1)
    print("OnSubStart7070001")
    self:NotifyTo("Npc1644", 2, true)
end

function Quest70700:OnSubFinish7070001(arg1)
    print("OnSubFinish7070001")
end

function Quest70700:OnSubFailed7070001(arg1)
    print("OnSubFailed7070001")
end

function Quest70700:OnSubStart7070002(arg1)
    print("OnSubStart7070002")
    self:NotifyTo("Npc1644", 2, true)
end

function Quest70700:OnSubFinish7070002(arg1)
    print("OnSubFinish7070002")
    self:NotifyTo("Npc1644", 0, true)
end

function Quest70700:OnSubFailed7070002(arg1)
    print("OnSubFailed7070002")
end

return Quest70700
