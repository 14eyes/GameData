require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11100 = class("Quest11100", QuestActorProxy)
Quest11100.defaultAlias = "Quest11100"
local subIDs
local n
local paimonData
local xiaoData
local cheatData
local qiuqiu1Data
local qiuqiu2Data
local qiuqiu3Data

function Quest11100:OnDataLoaded()
    q11100Cfg = self.clientData
    subIDs = q11100Cfg.SubIDs
    n = 11100
    paimonData = q11100Cfg.PaimonData
    xiaoData = q11100Cfg.XiaoData
    cheatData = q11100Cfg.CheatData
    Crowd1Data = q11100Cfg.Crowd1Data
    Crowd2Data = q11100Cfg.Crowd2Data
    Crowd3Data = q11100Cfg.Crowd3Data
    qiuqiu1Data = q11100Cfg.Qiuqiu1Data
    qiuqiu2Data = q11100Cfg.Qiuqiu2Data
    qiuqiu3Data = q11100Cfg.Qiuqiu3Data
end

function Quest11100:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1110001"] = self.OnSubStart1110001
    self.subStartHandlers["1111002"] = self.OnSubStart1110002
    self.subStartHandlers["1110003"] = self.OnSubStart1110003
    self.subStartHandlers["1110004"] = self.OnSubStart1110004
    self.subStartHandlers["1110005"] = self.OnSubStart1110005
    self.subStartHandlers["1110006"] = self.OnSubStart1110006
    self.subStartHandlers["1110007"] = self.OnSubStart1110007
    self.subStartHandlers["1110008"] = self.OnSubStart1110008
    self.subStartHandlers["1110009"] = self.OnSubStart1110009
    self.subStartHandlers["1110010"] = self.OnSubStart1110010
end

function Quest11100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1110001"] = self.OnSubFinish1110001
    self.subFinishHandlers["1110002"] = self.OnSubFinish1110002
    self.subFinishHandlers["1110003"] = self.OnSubFinish1110003
    self.subFinishHandlers["1110004"] = self.OnSubFinish1110004
    self.subFinishHandlers["1110005"] = self.OnSubFinish1110005
    self.subFinishHandlers["1110006"] = self.OnSubFinish1110006
    self.subFinishHandlers["1110007"] = self.OnSubFinish1110007
    self.subFinishHandlers["1110008"] = self.OnSubFinish1110008
    self.subFinishHandlers["1110009"] = self.OnSubFinish1110009
    self.subFinishHandlers["1110010"] = self.OnSubFinish1110010
end

