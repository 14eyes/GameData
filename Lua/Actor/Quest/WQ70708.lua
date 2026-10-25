require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70708 = class("Quest70708", QuestActorProxy)
Quest70708.defaultAlias = "Quest70708"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70708:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70708:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7070801"] = self.OnSubStart7070801, ["7070802"] = self.OnSubStart7070802}
end

function Quest70708:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7070801"] = self.OnSubFinish7070801, ["7070802"] = self.OnSubFinish7070802}
end

function Quest70708:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7070801"] = self.OnSubFailed7070801, ["7070802"] = self.OnSubFailed7070802}
end

function Quest70708:Start()
    print("Start")
end

function Quest70708:OnDestroy()
    print("OnDestroy")
end

function Quest70708:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70708:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70708:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1643", 0, true)
end

function Quest70708:OnSubStart7070801(arg1)
    print("OnSubStart7070801")
    self:NotifyTo("Npc1643", 2, true)
end

function Quest70708:OnSubFinish7070801(arg1)
    print("OnSubFinish7070801")
end

function Quest70708:OnSubFailed7070801(arg1)
    print("OnSubFailed7070801")
end

function Quest70708:OnSubStart7070802(arg1)
    print("OnSubStart7070802")
    self:NotifyTo("Npc1643", 2, true)
end

function Quest70708:OnSubFinish7070802(arg1)
    print("OnSubFinish7070802")
    self:NotifyTo("Npc1643", 0, true)
end

function Quest70708:OnSubFailed7070802(arg1)
    print("OnSubFailed7070802")
end

return Quest70708
