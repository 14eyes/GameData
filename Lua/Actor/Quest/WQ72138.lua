require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72138 = class("Quest72138", QuestActorProxy)
Quest72138.defaultAlias = "Quest72138"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72138:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72138:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7213801"] = self.OnSubStart7213801,
        ["7213802"] = self.OnSubStart7213802,
        ["7213807"] = self.OnSubStart7213807,
        ["7213803"] = self.OnSubStart7213803,
        ["7213804"] = self.OnSubStart7213804,
        ["7213805"] = self.OnSubStart7213805,
        ["7213806"] = self.OnSubStart7213806
    }
end

function Quest72138:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7213801"] = self.OnSubFinish7213801,
        ["7213802"] = self.OnSubFinish7213802,
        ["7213807"] = self.OnSubFinish7213807,
        ["7213803"] = self.OnSubFinish7213803,
        ["7213804"] = self.OnSubFinish7213804,
        ["7213805"] = self.OnSubFinish7213805,
        ["7213806"] = self.OnSubFinish7213806
    }
end

function Quest72138:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7213801"] = self.OnSubFailed7213801,
        ["7213802"] = self.OnSubFailed7213802,
        ["7213807"] = self.OnSubFailed7213807,
        ["7213803"] = self.OnSubFailed7213803,
        ["7213804"] = self.OnSubFailed7213804,
        ["7213805"] = self.OnSubFailed7213805,
        ["7213806"] = self.OnSubFailed7213806
    }
end

function Quest72138:Start()
    print("Start")
end

function Quest72138:OnDestroy()
    print("OnDestroy")
end

function Quest72138:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72138:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72138:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72138:OnSubStart7213801(arg1)
    print("OnSubStart7213801")
    self:CreateQuestNpc(arg1, npcs.Npc20238Data.id, 1)
end

function Quest72138:OnSubFinish7213801(arg1)
    print("OnSubFinish7213801")
end

function Quest72138:OnSubFailed7213801(arg1)
    print("OnSubFailed7213801")
end

function Quest72138:OnSubStart7213802(arg1)
    print("OnSubStart7213802")
    self:CreateQuestNpc(arg1, npcs.Npc20238Data.id, 1)
end

function Quest72138:OnSubFinish7213802(arg1)
    print("OnSubFinish7213802")
end

function Quest72138:OnSubFailed7213802(arg1)
    print("OnSubFailed7213802")
end

function Quest72138:OnSubStart7213807(arg1)
    print("OnSubStart7213807")
    self:CreateQuestNpc(arg1, npcs.Npc20238Data.id, 1)
end

function Quest72138:OnSubFinish7213807(arg1)
    print("OnSubFinish7213807")
end

function Quest72138:OnSubFailed7213807(arg1)
    print("OnSubFailed7213807")
end

function Quest72138:OnSubStart7213803(arg1)
    print("OnSubStart7213803")
    self:CreateQuestNpc(arg1, npcs.Npc20238Data.id, 1)
end

function Quest72138:OnSubFinish7213803(arg1)
    print("OnSubFinish7213803")
    self:SafeDestroyQuestNpc(npcs.Npc20238Data.alias, 3)
end

function Quest72138:OnSubFailed7213803(arg1)
    print("OnSubFailed7213803")
end

function Quest72138:OnSubStart7213804(arg1)
    print("OnSubStart7213804")
    self:CreateQuestNpc(arg1, npcs.Npc20238Data.id, 1)
end

function Quest72138:OnSubFinish7213804(arg1)
    print("OnSubFinish7213804")
end

function Quest72138:OnSubFailed7213804(arg1)
    print("OnSubFailed7213804")
end

function Quest72138:OnSubStart7213805(arg1)
    print("OnSubStart7213805")
    self:CreateQuestNpc(arg1, npcs.Npc20238Data.id, 1)
end

function Quest72138:OnSubFinish7213805(arg1)
    print("OnSubFinish7213805")
end

function Quest72138:OnSubFailed7213805(arg1)
    print("OnSubFailed7213805")
end

function Quest72138:OnSubStart7213806(arg1)
    print("OnSubStart7213806")
    self:CreateQuestNpc(arg1, npcs.Npc20238Data.id, 1)
end

function Quest72138:OnSubFinish7213806(arg1)
    print("OnSubFinish7213806")
    self:SafeDestroyQuestNpc(npcs.Npc20238Data.alias, 3)
    self:ShowBlackScreen(0.5, 0.5, 0.5, nil, nil, nil, "")
end

function Quest72138:OnSubFailed7213806(arg1)
    print("OnSubFailed7213806")
end

return Quest72138
