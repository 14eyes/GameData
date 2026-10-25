require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77126 = class("Quest77126", QuestActorProxy)
Quest77126.defaultAlias = "Quest77126"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77126:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77126:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7712601"] = self.OnSubStart7712601,
        ["7712604"] = self.OnSubStart7712604,
        ["7712605"] = self.OnSubStart7712605,
        ["7712609"] = self.OnSubStart7712609,
        ["7712607"] = self.OnSubStart7712607,
        ["7712608"] = self.OnSubStart7712608,
        ["7712610"] = self.OnSubStart7712610,
        ["7712602"] = self.OnSubStart7712602,
        ["7712603"] = self.OnSubStart7712603,
        ["7712606"] = self.OnSubStart7712606
    }
end

function Quest77126:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7712601"] = self.OnSubFinish7712601,
        ["7712604"] = self.OnSubFinish7712604,
        ["7712605"] = self.OnSubFinish7712605,
        ["7712609"] = self.OnSubFinish7712609,
        ["7712607"] = self.OnSubFinish7712607,
        ["7712608"] = self.OnSubFinish7712608,
        ["7712610"] = self.OnSubFinish7712610,
        ["7712602"] = self.OnSubFinish7712602,
        ["7712603"] = self.OnSubFinish7712603,
        ["7712606"] = self.OnSubFinish7712606
    }
end

function Quest77126:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7712605"] = self.OnSubFailed7712605,
        ["7712608"] = self.OnSubFailed7712608,
        ["7712602"] = self.OnSubFailed7712602
    }
end

function Quest77126:Start()
    print("Start")
end

function Quest77126:OnDestroy()
    print("OnDestroy")
end

function Quest77126:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77126:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77126:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77126:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77126:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77126:OnSubStart7712601(arg1)
    print("OnSubStart7712601")
    actorUtils.FinishQuestID(false, 7712601)
end

function Quest77126:OnSubFinish7712601(arg1)
    print("OnSubFinish7712601")
end

function Quest77126:OnSubStart7712604(arg1)
    print("OnSubStart7712604")
    this:CreateQuestNpc(arg1, npcs.Npc22404.id, 0, false, 0)
end

function Quest77126:OnSubFinish7712604(arg1)
    print("OnSubFinish7712604")
end

function Quest77126:OnSubStart7712605(arg1)
    print("OnSubStart7712605")
    this:CreateQuestNpc(arg1, npcs.Npc22404.id, 0, false, 0)
end

function Quest77126:OnSubFinish7712605(arg1)
    print("OnSubFinish7712605")
    this:NpcDestroyImmediately(3, npcs.Npc22404.alias)
end

function Quest77126:OnSubFailed7712605(arg1)
    print("OnSubFailed7712605")
    this:RecycleAllRes()
end

function Quest77126:OnSubStart7712609(arg1)
    print("OnSubStart7712609")
end

function Quest77126:OnSubFinish7712609(arg1)
    print("OnSubFinish7712609")
end

function Quest77126:OnSubStart7712607(arg1)
    print("OnSubStart7712607")
end

function Quest77126:OnSubFinish7712607(arg1)
    print("OnSubFinish7712607")
end

function Quest77126:OnSubStart7712608(arg1)
    print("OnSubStart7712608")
end

function Quest77126:OnSubFinish7712608(arg1)
    print("OnSubFinish7712608")
end

function Quest77126:OnSubFailed7712608(arg1)
    print("OnSubFailed7712608")
    this:RecycleAllRes()
end

function Quest77126:OnSubStart7712610(arg1)
    print("OnSubStart7712610")
end

function Quest77126:OnSubFinish7712610(arg1)
    print("OnSubFinish7712610")
end

function Quest77126:OnSubStart7712602(arg1)
    print("OnSubStart7712602")
end

function Quest77126:OnSubFinish7712602(arg1)
    print("OnSubFinish7712602")
end

function Quest77126:OnSubFailed7712602(arg1)
    print("OnSubFailed7712602")
    this:RecycleAllRes()
end

function Quest77126:OnSubStart7712603(arg1)
    print("OnSubStart7712603")
end

function Quest77126:OnSubFinish7712603(arg1)
    print("OnSubFinish7712603")
end

function Quest77126:OnSubStart7712606(arg1)
    print("OnSubStart7712606")
end

function Quest77126:OnSubFinish7712606(arg1)
    print("OnSubFinish7712606")
end

return Quest77126
