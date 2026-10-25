require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest603 = class("Quest603", QuestActorProxy)
Quest603.defaultAlias = "Quest603"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest603:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest603:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["60301"] = self.OnSubStart60301,
        ["60303"] = self.OnSubStart60303,
        ["60302"] = self.OnSubStart60302
    }
end

function Quest603:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["60301"] = self.OnSubFinish60301,
        ["60303"] = self.OnSubFinish60303,
        ["60302"] = self.OnSubFinish60302
    }
end

function Quest603:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest603:Start()
    print("Start")
end

function Quest603:OnDestroy()
    print("OnDestroy")
end

function Quest603:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest603:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest603:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest603:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest603:OnSubStart60301(arg1)
    print("OnSubStart60301")
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
end

function Quest603:OnSubFinish60301(arg1)
    print("OnSubFinish60301")
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 3)
end

function Quest603:OnSubStart60303(arg1)
    print("OnSubStart60303")
end

function Quest603:OnSubFinish60303(arg1)
    print("OnSubFinish60303")
end

function Quest603:OnSubStart60302(arg1)
    print("OnSubStart60302")
    this:CreateQuestNpc(arg1, npcs.Wendy.id, 0, false, 0)
end

function Quest603:OnSubFinish60302(arg1)
    print("OnSubFinish60302")
end

return Quest603
