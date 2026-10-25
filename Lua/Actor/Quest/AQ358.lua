require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest358 = class("Quest358", QuestActorProxy)
Quest358.defaultAlias = "Quest358"
local paimonData = require("Quest/Client/Q358ClientConfig").PaimonData

function Quest358:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["35800"] = self.OnSubStart35800
    self.subStartHandlers["35801"] = self.OnSubStart35801
    self.subStartHandlers["35802"] = self.OnSubStart35802
end

function Quest358:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["35800"] = self.OnSubFinish35800
    self.subFinishHandlers["35801"] = self.OnSubFinish35801
    self.subFinishHandlers["35802"] = self.OnSubFinish35802
end

function Quest358:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest358:On35801CutsceneFinish()
    print("Talk To NPC")
    local qinData = self.clientData.QinData
    self:CreateQuestNpc(35801, qinData.QinID, 0)
    local amborData = self.clientData.AmborData
    self:CreateQuestNpc(35801, amborData.AmborID, 0)
    local gaiaData = self.clientData.GaiaData
    self:CreateQuestNpc(35801, gaiaData.GaiaID, 0)
    local lisaData = self.clientData.LisaData
    self:CreateQuestNpc(35801, lisaData.LisaID, 0)
    local paimonData = self.clientData.PaimonData
    self:CreateQuestNpc(35801, paimonData.PaimonID, 0)
    self:RequestInteraction("Qin")
end

function Quest358:OnSubFinish35800(arg1)
    print("35724 Finish : Creat Paimon")
    actorMgr:CreateActorWithPos("Q357Trigger", "Actor/Gadget/Q357Trigger", 70900002, 0, paimonData.Pos3, paimonData.Dir3, true)
    self:CallDelay(0.1, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, paimonData.PaimonID)
        arg1_2:GetQuestNpcActor(paimonData.Paimon):RunToTask(paimonData.Pos2, function(arg1, arg2) end)
        arg1_2:EnterSceneLookCamera(paimonData.Pos2, 0, 2, true)
    end)

    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story2, nil, "Story")
    globalActor:EnablePlayerInput(false)
    self:CallDelay(2, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest358:OnSubFinish35801(arg1)
    print("35801 Finish : Creat NPC")
    local qinData = self.clientData.QinData
    self:CreateQuestNpc(arg1, qinData.QinID, 0)
    local amborData = self.clientData.AmborData
    self:CreateQuestNpc(arg1, amborData.AmborID, 0)
    local gaiaData = self.clientData.GaiaData
    self:CreateQuestNpc(arg1, gaiaData.GaiaID, 0)
    local lisaData = self.clientData.LisaData
    self:CreateQuestNpc(arg1, lisaData.LisaID, 0)
    local paimonData = self.clientData.PaimonData
    self:CreateQuestNpc(arg1, paimonData.PaimonID, 0)
    self:PlayCutsceneIndex(35801, function(arg1)
        arg1:RequestInteraction("Qin")
    end, nil, nil, true)
end

function Quest358:OnSubFinish35802(arg1)
    print("35802 Finish : Paimon Vanish")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest358:Start() end
function Quest358:OnDestroy() end
return Quest358
