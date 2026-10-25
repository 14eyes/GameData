require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11101 = class("Quest11101", QuestActorProxy)
Quest11101.defaultAlias = "Quest11101"
local subIDs
local n
local paimonData
local xiaoData
local cheatData
local qiuqiu1Data
local qiuqiu2Data
local qiuqiu3Data

function Quest11101:OnDataLoaded()
    q11101Cfg = self.clientData
    subIDs = q11101Cfg.SubIDs
    n = 11101
    paimonData = q11101Cfg.PaimonData
    xiaoData = q11101Cfg.XiaoData
    cheatData = q11101Cfg.CheatData
    qiuqiu1Data = q11101Cfg.Qiuqiu1Data
    qiuqiu2Data = q11101Cfg.Qiuqiu2Data
    qiuqiu3Data = q11101Cfg.Qiuqiu3Data
    Crowd1Data = q11101Cfg.Crowd1Data
    Crowd2Data = q11101Cfg.Crowd2Data
    Crowd3Data = q11101Cfg.Crowd3Data
end

function Quest11101:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1110101"] = self.OnSubStart1110101
    self.subStartHandlers["1110102"] = self.OnSubStart1110102
    self.subStartHandlers["1110103"] = self.OnSubStart1110103
    self.subStartHandlers["1110104"] = self.OnSubStart1110104
    self.subStartHandlers["1110105"] = self.OnSubStart1110105
    self.subStartHandlers["1110106"] = self.OnSubStart1110106
    self.subStartHandlers["1110107"] = self.OnSubStart1110107
    self.subStartHandlers["1110108"] = self.OnSubStart1110108
end

function Quest11101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1110101"] = self.OnSubFinish1110101
    self.subFinishHandlers["1110102"] = self.OnSubFinish1110102
    self.subFinishHandlers["1110103"] = self.OnSubFinish1110103
    self.subFinishHandlers["1110104"] = self.OnSubFinish1110104
    self.subFinishHandlers["1110105"] = self.OnSubFinish1110105
    self.subFinishHandlers["1110106"] = self.OnSubFinish1110106
    self.subFinishHandlers["1110107"] = self.OnSubFinish1110107
    self.subFinishHandlers["1110108"] = self.OnSubFinish1110108
end

