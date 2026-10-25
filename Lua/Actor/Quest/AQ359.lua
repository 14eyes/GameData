require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest359 = class("Quest359", QuestActorProxy)
Quest359.defaultAlias = "Quest359"
local NPCUtil = require("Actor/Npc/NPCUtil")
local Q359ClientConfig = require("Quest/Client/Q359ClientConfig")

local q359NPC1Data = Q359ClientConfig.Q359NPC1Data
local q359NPC2Data = Q359ClientConfig.Q359NPC2Data
local q359NPC3Data = Q359ClientConfig.Q359NPC3Data
local q359NPC4Data = Q359ClientConfig.Q359NPC4Data
local q359NPC5Data = Q359ClientConfig.Q359NPC5Data
local q359NPC6Data = Q359ClientConfig.Q359NPC6Data
local dungEffectData = Q359ClientConfig.DungEffectData

function Quest359:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["35901"] = self.OnSubStart35901
    self.subStartHandlers["35902"] = self.OnSubStart35902
    self.subStartHandlers["35903"] = self.OnSubStart35903
    self.subStartHandlers["35904"] = self.OnSubStart35904
end

function Quest359:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["35901"] = self.OnSubFinish35901
    self.subFinishHandlers["35902"] = self.OnSubFinish35902
    self.subFinishHandlers["35903"] = self.OnSubFinish35903
    self.subFinishHandlers["35904"] = self.OnSubFinish35904
end

function Quest359:OnSubStart35901(arg1)
    print("35901 start ")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:SpawnGadget(arg1, 70700004, 1)
        arg1_2:CreateQuestNpc(arg1, q359NPC1Data.Q359NPC1ID)
        arg1_2:CreateQuestNpc(arg1, q359NPC2Data.Q359NPC2ID)
        arg1_2:CreateQuestNpc(arg1, q359NPC3Data.Q359NPC3ID)
        arg1_2:CreateQuestNpc(arg1, q359NPC4Data.Q359NPC4ID)
        arg1_2:CreateQuestNpc(arg1, q359NPC5Data.Q359NPC5ID)
        arg1_2:CreateQuestNpc(arg1, q359NPC6Data.Q359NPC6ID)
        print("-----------Notify NPC to Panic-----------")
        local mengdeNpcListSpecial = NPCUtil.GetMengdeNpcListSpecial()
        for i = 1, #mengdeNpcListSpecial do
            arg1_2:NotifyTo(mengdeNpcListSpecial[i], NPCUtil.NpcEventType.HIDESELF, true)
        end
    end)
end

function Quest359:OnSubStart35902(arg1)
    print("35902 start ")
    self:SpawnGadget(arg1, dungEffectData.EffectID, 1)
end

function Quest359:OnSubStart35903(arg1)
    print("35903 start ")
    self:SpawnGadget(arg1, dungEffectData.EffectID, 1)
end

function Quest359:OnSubStart35904(arg1)
    print("35904 start ")
    self:SpawnGadget(arg1, dungEffectData.EffectID, 1)
end

function Quest359:OnSubFinish35901(arg1)
    print("OnFinished 35901")
    globalActor:UnSpawn("MengdeWindDragon")
    self:DestroyQuestNpcActor("Q357NPC1", 3)
    self:DestroyQuestNpcActor("Q357NPC2", 3)
    self:DestroyQuestNpcActor("Q357NPC3", 3)
    self:DestroyQuestNpcActor("Q357NPC4", 3)
    self:DestroyQuestNpcActor("Q357NPC5", 3)
    self:DestroyQuestNpcActor("Q357NPC6", 3)
    print("-----------Notify NPC to Daily-----------")
    local mengdeNpcListSpecial = NPCUtil.GetMengdeNpcListSpecial()
    for i = 1, #mengdeNpcListSpecial do
        self:NotifyTo(mengdeNpcListSpecial[i], NPCUtil.NpcEventType.STARTDAILY, true)
    end
end

function Quest359:OnSubFinish35902(arg1)
    print("OnFinished 35902")
    globalActor:UnSpawn(dungEffectData.AmborDungeon)
end

function Quest359:OnSubFinish35903(arg1)
    print("OnFinished 35903")
    globalActor:UnSpawn(dungEffectData.GaiaDungeon)
end

function Quest359:OnSubFinish35904(arg1)
    print("OnFinished 35904")
    globalActor:UnSpawn(dungEffectData.LisaDungeon)
end

function Quest359:Start() end
function Quest359:OnDestroy() end
return Quest359
