require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75158 = class("Quest75158", QuestActorProxy)
Quest75158.defaultAlias = "Quest75158"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75158:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75158:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7515801"] = self.OnSubStart7515801,
        ["7515802"] = self.OnSubStart7515802,
        ["7515803"] = self.OnSubStart7515803,
        ["7515804"] = self.OnSubStart7515804,
        ["7515805"] = self.OnSubStart7515805,
        ["7515806"] = self.OnSubStart7515806
    }
end

function Quest75158:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7515801"] = self.OnSubFinish7515801,
        ["7515802"] = self.OnSubFinish7515802,
        ["7515803"] = self.OnSubFinish7515803,
        ["7515804"] = self.OnSubFinish7515804,
        ["7515805"] = self.OnSubFinish7515805,
        ["7515806"] = self.OnSubFinish7515806
    }
end

function Quest75158:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75158:Start()
    print("Start")
end

function Quest75158:OnDestroy()
    print("OnDestroy")
end

function Quest75158:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75158:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75158:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75158:OnSubStart7515801(arg1)
    print("OnSubStart7515801")
    this:CreateQuestNpc(arg1, npcs.Npc6332Data.id, 0, false, 0)
end

function Quest75158:OnSubFinish7515801(arg1)
    print("OnSubFinish7515801")
end

function Quest75158:OnSubStart7515802(arg1)
    print("OnSubStart7515802")
    this:CreateQuestNpcWithTrigger("Q75158Trigger", 7515802, npcs.Npc6332Data.id, 0, 10, 2)
end

function Quest75158:OnSubFinish7515802(arg1)
    print("OnSubFinish7515802")
end

function Quest75158:OnSubStart7515803(arg1)
    print("OnSubStart7515803")
end

function Quest75158:OnSubFinish7515803(arg1)
    print("OnSubFinish7515803")
end

function Quest75158:OnSubStart7515804(arg1)
    print("OnSubStart7515804")
end

function Quest75158:OnSubFinish7515804(arg1)
    print("OnSubFinish7515804")
end

function Quest75158:OnSubStart7515805(arg1)
    print("OnSubStart7515805")
end

function Quest75158:OnSubFinish7515805(arg1)
    print("OnSubFinish7515805")
end

function Quest75158:OnSubStart7515806(arg1)
    print("OnSubStart7515806")
end

function Quest75158:OnSubFinish7515806(arg1)
    print("OnSubFinish7515806")
    this:CreateQuestNpcWithTrigger("Q75158Trigger", 7515806, npcs.Npc6332Data.id, 0, 80, 2)
    this:SafeDestroyQuestNpc(npcs.Npc6332Data.alias, 3)
end

return Quest75158
