require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70526 = class("Quest70526", QuestActorProxy)
Quest70526.defaultAlias = "Quest70526"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70526:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70526:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7052601"] = self.OnSubStart7052601,
        ["7052602"] = self.OnSubStart7052602,
        ["7052603"] = self.OnSubStart7052603,
        ["7052606"] = self.OnSubStart7052606,
        ["7052604"] = self.OnSubStart7052604,
        ["7052607"] = self.OnSubStart7052607,
        ["7052605"] = self.OnSubStart7052605
    }
end

function Quest70526:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7052601"] = self.OnSubFinish7052601,
        ["7052602"] = self.OnSubFinish7052602,
        ["7052603"] = self.OnSubFinish7052603,
        ["7052606"] = self.OnSubFinish7052606,
        ["7052604"] = self.OnSubFinish7052604,
        ["7052607"] = self.OnSubFinish7052607,
        ["7052605"] = self.OnSubFinish7052605
    }
end

function Quest70526:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70526:Start()
    print("Start")
end

function Quest70526:OnDestroy()
    print("OnDestroy")
end

function Quest70526:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70526:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70526:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70526:OnSubStart7052601(arg1)
    print("OnSubStart7052601")
    self:CreateQuestNpc(arg1, npcs.Npc1713Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1712Data.id, 0)
end

function Quest70526:OnSubFinish7052601(arg1)
    print("OnSubFinish7052601")
end

function Quest70526:OnSubStart7052602(arg1)
    print("OnSubStart7052602")
end

function Quest70526:OnSubFinish7052602(arg1)
    print("OnSubFinish7052602")
end

function Quest70526:OnSubStart7052603(arg1)
    print("OnSubStart7052603")
end

function Quest70526:OnSubFinish7052603(arg1)
    print("OnSubFinish7052603")
end

function Quest70526:OnSubStart7052606(arg1)
    print("OnSubStart7052606")
end

function Quest70526:OnSubFinish7052606(arg1)
    print("OnSubFinish7052606")
end

function Quest70526:OnSubStart7052604(arg1)
    print("OnSubStart7052604")
end

function Quest70526:OnSubFinish7052604(arg1)
    print("OnSubFinish7052604")
end

function Quest70526:OnSubStart7052607(arg1)
    print("OnSubStart7052607")
end

function Quest70526:OnSubFinish7052607(arg1)
    print("OnSubFinish7052607")
end

function Quest70526:OnSubStart7052605(arg1)
    print("OnSubStart7052605")
end

function Quest70526:OnSubFinish7052605(arg1)
    print("OnSubFinish7052605")
    self:DestroyQuestNpcActor(npcs.Npc1713Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1712Data.alias, 3)
end

return Quest70526
