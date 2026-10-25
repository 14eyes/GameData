require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73215 = class("Quest73215", QuestActorProxy)
Quest73215.defaultAlias = "Quest73215"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73215:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73215:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7321501"] = self.OnSubStart7321501,
        ["7321502"] = self.OnSubStart7321502,
        ["7321503"] = self.OnSubStart7321503,
        ["7321504"] = self.OnSubStart7321504,
        ["7321505"] = self.OnSubStart7321505
    }
end

function Quest73215:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7321501"] = self.OnSubFinish7321501,
        ["7321502"] = self.OnSubFinish7321502,
        ["7321503"] = self.OnSubFinish7321503,
        ["7321504"] = self.OnSubFinish7321504,
        ["7321505"] = self.OnSubFinish7321505
    }
end

function Quest73215:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73215:Start()
    print("Start")
end

function Quest73215:OnDestroy()
    print("OnDestroy")
end

function Quest73215:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73215:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73215:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73215:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73215:OnSubStart7321501(arg1)
    print("OnSubStart7321501")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20576Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 3)
end

function Quest73215:OnSubFinish7321501(arg1)
    print("OnSubFinish7321501")
end

function Quest73215:OnSubStart7321502(arg1)
    print("OnSubStart7321502")
end

function Quest73215:OnSubFinish7321502(arg1)
    print("OnSubFinish7321502")
end

function Quest73215:OnSubStart7321503(arg1)
    print("OnSubStart7321503")
end

function Quest73215:OnSubFinish7321503(arg1)
    print("OnSubFinish7321503")
end

function Quest73215:OnSubStart7321504(arg1)
    print("OnSubStart7321504")
end

function Quest73215:OnSubFinish7321504(arg1)
    print("OnSubFinish7321504")
end

function Quest73215:OnSubStart7321505(arg1)
    print("OnSubStart7321505")
end

function Quest73215:OnSubFinish7321505(arg1)
    print("OnSubFinish7321505")
    self:SafeDestroyQuestNpc(npcs.Npc20576Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20577Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20578Data.alias, 3)
end

return Quest73215