function Quest11100:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11100:XiaoVanish()
    local questNpcActor = self:GetQuestNpcActor(xiaoData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11100:CheatDestroy()
    local questNpcActor = self:GetQuestNpcActor(cheatData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11100:Qiuqiu1Destroy()
    local questNpcActor = self:GetQuestNpcActor(qiuqiu1Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11100:Qiuqiu2Destroy()
    local questNpcActor = self:GetQuestNpcActor(qiuqiu2Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11100:Qiuqiu3Destroy()
    local questNpcActor = self:GetQuestNpcActor(qiuqiu3Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11100:QiuqiuMotion(arg1)
    self:GetQuestNpcActor(qiuqiu1Data.Alias):DoFreeStyle(3)
    self:GetQuestNpcActor(qiuqiu2Data.Alias):DoFreeStyle(4)
    self:Qiuqiutick()
end

function Quest11100:Qiuqiutick(arg1)
    self:CallDelay(6, self.QiuqiuMotion)
end

function Quest11100:InvokeOnInteraction(arg1)
    print("10200 Invoke : ")
    if arg1 == 1 then
        print("Invoke 11")
        self:SpawnGadgetById(1110003, 70710284, 1)
    end

    if arg1 == 2 then
        print("Invoke 1")
        self:UnSpawn("Q70710284")
    end

    if arg1 == 3 then
        print("Invoke 1")
        self:PlayEffect("Eff_Censer_Empty_Sound01", sceneData:GetDummyPoint(3, "Q1110001Qiuqiu1").pos)
    end

    if arg1 == 4 then
        print("Invoke 1")
        self:PlayEffect("Eff_Censer_Empty_Sound04", sceneData:GetDummyPoint(3, "Q1110001Qiuqiu1").pos)
    end
end

function Quest11100:OnSubStart1110009(arg1)
    print("********1110001 start")
    actorMgr:CreateActorWithPos("Q1110001Trigger", "Actor/Gadget/Q1110001Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1110002guild").pos, sceneData:GetDummyPoint(3, "Q1110002guild").rot, true, false)
    self:CreateQuestNpc(arg1, qiuqiu1Data.ID)
    self:CreateQuestNpc(arg1, qiuqiu2Data.ID)
    self:Qiuqiutick()
    self:SpawnGadgetById(1110009, 70710288, 1)
    self:SpawnGadgetById(1110009, 70710288, 2)
end

function Quest11100:OnSubFinisht1110009(arg1) end

function Quest11100:OnSubStart1110001(arg1)
    print("********1110001 start")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    local actor = actorMgr:GetActor(q11100Cfg.ActorAlias)
    self:CallDelay(1, function(arg1_2)
        actor:TransmitPlayerByQuestId(1110001, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, qiuqiu1Data.ID)
                arg1_2:CreateQuestNpc(arg1, qiuqiu2Data.ID)
                arg1_2:CreateQuestNpc(arg1, paimonData.ID)
                arg1_2:RequestInteraction("Paimon")
                print("SHOW BLACK SCREEN 12000")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest11100:OnSubFinish1110001(arg1)
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.Qiuqiu1Destroy)
    self:ActionSafeCall(self.Qiuqiu2Destroy)
    self:UnSpawn("effect1")
    self:UnSpawn("effect2")
end

function Quest11100:OnSubStart1110002(arg1)
    print("********1110002 start")
end

function Quest11100:OnSubFinish1110002(arg1) end

function Quest11100:OnSubStart1110003(arg1)
    print("********1110003 start")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    local actor = actorMgr:GetActor(q11100Cfg.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        actor:TransmitPlayerByQuestId(1110003, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, cheatData.ID)
                arg1_2:GetQuestNpcActor(cheatData.Alias):DoFreeStyle(4000)
                arg1_2:CreateQuestNpc(arg1, Crowd1Data.ID)
                arg1_2:GetQuestNpcActor(Crowd1Data.Alias):DoFreeStyle(1270)
                actor:CreateSpeechBubbleTask(Crowd1Data.ID, 111030803, 2, true, 2, 3)
                arg1_2:CreateQuestNpc(arg1, Crowd2Data.ID)
                arg1_2:GetQuestNpcActor(Crowd2Data.Alias):DoFreeStyle(1300)
                actor:CreateSpeechBubbleTask(Crowd2Data.ID, 111030804, 2, true, 3, 3)
                arg1_2:CreateQuestNpc(arg1, Crowd3Data.ID)
                arg1_2:GetQuestNpcActor(Crowd3Data.Alias):DoFreeStyle(1270)
                actor:CreateSpeechBubbleTask(Crowd3Data.ID, 111030805, 2, true, 4, 3)
                arg1_2:CreateQuestNpc(arg1, qiuqiu1Data.ID)
                arg1_2:CreateQuestNpc(arg1, qiuqiu2Data.ID)
                arg1_2:CreateQuestNpc(arg1, paimonData.ID)
                arg1_2:RequestInteraction("Paimon")
                print("SHOW BLACK SCREEN 12000")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest11100:OnSubFinish1110003(arg1)
    print("********1110003 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.Qiuqiu1Destroy)
    self:ActionSafeCall(self.Qiuqiu2Destroy)
    self:CreateQuestNpc(arg1, Crowd1Data.ID)
end

function Quest11100:OnSubStart1110010(arg1)
    print("********1110003 start")
    local actor = actorMgr:GetActor(q11100Cfg.ActorAlias)
    local questNpcActor = self:GetQuestNpcActor(cheatData.Alias)
    self:GetQuestNpcActor(Crowd1Data.Alias):DoFreeStyle(1270)
    actor:CreateSpeechBubbleTask(Crowd1Data.ID, 111030803, 2, true, 2, 3)
    self:GetQuestNpcActor(Crowd2Data.Alias):DoFreeStyle(1300)
    actor:CreateSpeechBubbleTask(Crowd2Data.ID, 111030804, 2, true, 3, 3)
    self:GetQuestNpcActor(Crowd3Data.Alias):DoFreeStyle(1270)
    actor:CreateSpeechBubbleTask(Crowd3Data.ID, 111030805, 2, true, 4, 3)
end

function Quest11100:OnSubFinish1110010(arg1)
    print("********1110003 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:ClearSpeechBubbleTask()
end

function Quest11100:OnSubStart1110004(arg1)
    print("********1110003 start")
end

function Quest11100:OnSubFinish1110004(arg1)
    print("********1110003 Finish")
end

function Quest11100:OnSubStart1110005(arg1)
    print("********1110003 start")
end

function Quest11100:OnSubFinish1110005(arg1)
    print("********1110003 Finish")
end

function Quest11100:OnSubStart1110006(arg1)
    print("********1110003 start")
end

function Quest11100:OnSubFinish1110006(arg1)
    print("********1110003 Finish")
end

function Quest11100:OnSubStart1110007(arg1)
    print("********1110003 start")
    local actor = actorMgr:GetActor(q11100Cfg.ActorAlias)
    self:CreateQuestNpc(arg1, cheatData.ID)
    local questNpcActor = self:GetQuestNpcActor(cheatData.Alias)
    self:CreateQuestNpc(arg1, Crowd1Data.ID)
    self:GetQuestNpcActor(Crowd1Data.Alias):DoFreeStyle(1270)
    actor:CreateSpeechBubbleTask(Crowd1Data.ID, 111030803, 2, true, 2, 3)
    self:CreateQuestNpc(arg1, Crowd2Data.ID)
    self:GetQuestNpcActor(Crowd2Data.Alias):DoFreeStyle(1300)
    actor:CreateSpeechBubbleTask(Crowd2Data.ID, 111030804, 2, true, 3, 3)
    self:CreateQuestNpc(arg1, Crowd3Data.ID)
    self:GetQuestNpcActor(Crowd3Data.Alias):DoFreeStyle(1270)
    actor:CreateSpeechBubbleTask(Crowd3Data.ID, 111030805, 2, true, 4, 3)
end

function Quest11100:OnSubFinish1110007(arg1)
    print("********1110003 Finish")
end

function Quest11100:OnSubStart1110008(arg1)
    print("********1110003 start")
end

function Quest11100:OnSubFinish1110008(arg1)
    print("********1110003 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:ClearSpeechBubbleTask()
    self:SafeDestroyQuestNpc(Crowd1Data.Alias, 3)
    self:SafeDestroyQuestNpc(Crowd2Data.Alias, 3)
    self:SafeDestroyQuestNpc(Crowd3Data.Alias, 3)
    self:SafeDestroyQuestNpc(cheatData.Alias, 3)
end

function Quest11100:Start() end
function Quest11100:OnDestroy() end
return Quest11100
