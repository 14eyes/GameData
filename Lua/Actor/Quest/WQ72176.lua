require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72176 = class("Quest72176", QuestActorProxy)
Quest72176.defaultAlias = "Quest72176"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72176:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72176:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7217601"] = self.OnSubStart7217601,
        ["7217603"] = self.OnSubStart7217603,
        ["7217604"] = self.OnSubStart7217604,
        ["7217602"] = self.OnSubStart7217602,
        ["7217605"] = self.OnSubStart7217605
    }
end

function Quest72176:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7217601"] = self.OnSubFinish7217601,
        ["7217603"] = self.OnSubFinish7217603,
        ["7217604"] = self.OnSubFinish7217604,
        ["7217602"] = self.OnSubFinish7217602,
        ["7217605"] = self.OnSubFinish7217605
    }
end

function Quest72176:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7217601"] = self.OnSubFailed7217601,
        ["7217603"] = self.OnSubFailed7217603,
        ["7217604"] = self.OnSubFailed7217604,
        ["7217602"] = self.OnSubFailed7217602,
        ["7217605"] = self.OnSubFailed7217605
    }
end

function Quest72176:Start()
    print("Start")
end

function Quest72176:OnDestroy()
    print("OnDestroy")
end

function Quest72176:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72176:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72176:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72176:CountDownFinish()
    print("CountDownFinish")
    self:FinishQuestID(false, 7217603)
end

function Quest72176:PlayerInputChange()
    print("PlayerInputChange")
    self:EnablePlayerInput(true)
end

function Quest72176:OnSubStart7217601(arg1)
    print("OnSubStart7217601")
    self:CreateQuestNpc(arg1, npcs.Npc20338Data.id, 1)
end

function Quest72176:OnSubFinish7217601(arg1)
    print("OnSubFinish7217601")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72176:OnSubFailed7217601(arg1)
    print("OnSubFailed7217601")
end

function Quest72176:OnSubStart7217603(arg1)
    print("OnSubStart7217603")
    self:CreateQuestNpc(arg1, npcs.Npc20338Data.id, 1)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self.CountDownFinish)
    self:CallDelay(4, self.PlayerInputChange)
end

function Quest72176:OnSubFinish7217603(arg1)
    print("OnSubFinish7217603")
end

function Quest72176:OnSubFailed7217603(arg1)
    print("OnSubFailed7217603")
end

function Quest72176:OnSubStart7217604(arg1)
    print("OnSubStart7217604")
    self:CreateQuestNpc(arg1, npcs.Npc20338Data.id, 1)
end

function Quest72176:OnSubFinish7217604(arg1)
    print("OnSubFinish7217604")
end

function Quest72176:OnSubFailed7217604(arg1)
    print("OnSubFailed7217604")
end

function Quest72176:OnSubStart7217602(arg1)
    print("OnSubStart7217602")
    self:CreateQuestNpc(arg1, npcs.Npc20338Data.id, 1)
end

function Quest72176:OnSubFinish7217602(arg1)
    print("OnSubFinish7217602")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 2)
end

function Quest72176:OnSubFailed7217602(arg1)
    print("OnSubFailed7217602")
end

function Quest72176:OnSubStart7217605(arg1)
    print("OnSubStart7217605")
    self:CreateQuestNpc(arg1, npcs.Npc20338Data.id, 1)
end

function Quest72176:OnSubFinish7217605(arg1)
    print("OnSubFinish7217605")
    self:SafeDestroyQuestNpc(npcs.Npc20338Data.alias, 3)
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
end

function Quest72176:OnSubFailed7217605(arg1)
    print("OnSubFailed7217605")
end

return Quest72176
