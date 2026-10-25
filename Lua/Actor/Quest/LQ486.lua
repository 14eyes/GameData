require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest486 = class("Quest486", QuestActorProxy)
Quest486.defaultAlias = "Quest486"
local Q486ClientConfig = require("Quest/Client/Q486ClientConfig")

util.do_require("Quest/Share/Q486ShareConfig")
local questData = Q486ClientConfig.QuestData
local catNpcData = Q486ClientConfig.CatNpcData
local barNpcData = Q486ClientConfig.BarNpcData
local qinData = Q486ClientConfig.QinData
local barbaraData = Q486ClientConfig.BarbaraData
local kaeyaData = Q486ClientConfig.KaeyaData
local paimonData = Q486ClientConfig.PaimonData
local v = quest_data["48605"]
local v2 = quest_data["48608"]
local v3 = quest_data["48610"]
local v4 = quest_data["48607"]

function Quest486:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48601"] = self.OnSubStart48601
    self.subStartHandlers["48602"] = self.OnSubStart48602
    self.subStartHandlers["48603"] = self.OnSubStart48603
    self.subStartHandlers["48604"] = self.OnSubStart48604
    self.subStartHandlers["48605"] = self.OnSubStart48605
    self.subStartHandlers["48606"] = self.OnSubStart48606
    self.subStartHandlers["48607"] = self.OnSubStart48607
    self.subStartHandlers["48608"] = self.OnSubStart48608
    self.subStartHandlers["48609"] = self.OnSubStart48609
    self.subStartHandlers["48610"] = self.OnSubStart48610
    self.subStartHandlers["48611"] = self.OnSubStart48611
    self.subStartHandlers["48612"] = self.OnSubStart48612
    self.subStartHandlers["48613"] = self.OnSubStart48613
    self.subStartHandlers["48614"] = self.OnSubStart48614
    self.subStartHandlers["48615"] = self.OnSubStart48615
end

function Quest486:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48601"] = self.OnSubFinish48601
    self.subFinishHandlers["48602"] = self.OnSubFinish48602
    self.subFinishHandlers["48603"] = self.OnSubFinish48603
    self.subFinishHandlers["48604"] = self.OnSubFinish48604
    self.subFinishHandlers["48605"] = self.OnSubFinish48605
    self.subFinishHandlers["48606"] = self.OnSubFinish48606
    self.subFinishHandlers["48607"] = self.OnSubFinish48607
    self.subFinishHandlers["48608"] = self.OnSubFinish48608
    self.subFinishHandlers["48609"] = self.OnSubFinish48609
    self.subFinishHandlers["48610"] = self.OnSubFinish48610
    self.subFinishHandlers["48611"] = self.OnSubFinish48611
    self.subFinishHandlers["48612"] = self.OnSubFinish48612
    self.subFinishHandlers["48613"] = self.OnSubFinish48613
    self.subFinishHandlers["48614"] = self.OnSubFinish48614
    self.subFinishHandlers["48615"] = self.OnSubFinish48615
end

function Quest486:SceneLookCamera()
    print("PaimonNarrator Start : ")
    self:EnablePlayerInput(false)
    self:EnterSceneLookCamera(questData.camPos1, 0, 3, true, true)
end

function Quest486:InvokeOnInteraction(arg1)
    if arg1 == 0 then
        local questNpcActor = self:GetQuestNpcActor(qinData.Alias)
        if questNpcActor ~= nil then
            questNpcActor.DoFreeStateTrigger(questNpcActor)
            questNpcActor.WalkToTask(questNpcActor, qinData.BornPos2, function(arg1)
                questNpcActor:SitOnChair(8010)
            end)
        end
    elseif arg1 == 1 then
        local questNpcActor = self:GetQuestNpcActor(qinData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:SitOnChair(8062)
        end
    elseif arg1 == 2 then
    end
end

function Quest486:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest486:OnSubStart48601(arg1)
    self:DeployStoryByQuest(120048601)
end

function Quest486:PlayerInputOn()
    print("PaimonNarrator Start : ")
    self:EnablePlayerInput(true)
end

function Quest486:OnSubFinish48601(arg1)
    self:SceneLookCamera()
    self:NarratorOnlyTaskLegacy(Q486ClientConfig.NarratorData.Story1)
    self:CallDelay(4, self.PlayerInputOn)
    self:CancelStoryByQuest(120048601)
end

function Quest486:OnSubFinish48602(arg1)
    print("48602 Finish : Creat Paimon")
    self:PaimonVanish()
end

function Quest486:OnSubStart48603(arg1)
    self:CreateQuestNpc(arg1, barNpcData.ID)
end

function Quest486:OnSubFinish48603(arg1)
    local questNpcActor = self:GetQuestNpcActor(barNpcData.Alias)
    self:PaimonVanish()
end

function Quest486:OnSubStart48604(arg1)
    self:CreateQuestNpc(arg1, catNpcData.ID)
    local questNpcActor = self:GetQuestNpcActor(catNpcData.Alias)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
    self:DeployStoryByQuest(120048600)
end

function Quest486:OnSubFinish48604(arg1)
    self:CancelStoryByQuest(120048600)
end

function Quest486:OnSubStart48605(arg1)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk48605)
end

