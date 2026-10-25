require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40121 = class("Quest40121", QuestActorProxy)
Quest40121.defaultAlias = "Quest40121"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest40121:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest40121:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4012101"] = self.OnSubStart4012101,
        ["4012102"] = self.OnSubStart4012102,
        ["4012103"] = self.OnSubStart4012103,
        ["4012104"] = self.OnSubStart4012104
    }
end

function Quest40121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4012101"] = self.OnSubFinish4012101,
        ["4012102"] = self.OnSubFinish4012102,
        ["4012103"] = self.OnSubFinish4012103,
        ["4012104"] = self.OnSubFinish4012104
    }
end

function Quest40121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40121:Start()
    print("Start")
end

function Quest40121:OnDestroy()
    print("OnDestroy")
end

function Quest40121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40121:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40121:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30375Data.alias, 3)
end

function Quest40121:OnSubStart4012101(arg1)
    print("OnSubStart4012101")
    this:CreateQuestNpc(arg1, npcs.Npc30375Data.id, 1)
end

function Quest40121:OnSubFinish4012101(arg1)
    print("OnSubFinish4012101")
end

function Quest40121:OnSubStart4012102(arg1)
    print("OnSubStart4012102")
end

function Quest40121:OnSubFinish4012102(arg1)
    print("OnSubFinish4012102")
end

function Quest40121:OnSubStart4012103(arg1)
    print("OnSubStart4012103")
end

function Quest40121:OnSubFinish4012103(arg1)
    print("OnSubFinish4012103")
end

function Quest40121:OnSubStart4012104(arg1)
    print("OnSubStart4012104")
end

function Quest40121:OnSubFinish4012104(arg1)
    print("OnSubFinish4012104")
    this:SafeDestroyQuestNpc(npcs.Npc30375Data.alias, 3)
end

return Quest40121
