require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40003 = class("Quest40003", QuestActorProxy)
Quest40003.defaultAlias = "Quest40003"
local clientData
local Q40007ClientConfig = require("Quest/Client/Q40007ClientConfig")

local paimonData
local playerData
local xiaoData
local thoarderIconData
local narratorData
local soldierData
local triggerData

function Quest40003:OnDataLoaded()
    clientData = self.clientData
    playerData = clientData.PlayerData
    xiaoData = clientData.XiaoData
    paimonData = clientData.PaimonData
    thoarderIconData = clientData.ThoarderIconData
    soldierData = clientData.SoldierData
    triggerData = clientData.TriggerData
    narratorData = clientData.NarratorData
end

function Quest40003:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000300"] = self.OnSubStart4000300
    self.subStartHandlers["4000301"] = self.OnSubStart4000301
    self.subStartHandlers["4000302"] = self.OnSubStart4000302
    self.subStartHandlers["4000303"] = self.OnSubStart4000303
    self.subStartHandlers["4000304"] = self.OnSubStart4000304
    self.subStartHandlers["4000305"] = self.OnSubStart4000305
    self.subStartHandlers["4000306"] = self.OnSubStart4000306
    self.subStartHandlers["4000307"] = self.OnSubStart4000307
    self.subStartHandlers["4000308"] = self.OnSubStart4000308
    self.subStartHandlers["4000309"] = self.OnSubStart4000309
end

function Quest40003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4000300"] = self.OnSubFinish4000300
    self.subFinishHandlers["4000301"] = self.OnSubFinish4000301
    self.subFinishHandlers["4000302"] = self.OnSubFinish4000302
    self.subFinishHandlers["4000303"] = self.OnSubFinish4000303
    self.subFinishHandlers["4000304"] = self.OnSubFinish4000304
    self.subFinishHandlers["4000305"] = self.OnSubFinish4000305
    self.subFinishHandlers["4000306"] = self.OnSubFinish4000306
    self.subFinishHandlers["4000307"] = self.OnSubFinish4000307
    self.subFinishHandlers["4000308"] = self.OnSubFinish4000308
    self.subFinishHandlers["4000309"] = self.OnSubFinish4000309
end

function Quest40003:OnSubStart4000301(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest40003:OnSubFinish4000301(arg1)
    print("4000301 OnFinish")
    self:NarratorOnlyTaskLegacy(narratorData.Story1, nil, "Story")
end

function Quest40003:OnSubFinish4000302(arg1)
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest40003:OnSubStart4000305(arg1)
    print("4000305 OnStart")
    actorMgr:CreateActorWithPos(triggerData.Alias, triggerData.Script, triggerData.ID, 0, triggerData.BornPos, triggerData.BornDir, true)
end

function Quest40003:OnSubFinish4000305(arg1)
    print("4000305 OnFinished")
    self:NarratorOnlyTaskLegacy(narratorData.Story2, nil, "Story")
end

function Quest40003:OnSubStart4000304(arg1)
    print("4000304 OnStart")
    self:CreateQuestNpc(arg1, soldierData.ID)
end

function Quest40003:OnSubFinish4000304(arg1)
    print("4000304 OnFinished")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    local v = self:GetQuestNpcActor(soldierData.Alias)
    if v ~= nil then
        v:Destroy(false)
    end
end

function Quest40003:OnSubStart4000306(arg1)
    print("4000307 OnStart")
    self:CreateQuestNpc(arg1, xiaoData.ID)
    local questNpcActor = self:GetQuestNpcActor(xiaoData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(1190)
    end

    self:SpawnGadget(arg1, thoarderIconData.ID, 1)
    local actor = actorMgr:GetActor(Q40007ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4000704)
        actor:FinishQuestID(true, 4000701)
        actor:FinishQuestID(true, 4000702)
    end
end

function Quest40003:OnSubStart4000307(arg1)
    print("4000307 OnStart")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask({paimonData.Alias})
    self:TransmitPlayer(3, playerData.BornPos, playerData.BornDir, nil, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, paimonData.ID)
    end, questNpcCreateTask)
end

function Quest40003:OnSubFinish4000307(arg1)
    print("4000307 OnFinished")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    local v = self:GetQuestNpcActor("Npc10205")
    if v ~= nil then
        v:Destroy(false)
    end
end

function Quest40003:OnSubFinish4000309(arg1)
    print("4000309 OnFinished")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:NarratorOnlyTaskLegacy(narratorData.Story3, nil, "Story")
end

function Quest40003:Start() end
function Quest40003:OnDestroy() end
return Quest40003
