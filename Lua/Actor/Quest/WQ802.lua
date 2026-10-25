require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest802 = class("Quest802", QuestActorProxy)
Quest802.defaultAlias = "Quest802"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest802:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest802:OnSubStartHandlerBuild()
    self.subStartHandlers = {["80201"] = self.OnSubStart80201, ["80202"] = self.OnSubStart80202}
end

function Quest802:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["80201"] = self.OnSubFinish80201, ["80202"] = self.OnSubFinish80202}
end

function Quest802:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["80201"] = self.OnSubFailed80201, ["80202"] = self.OnSubFailed80202}
end

function Quest802:Start()
    print("Start")
end

function Quest802:OnDestroy()
    print("OnDestroy")
end

function Quest802:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest802:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest802:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest802:OnSubStart80201(arg1)
    print("OnSubStart80201")
    self:CreateQuestNpc(arg1, 96, 0)
end

function Quest802:OnSubFinish80201(arg1)
    print("OnSubFinish80201")
end

function Quest802:OnSubFailed80201(arg1)
    print("OnSubFailed80201")
end

function Quest802:OnSubStart80202(arg1)
    print("OnSubStart80202")
end

function Quest802:OnSubFinish80202(arg1)
    print("OnSubFinish80202")
    self:DestroyQuestNpcActor(npcs.Npc96Data.alias, 3)
end

function Quest802:OnSubFailed80202(arg1)
    print("OnSubFailed80202")
end

return Quest802
