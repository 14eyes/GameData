require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76073 = class("Quest76073", QuestActorProxy)
Quest76073.defaultAlias = "Quest76073"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76073:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76073:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7607301"] = self.OnSubStart7607301,
        ["7607302"] = self.OnSubStart7607302,
        ["7607303"] = self.OnSubStart7607303
    }
end

function Quest76073:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7607301"] = self.OnSubFinish7607301,
        ["7607302"] = self.OnSubFinish7607302,
        ["7607303"] = self.OnSubFinish7607303
    }
end

function Quest76073:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76073:Start()
    print("Start")
end

function Quest76073:OnDestroy()
    print("OnDestroy")
end

function Quest76073:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76073:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76073:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76073:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76073:OnSubStart7607301(arg1)
    print("OnSubStart7607301")
    this:CreateQuestNpc(arg1, npcs.Npc21882.id, 0, false, 0)
end

function Quest76073:OnSubFinish7607301(arg1)
    print("OnSubFinish7607301")
    this:SafeDestroyQuestNpc(npcs.Npc21882.alias, 3)
end

function Quest76073:OnSubStart7607302(arg1)
    print("OnSubStart7607302")
    this:GetQuestNpcActor(npcs.Npc21882.alias, 76073):SitOnChair(8010, true)
end

function Quest76073:OnSubFinish7607302(arg1)
    print("OnSubFinish7607302")
end

function Quest76073:OnSubStart7607303(arg1)
    print("OnSubStart7607303")
end

function Quest76073:OnSubFinish7607303(arg1)
    print("OnSubFinish7607303")
end

return Quest76073
