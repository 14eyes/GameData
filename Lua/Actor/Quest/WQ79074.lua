require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79074 = class("Quest79074", QuestActorProxy)
Quest79074.defaultAlias = "Quest79074"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest79074:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest79074:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7907401"] = self.OnSubStart7907401}
end

function Quest79074:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7907401"] = self.OnSubFinish7907401}
end

function Quest79074:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7907401"] = self.OnSubFailed7907401}
end

function Quest79074:Start()
    print("Start")
end

function Quest79074:OnDestroy()
    print("OnDestroy")
end

function Quest79074:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79074:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79074:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30605.alias, 100)
end

function Quest79074:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end, nil, nil, "", false, true)
end

function Quest79074:OnSubStart7907401(arg1)
    print("OnSubStart7907401")
    this:CreateQuestNpc(arg1, npcs.Npc30605.id, 0, false, 0)
end

function Quest79074:OnSubFinish7907401(arg1)
    print("OnSubFinish7907401")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorUtils.ShowContext("FairyTalesCurrentPage", 0)
    end, nil, nil, 0, false, true)
end

function Quest79074:OnSubFailed7907401(arg1)
    print("OnSubFailed7907401")
end

return Quest79074
