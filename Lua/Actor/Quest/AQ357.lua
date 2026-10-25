require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest357 = class("Quest357", QuestActorProxy)
Quest357.defaultAlias = "Quest357"
local NPCUtil = require("Actor/Npc/NPCUtil")
local Q357ClientConfig = require("Quest/Client/Q357ClientConfig")

local amborData = Q357ClientConfig.AmborData
local gaiaData = Q357ClientConfig.GaiaData
local q357NPC1Data = Q357ClientConfig.Q357NPC1Data
local q357NPC2Data = Q357ClientConfig.Q357NPC2Data
local q357NPC3Data = Q357ClientConfig.Q357NPC3Data
local q357NPC4Data = Q357ClientConfig.Q357NPC4Data
local q357NPC5Data = Q357ClientConfig.Q357NPC5Data
local q357NPC6Data = Q357ClientConfig.Q357NPC6Data

function Quest357:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["35721"] = self.OnSubStart35721
    self.subStartHandlers["35722"] = self.OnSubStart35722
    self.subStartHandlers["35723"] = self.OnSubStart35723
    self.subStartHandlers["35724"] = self.OnSubStart35724
    self.subStartHandlers["35725"] = self.OnSubStart35725
end

function Quest357:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["35721"] = self.OnSubFinish35721
    self.subFinishHandlers["35722"] = self.OnSubFinish35722
    self.subFinishHandlers["35723"] = self.OnSubFinish35723
    self.subFinishHandlers["35724"] = self.OnSubFinish35724
    self.subFinishHandlers["35725"] = self.OnSubFinish35725
end

function Quest357:OnSubStart35721(arg1)
    print("35721 Start : Cutscene")
    self:ActionSafeCall(function(arg1)
        local mengdeNpcListSpecial = NPCUtil.GetMengdeNpcListSpecial()
        for i = 1, #mengdeNpcListSpecial do
            arg1:NotifyTo(mengdeNpcListSpecial[i], NPCUtil.NpcEventType.HIDESELF, true)
        end

        arg1:PlayCutsceneIndex(35701, function(arg1)
            globalActor:PlayerEnterDungeon(67, 2004)
        end)
    end)
end

function Quest357:OnSubStart35722(arg1)
    print("35722 Start : ...")
end

function Quest357:OnSubStart35723(arg1)
    print("35723 Start : Keaya Arrived Cutscene")
    local amborData = self.clientData.AmborData
    self:CreateQuestNpc(arg1, amborData.AmborID, 0)
    self:PlayCutsceneIndex(35703, function(arg1)
        arg1:RequestInteraction("Ambor")
    end, nil, nil, true)
end

function Quest357:OnSubStart35724(arg1)
    print("35724 Start : ...")
end

function Quest357:OnSubStart35725(arg1)
    print("35724 Start : ...")
end

function Quest357:OnSubFinish35721(arg1)
    print("35721 Finish : ...")
end

function Quest357:OnSubFinish35722(arg1)
    print("35722 Finish : ...")
    self:CallDelay(1, function(arg1)
        arg1:TriggerLevelAbility("Dvalin_S00_ResetSkyBox")
    end)

    self:PlayCutsceneIndex(35702, function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1)
    end)
end

function Quest357:OnSubFinish35723(arg1)
    print("35723 Finish : ...")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(amborData.Ambor)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor(gaiaData.Gaia)
        if v ~= nil then
            v:Destroy(false)
        end

        local questNpcActor2 = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor2 ~= nil then
            questNpcActor2:DestroyWithDisappear(false)
        end
    end)
end

function Quest357:Start() end
function Quest357:OnDestroy() end
return Quest357