function Quest11101:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11101:XiaoVanish()
    local questNpcActor = self:GetQuestNpcActor(xiaoData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11101:Qiuqiu1Destroy()
    local questNpcActor = self:GetQuestNpcActor(qiuqiu1Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11101:Qiuqiu2Destroy()
    local questNpcActor = self:GetQuestNpcActor(qiuqiu2Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11101:CheatDestroy()
    local questNpcActor = self:GetQuestNpcActor(cheatData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11101:InvokeOnInteraction(arg1)
    print("11102 Invoke : ")
    if arg1 == 10 then
        print("Invoke 10")
        self:ShowReadingDialog(100426)
    elseif arg1 == 1 then
        self:SetQuestVar(1110104, 0, 1)
        print("Invoke 1")
        local questVar = self:GetQuestVar(1110104, 1)
        local v = self:GetQuestVar(1110104, 2)
        if questVar == 1 and v == 1 then
            self:SetQuestVar(1110104, 3, 1)
            print("questvar index 3 value 1")
        end
    elseif arg1 == 2 then
        print("Invoke 2")
        self:SetQuestVar(1110104, 1, 1)
        local questVar = self:GetQuestVar(1110104, 0)
        local v = self:GetQuestVar(1110104, 2)
        if questVar == 1 and v == 1 then
            self:SetQuestVar(1110104, 3, 1)
            print("questvar index 3 value 1")
        end
    elseif arg1 == 3 then
        print("Invoke 3")
        self:SetQuestVar(1110104, 2, 1)
        local questVar = self:GetQuestVar(1110104, 0)
        local v = self:GetQuestVar(1110104, 1)
        if questVar == 1 and v == 1 then
            self:SetQuestVar(1110104, 3, 1)
            print("questvar index 3 value 1")
        end
    elseif arg1 == 11 then
        print("Invoke 1")
        self:SpawnGadgetById(1110105, 70710284)
    elseif arg1 == 12 then
        print("Invoke 1")
        self:UnSpawn("Q70710284")
    elseif arg1 == 20 then
        print("Invoke 1")
        self:PlayEffect("Eff_Censer_Empty_Sound02", sceneData:GetDummyPoint(3, "Q1110003Qiuqiu1").pos)
    elseif arg1 == 21 then
        print("Invoke 1")
        self:PlayEffect("Eff_Censer_Empty_Sound03", sceneData:GetDummyPoint(3, "Q1110003Qiuqiu1").pos)
    end
end

function Quest11101:OnSubStart1110101(arg1)
    print("********1110101 start")
    self:CreateQuestNpc(arg1, cheatData.ID)
    self:CreateQuestNpc(arg1, Crowd1Data.ID)
    self:CreateQuestNpc(arg1, Crowd2Data.ID)
    self:CreateQuestNpc(arg1, Crowd3Data.ID)
    actorMgr:CreateActorWithPos("Q1110101Trigger", "Actor/Gadget/Q1110101Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Npc1625Born").pos, sceneData:GetDummyPoint(3, "Npc1625Born").rot, true, false)
    self:NotifyTo("Npc2052", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2051", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest11101:OnSubFinish1110101(arg1)
    self:SafeDestroyQuestNpc(Crowd1Data.Alias, 3)
    self:SafeDestroyQuestNpc(Crowd2Data.Alias, 3)
    self:SafeDestroyQuestNpc(Crowd3Data.Alias, 3)
end

function Quest11101:OnSubStart1110102(arg1)
    print("********1110102 start")
    self:NotifyTo("Npc2052", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2051", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest11101:OnSubFinish1110102(arg1)
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest11101:OnSubStart1110103(arg1)
    print("********1110103 start")
    self:NotifyTo("Npc2052", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2051", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest11101:OnSubFinish1110103(arg1)
    print("********1110103 Finish")
end

function Quest11101:OnSubStart1110104(arg1)
    print("********1110103 start")
    self:NotifyTo("Npc2052", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2051", NpcUtil.NpcEventType.HIDESELF, true)
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    local actor = actorMgr:GetActor(q11101Cfg.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        actor:TransmitPlayerByQuestId(1110104, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0, 0, 0, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, paimonData.ID)
                arg1_2:RequestInteraction("Paimon")
                print("SHOW BLACK SCREEN 12000")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest11101:OnSubFinish1110104(arg1)
    print("********1110103 Finish")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest11101:OnSubStart1110105(arg1)
    print("********1110103 start")
    actorMgr:CreateActorWithPos("Q1110105Trigger", "Actor/Gadget/Q1110105Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1110105Cheat").pos, sceneData:GetDummyPoint(3, "Q1110105Cheat").rot, true, false)
    self:CreateQuestNpc(arg1, cheatData.ID)
    self:CreateQuestNpc(arg1, Crowd1Data.ID)
    self:CreateQuestNpc(arg1, Crowd2Data.ID)
    self:CreateQuestNpc(arg1, Crowd3Data.ID)
    self:CreateQuestNpc(arg1, qiuqiu1Data.ID)
    self:CreateQuestNpc(arg1, qiuqiu2Data.ID)
end

function Quest11101:OnSubFinish1110105(arg1)
    print("********1110103 Finish")
    self:ActionSafeCall(self.Qiuqiu1Destroy)
    self:ActionSafeCall(self.Qiuqiu2Destroy)
    self:ActionSafeCall(self.PaimonVanish)
    self:UnSpawn("effect1")
    self:UnSpawn("effect2")
    self:NotifyTo("Npc2052", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2051", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest11101:OnSubStart1110106(arg1)
    print("********1110103 start")
    self:ClearSpeechBubbleTask()
    self:GetQuestNpcActor(cheatData.Alias):DoFreeStyle(4190)
    self:GetQuestNpcActor(Crowd1Data.Alias):DoFreeStyle(4180)
    self:GetQuestNpcActor(Crowd2Data.Alias):DoFreeStyle(4190)
    self:GetQuestNpcActor(Crowd3Data.Alias):DoFreeStyle(1070)
end

function Quest11101:OnSubFinish1110106(arg1)
    print("********1110103 Finish")
end

function Quest11101:OnSubStart1110107(arg1)
    print("********1110107 start")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({cheatData.Alias})
    local actor = actorMgr:GetActor(q11101Cfg.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        actor:TransmitPlayerByQuestId(1110107, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, cheatData.ID)
                arg1_2:RequestInteraction("Npc10202")
                print("SHOW BLACK SCREEN 12000")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest11101:OnSubFinish1110107(arg1)
    print("********1110103 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    local questNpcActor = self:GetQuestNpcActor(cheatData.Alias)
    local v = self:GetQuestNpcActor(Crowd1Data.Alias)
    self:CreateQuestNpc(arg1, Crowd2Data.ID)
    local questNpcActor2 = self:GetQuestNpcActor(Crowd2Data.Alias)
    self:CreateQuestNpc(arg1, Crowd3Data.ID)
    local questNpcActor3 = self:GetQuestNpcActor(Crowd3Data.Alias)
end

function Quest11101:OnSubStart1110108(arg1)
    print("********1110103 start")
    self:NotifyTo("Npc2052", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2051", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, cheatData.ID)
    self:RequestInteraction("Npc10202")
end

function Quest11101:OnSubFinish1110108(arg1)
    print("********1110103 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.CheatDestroy)
end

function Quest11101:OnSubStart1110109(arg1)
    print("********1110103 start")
end

function Quest11101:OnSubFinish1110109(arg1)
    print("********1110103 Finish")
end

function Quest11101:OnSubStart1110110(arg1)
    print("********1110103 start")
end

function Quest11101:OnSubFinish1110110(arg1)
    print("********1110103 Finish")
end

function Quest11101:Start() end
function Quest11101:OnDestroy() end
return Quest11101
