require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72185 = class("Quest72185", QuestActorProxy)
Quest72185.defaultAlias = "Quest72185"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72185:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72185:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7218501"] = self.OnSubStart7218501,
        ["7218502"] = self.OnSubStart7218502,
        ["7218503"] = self.OnSubStart7218503,
        ["7218504"] = self.OnSubStart7218504,
        ["7218505"] = self.OnSubStart7218505
    }
end

function Quest72185:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7218501"] = self.OnSubFinish7218501,
        ["7218502"] = self.OnSubFinish7218502,
        ["7218503"] = self.OnSubFinish7218503,
        ["7218504"] = self.OnSubFinish7218504,
        ["7218505"] = self.OnSubFinish7218505
    }
end

function Quest72185:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7218501"] = self.OnSubFailed7218501,
        ["7218502"] = self.OnSubFailed7218502,
        ["7218503"] = self.OnSubFailed7218503,
        ["7218504"] = self.OnSubFailed7218504,
        ["7218505"] = self.OnSubFailed7218505
    }
end

function Quest72185:Start()
    print("Start")
end

function Quest72185:OnDestroy()
    print("OnDestroy")
end

function Quest72185:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72185:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72185:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72185:OnSubStart7218501(arg1)
    print("OnSubStart7218501")
end

function Quest72185:OnSubFinish7218501(arg1)
    print("OnSubFinish7218501")
end

function Quest72185:OnSubFailed7218501(arg1)
    print("OnSubFailed7218501")
end

function Quest72185:OnSubStart7218502(arg1)
    print("OnSubStart7218502")
    self:CreateQuestNpc(arg1, npcs.Npc3024Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3044Data.id, 1)
end

function Quest72185:OnSubFinish7218502(arg1)
    print("OnSubFinish7218502")
end

function Quest72185:OnSubFailed7218502(arg1)
    print("OnSubFailed7218502")
end

function Quest72185:OnSubStart7218503(arg1)
    print("OnSubStart7218503")
end

function Quest72185:OnSubFinish7218503(arg1)
    print("OnSubFinish7218503")
end

function Quest72185:OnSubFailed7218503(arg1)
    print("OnSubFailed7218503")
end

function Quest72185:OnSubStart7218504(arg1)
    print("OnSubStart7218504")
end

function Quest72185:OnSubFinish7218504(arg1)
    print("OnSubFinish7218504")
end

function Quest72185:OnSubFailed7218504(arg1)
    print("OnSubFailed7218504")
end

function Quest72185:OnSubStart7218505(arg1)
    print("OnSubStart7218505")
end

function Quest72185:OnSubFinish7218505(arg1)
    print("OnSubFinish7218505")
    self:ActionSafeCall(function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc3044Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc3024Data.alias, 3)
    end)
end

function Quest72185:OnSubFailed7218505(arg1)
    print("OnSubFailed7218505")
end

return Quest72185
