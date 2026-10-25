require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76075 = class("Quest76075", QuestActorProxy)
Quest76075.defaultAlias = "Quest76075"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76075:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76075:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7607501"] = self.OnSubStart7607501,
        ["7607502"] = self.OnSubStart7607502,
        ["7607503"] = self.OnSubStart7607503,
        ["7607504"] = self.OnSubStart7607504
    }
end

function Quest76075:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7607501"] = self.OnSubFinish7607501,
        ["7607502"] = self.OnSubFinish7607502,
        ["7607503"] = self.OnSubFinish7607503,
        ["7607504"] = self.OnSubFinish7607504
    }
end

function Quest76075:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76075:Start()
    print("Start")
end

function Quest76075:OnDestroy()
    print("OnDestroy")
end

function Quest76075:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76075:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76075:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76075:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76075:OnSubStart7607501(arg1)
    print("OnSubStart7607501")
end

function Quest76075:OnSubFinish7607501(arg1)
    print("OnSubFinish7607501")
end

function Quest76075:OnSubStart7607502(arg1)
    print("OnSubStart7607502")
    this:CreateQuestNpc(arg1, npcs.Npc22298.id, 0, false, 0)
end

function Quest76075:OnSubFinish7607502(arg1)
    print("OnSubFinish7607502")
    this:SafeDestroyQuestNpc(npcs.Npc22298.alias, 3)
end

function Quest76075:OnSubStart7607503(arg1)
    print("OnSubStart7607503")
end

function Quest76075:OnSubFinish7607503(arg1)
    print("OnSubFinish7607503")
end

function Quest76075:OnSubStart7607504(arg1)
    print("OnSubStart7607504")
    this:CreateQuestNpc(arg1, npcs.Npc22298.id, 0, false, 0)
end

function Quest76075:OnSubFinish7607504(arg1)
    print("OnSubFinish7607504")
    this:SafeDestroyQuestNpc(npcs.Npc22298.alias, 3)
end

return Quest76075
