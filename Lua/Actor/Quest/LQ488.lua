require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest488 = class("Quest488", QuestActorProxy)
Quest488.defaultAlias = "Quest488"
local Q488ClientConfig = require("Quest/Client/Q488ClientConfig")

local barNpcData = Q488ClientConfig.BarNpcData
local npcData = Q488ClientConfig.NpcData
local lisaData = Q488ClientConfig.LisaData
local paimonData = Q488ClientConfig.PaimonData

function Quest488:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48800"] = self.OnSubStart48800
    self.subStartHandlers["48801"] = self.OnSubStart48801
    self.subStartHandlers["48802"] = self.OnSubStart48802
    self.subStartHandlers["48803"] = self.OnSubStart48803
    self.subStartHandlers["48804"] = self.OnSubStart48804
end

function Quest488:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48800"] = self.OnSubFinish48800
    self.subFinishHandlers["48801"] = self.OnSubFinish48801
    self.subFinishHandlers["48802"] = self.OnSubFinish48802
    self.subFinishHandlers["48803"] = self.OnSubFinish48803
    self.subFinishHandlers["48804"] = self.OnSubFinish48804
end

function Quest488:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["48800"] = self.OnSubFailed48800
    self.subFailedHandlers["48801"] = self.OnSubFailed48801
    self.subFailedHandlers["48802"] = self.OnSubFailed48802
    self.subFailedHandlers["48803"] = self.OnSubFailed48803
    self.subFailedHandlers["48804"] = self.OnSubFailed48804
end

function Quest488:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest488:DestroyNpc()
    actorMgr:GetActor(Q488ClientConfig.ActorAlias):GetQuestNpcActor(barNpcData.Alias):Destroy(false)
end

function Quest488:DestroyLisa()
    actorMgr:GetActor(Q488ClientConfig.ActorAlias):GetQuestNpcActor(lisaData.Alias):Destroy(false)
end

function Quest488:OnSubStart48800(arg1)
    self:NotifyTo("Npc1465", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, barNpcData.ID)
    self:CreateQuestNpc(arg1, lisaData.ID)
end

function Quest488:OnSubFinish48800(arg1)
    print("48801 Finish : Story")
    self.PaimonVanish(self)
    local questNpcActor = self.GetQuestNpcActor(self, lisaData.Alias)
    questNpcActor:EnableInteraction(false)
    self.NotifyTo(self, "Npc1465", NpcUtil.NpcEventType.STARTDAILY, true)
    questNpcActor:WalkToTask(lisaData.bornPos1, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:EnableInteraction(true)
        arg1:PerformDither(false, 1, self.DestroyLisa)
    end)

    local v = self.GetQuestNpcActor(self, barNpcData.Alias)
    v:EnableInteraction(false)
    v:WalkToTask(barNpcData.NPCPos1, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:EnableInteraction(true)
        arg1:PerformDither(false, 1, self.DestroyNpc)
    end)
end

function Quest488:OnSubStart48801(arg1)
    self:CreateQuestNpc(arg1, npcData.ID)
end

function Quest488:OnSubFinish48801(arg1)
    print("48801 Finish : Story")
    self:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(npcData.Alias)
end

function Quest488:OnSubFinish48802(arg1)
    print("48802 Finish : Creat Paimon")
end

function Quest488:OnSubFailed48802(arg1) end

function Quest488:OnSubStart48803(arg1)
    self:CreateQuestNpc(arg1, npcData.ID)
    self:GetQuestNpcActor(npcData.Alias):WalkToTask(npcData.NPCPos5, function(arg1, arg2)
        arg1:TurnTo(npcData.NPCDir5)
    end, function(arg1, arg2)
        arg1:Standby()
    end)
end

function Quest488:OnSubFinish48803(arg1)
    self.ShowBlackScreen(self, 0.5, 1, 0.5)
    print("48803 Finish : Paimon Vanish")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(npcData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest488:finish48804()
    print("starting Finish 48804")
    local actor = actorMgr:GetActor(Q488ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48804)
        print("Finish 48804")
    end
end

function Quest488:OnSubStart48804(arg1)
    self.CallDelay(self, 3, function()
        self:TransmitPlayerById(arg1, 1, nil, nil, self.finish48804)
    end)

    local actor = actorMgr:GetActor(Q488ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48804)
        print("Finish 48804 111")
    end
end

function Quest488:OnSubFinish48804(arg1)
    print("48804 Finished")
end

function Quest488:Start() end
function Quest488:OnDestroy() end
return Quest488