function Quest486:StartTalk48605()
    print("46302 Start : ")
    self:CreateQuestNpcById(48605, catNpcData.ID)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
    self:CallDelay(0.5, function(arg1)
        arg1:RequestInteraction(catNpcData.Alias)
    end)
end

function Quest486:DestroySelf(arg1)
    arg1:Destroy(false)
end

function Quest486:OnSubFinish48605(arg1)
    local questNpcActor = self.GetQuestNpcActor(self, catNpcData.Alias)
    self.PaimonVanish(self)
    questNpcActor:EnableInteraction(false)
    questNpcActor:WalkToTask(catNpcData.NPCPos2, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:EnableInteraction(true)
        arg1:PerformDither(false, 1, function()
            self:CreateQuestNpcById(48605, catNpcData.ID, 2)
        end)
    end)
end

function Quest486:OnSubStart48606(arg1)
    self:CreateQuestNpc(arg1, qinData.ID, 0)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
    self:DeployStoryByQuest(120048606)
end

function Quest486:OnSubFinish48606(arg1)
    self:CancelStoryByQuest(120048606)
end

function Quest486:OnSubStart48607(arg1)
    self:CreateQuestNpc(arg1, catNpcData.ID)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk48607)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest486:StartTalk48607()
    print("46302 Start : ")
    self:CallDelay(0.5, function(arg1)
        print("48607 RequestInteraction : ")
        arg1:RequestInteraction(qinData.Alias)
    end)
end

function Quest486:OnSubFinish48607(arg1)
    self:DestroyQuestNpcActor(catNpcData.Alias, 3)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest486:OnSubStart48608(arg1)
    local questVar = self:GetQuestVar(48608, 1)
    if questVar == 0 then
        self:TransmitPlayerWithTextById(arg1, 1, {"QUEST_Message_Q48608"}, 7, self.StartTalkBabara)
        self:DestroyQuestNpcActor(qinData.Alias, 1004)
        self:SetQuestVarByMainId(1, 1)
    elseif questVar == 1 then
        self:CreateQuestNpcById(48608, barbaraData.ID)
        self:GetQuestNpcActor(barbaraData.Alias):Standby()
        self:DestroyQuestNpcActor(qinData.Alias, 1004)
    end
end

function Quest486:OnSubFinish48608(arg1)
    self:PaimonVanish()
end

function Quest486:OnSubStart48609(arg1)
    self:DeployStoryByQuest(120048609)
end

function Quest486:OnSubFinish48609(arg1)
    self:SafeDestroyQuestNpc(barbaraData.Alias, 1008)
    self:CancelStoryByQuest(120048609)
end

function Quest486:OnSubStart48610(arg1)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk48610)
end

function Quest486:StartTalk48610()
    print("46302 Start : ")
    self:CreateQuestNpcById(48610, kaeyaData.ID)
    self:CallDelay(0.5, function(arg1)
        print("48610 RequestInteraction : ")
        arg1:RequestInteraction(kaeyaData.Alias)
    end)
end

function Quest486:OnSubFinish48610(arg1)
    self:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(kaeyaData.Alias)
    questNpcActor:EnableInteraction(false)
    questNpcActor:WalkToTask(kaeyaData.KaeyaPos1, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:EnableInteraction(true)
        arg1:PerformDither(false, 1, arg1.HideSelf)
    end)
end

function Quest486:OnSubFinish48611(arg1) end
function Quest486:OnSubFinish48612(arg1) end
function Quest486:OnSubFinish48613(arg1) end

function Quest486:OnSubStart48615(arg1)
    local actor = actorMgr:GetActor(Q486ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48615)
    end
end

function Quest486:OnSubFinish48615(arg1) end

function Quest486:StartTalkBabara()
    print("request interaction")
    self:CreateQuestNpcById(48608, barbaraData.ID)
    self:GetQuestNpcActor(barbaraData.Alias):Standby()
    self:RequestInteraction(barbaraData.Alias)
end

function Quest486:Start() end
function Quest486:OnDestroy() end
return Quest486
