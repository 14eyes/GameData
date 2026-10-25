require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73203 = class("Quest73203", QuestActorProxy)
Quest73203.defaultAlias = "Quest73203"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73203:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73203:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7320307"] = self.OnSubStart7320307,
        ["7320308"] = self.OnSubStart7320308,
        ["7320301"] = self.OnSubStart7320301,
        ["7320302"] = self.OnSubStart7320302,
        ["7320303"] = self.OnSubStart7320303,
        ["7320309"] = self.OnSubStart7320309,
        ["7320306"] = self.OnSubStart7320306
    }
end

function Quest73203:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7320307"] = self.OnSubFinish7320307,
        ["7320308"] = self.OnSubFinish7320308,
        ["7320301"] = self.OnSubFinish7320301,
        ["7320302"] = self.OnSubFinish7320302,
        ["7320303"] = self.OnSubFinish7320303,
        ["7320309"] = self.OnSubFinish7320309,
        ["7320306"] = self.OnSubFinish7320306
    }
end

function Quest73203:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73203:Start()
    print("Start")
end

function Quest73203:OnDestroy()
    print("OnDestroy")
end

function Quest73203:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73203:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73203:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73203:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7320309")
        actorUtils.FinishQuestID(false, 7320309)
    end

    if arg1 == 2 then
        print("Yueduwu7320303")
        self:ShowReadingDialog(120125)
    end
end

function Quest73203:OnSubStart7320307(arg1)
    print("OnSubStart7320307")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
end

function Quest73203:OnSubFinish7320307(arg1)
    print("OnSubFinish7320307")
    self:ShowBlackScreen(0.3, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest73203:OnSubStart7320308(arg1)
    print("OnSubStart7320308")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
end

function Quest73203:OnSubFinish7320308(arg1)
    print("OnSubFinish7320308")
end

function Quest73203:OnSubStart7320301(arg1)
    print("OnSubStart7320301")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
end

function Quest73203:OnSubFinish7320301(arg1)
    print("OnSubFinish7320301")
    self:ShowBlackScreen(0.3, 1, 0.5, nil, nil, nil, "", false, true)
    self:SetNavigationByMainId(73203, true)
end

function Quest73203:OnSubStart7320302(arg1)
    print("OnSubStart7320302")
end

function Quest73203:OnSubFinish7320302(arg1)
    print("OnSubFinish7320302")
end

function Quest73203:OnSubStart7320303(arg1)
    print("OnSubStart7320303")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
    self:RequestInteraction(npcs.Npc4232Data.alias)
end

function Quest73203:OnSubFinish7320303(arg1)
    print("OnSubFinish7320303")
end

function Quest73203:OnSubStart7320309(arg1)
    print("OnSubStart7320309")
end

function Quest73203:OnSubFinish7320309(arg1)
    print("OnSubFinish7320309")
end

function Quest73203:OnSubStart7320306(arg1)
    print("OnSubStart7320306")
end

function Quest73203:OnSubFinish7320306(arg1)
    print("OnSubFinish7320306")
end

return Quest73203
