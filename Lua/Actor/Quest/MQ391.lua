require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest391 = class("Quest391", QuestActorProxy)
Quest391.defaultAlias = "Quest391"
local Q391ClientConfig = require("Quest/Client/Q391ClientConfig")

local wendyData = Q391ClientConfig.WendyData
local dilucData = Q391ClientConfig.DilucData
local qinData = Q391ClientConfig.QinData
local paimonData = Q391ClientConfig.PaimonData
local organData = Q391ClientConfig.OrganData

function Quest391:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["39101"] = self.OnSubStart39101
    self.subStartHandlers["39102"] = self.OnSubStart39102
    self.subStartHandlers["39103"] = self.OnSubStart39103
    self.subStartHandlers["39104"] = self.OnSubStart39104
    self.subStartHandlers["39105"] = self.OnSubStart39105
    self.subStartHandlers["39106"] = self.OnSubStart39106
    self.subStartHandlers["39107"] = self.OnSubStart39107
    self.subStartHandlers["39108"] = self.OnSubStart39108
    self.subStartHandlers["39109"] = self.OnSubStart39109
    self.subStartHandlers["39110"] = self.OnSubStart39110
    self.subStartHandlers["39111"] = self.OnSubStart39111
end

function Quest391:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["39101"] = self.OnSubFinish39101
    self.subFinishHandlers["39102"] = self.OnSubFinish39102
    self.subFinishHandlers["39103"] = self.OnSubFinish39103
    self.subFinishHandlers["39104"] = self.OnSubFinish39104
    self.subFinishHandlers["39105"] = self.OnSubFinish39105
    self.subFinishHandlers["39106"] = self.OnSubFinish39106
    self.subFinishHandlers["39107"] = self.OnSubFinish39107
    self.subFinishHandlers["39108"] = self.OnSubFinish39108
    self.subFinishHandlers["39109"] = self.OnSubFinish39109
    self.subFinishHandlers["39110"] = self.OnSubFinish39110
    self.subFinishHandlers["39111"] = self.OnSubFinish39111
end

function Quest391:FindOrganNarrator()
    local subQuestState = self:GetSubQuestState(39001)
    local v = self:GetSubQuestState(39101)
    local subQuestState2 = self:GetSubQuestState(39201)
    local n = subQuestState + v + subQuestState2
    print(subQuestState .. "|" .. v .. "|" .. subQuestState2)
    if n == 7 then
        self:NarratorOnlyTask(Q391ClientConfig.NarratorData.FindOrgan1)
        self:EnterSceneLookCamera(organData.bornPos, 0, 3, true)
    end
end

function Quest391:FindOrganTalk()
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({wendyData.Wendy, qinData.Qin, dilucData.Diluc, paimonData.Paimon})
    self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q391Player").pos, sceneData:GetDummyPoint(3, "Q391Player").rot, self.RequestTalk, function(arg1)
        actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
        actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
        actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
        actorMgr:CreateActorWithPos(paimonData.Paimon, paimonData.PaimonScript, paimonData.PaimonID, 0, paimonData.bornPos, paimonData.bornDir, true)
    end, entityCreateTask)
end

function Quest391:RequestTalk()
    local subQuestState = self:GetSubQuestState(39003)
    local n = self:GetSubQuestState(39103)
    local v = self:GetSubQuestState(39203)
    print(subQuestState .. "|" .. n .. "|" .. v)
    if subQuestState == 0 then
        subQuestState = 2
    end

    if n == 0 then
        n = 2
    end

    if v == 0 then
        v = 2
    end

    local n2 = subQuestState + n + v
    print(subQuestState .. "|" .. n .. "|" .. v .. "|" .. n2)
    if n2 == 6 then
        self:RequestInteraction(wendyData.Wendy)
    elseif n2 == 7 then
        self:RequestInteraction(qinData.Qin)
    elseif n2 == 8 then
        self:RequestInteraction(dilucData.Diluc)
    end
end

function Quest391:FindClueNarrator()
    local subQuestState = self:GetSubQuestState(39104)
    local v = self:GetSubQuestState(39105)
    local subQuestState2 = self:GetSubQuestState(39106)
    local n = subQuestState + v + subQuestState2
    print("\229\133\137\230\157\159\230\149\176\233\135\143" .. subQuestState .. "|" .. v .. "|" .. subQuestState2 .. "|" .. n)
    local subQuestState3 = self:GetSubQuestState(39007)
    local subQuestState4 = self:GetSubQuestState(39107)
    local subQuestState5 = self:GetSubQuestState(39207)
    if subQuestState3 == 0 then
        subQuestState3 = 2
    end

    if subQuestState4 == 0 then
        subQuestState4 = 2
    end

    if subQuestState5 == 0 then
        subQuestState5 = 2
    end

    local n2 = subQuestState3 + subQuestState4 + subQuestState5
    print("\230\156\186\229\133\179\230\149\176\233\135\143" .. subQuestState3 .. "|" .. subQuestState4 .. "|" .. subQuestState5 .. "|" .. n2)
    if n2 == 6 then
        if n == 7 then
            self:NarratorOnlyTask(Q391ClientConfig.NarratorData.FindClue1_1)
        elseif n == 9 then
            self:PlayCutscene(Q391ClientConfig.SealAppearTimeCfg, function(arg1)
                arg1:NarratorOnlyTask(Q391ClientConfig.NarratorData.FindClue1_3)
            end)
        end
    elseif n2 == 7 then
        if n == 8 then
            self:NarratorOnlyTask(Q391ClientConfig.NarratorData.FindClue2_2)
        elseif n == 9 then
            self:PlayCutscene(Q391ClientConfig.SealAppearTimeCfg)
        end
    elseif n2 == 8 and n == 9 then
        self:PlayCutscene(Q391ClientConfig.SealAppearTimeCfg, function(arg1)
            arg1:NarratorOnlyTask(Q391ClientConfig.NarratorData.FindClue3_3)
        end)
    end
end

function Quest391:SealOpenCutscene()
    local subQuestState = self:GetSubQuestState(39008)
    local n = self:GetSubQuestState(39108)
    local v = self:GetSubQuestState(39208)
    print(subQuestState .. "|" .. n .. "|" .. v)
    if subQuestState == 0 then
        subQuestState = 2
    end

    if n == 0 then
        n = 2
    end

    if v == 0 then
        v = 2
    end

    local n2 = subQuestState + n + v
    print(subQuestState .. "|" .. n .. "|" .. v .. "|" .. n2)
    if n2 == 7 then
        self:PlayCutscene(Q391ClientConfig.SealOpenTimeCfg1, function(arg1)
            arg1:NarratorOnlyTask(Q391ClientConfig.NarratorData.OpenOrgan1)
        end)
    elseif n2 == 8 then
        self:PlayCutscene(Q391ClientConfig.SealOpenTimeCfg2, function(arg1)
            arg1:NarratorOnlyTask(Q391ClientConfig.NarratorData.OpenOrgan2)
        end)
    elseif n2 == 9 then
        self:PlayCutscene(Q391ClientConfig.SealOpenTimeCfg3, function(arg1)
            arg1:CallDelay(1, function(arg1)
                arg1:NarratorOnlyTask(Q391ClientConfig.NarratorData.OpenOrgan3)
                arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q389VentiPos2").pos, 0, 3, true)
            end)
        end)
    end
end

function Quest391:DestroyNPC()
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor(wendyData.Wendy)
        local v = actorMgr:GetActor(dilucData.Diluc)
        local actor2 = actorMgr:GetActor(qinData.Qin)
        local actor3 = actorMgr:GetActor(paimonData.Paimon)
        if actor ~= nil then
            actor:Destroy(false)
        end

        if v ~= nil then
            v:Destroy(false)
        end

        if actor2 ~= nil then
            actor2:Destroy(false)
        end

        if actor3 ~= nil then
            actor3:Destroy(false)
        end
    end)
end

function Quest391:OnSubStart39101(arg1)
    print("39101 start ")
end

function Quest391:OnSubStart39102(arg1)
    print("39102 start:...")
end

function Quest391:OnSubStart39103(arg1)
    print("39103 start:...")
end

function Quest391:OnSubStart39104(arg1)
    print("39104 start:...")
end

function Quest391:OnSubStart39105(arg1)
    print("39105 start:...")
end

function Quest391:OnSubStart39106(arg1)
    print("39106 start:...")
end

function Quest391:OnSubStart39107(arg1)
    print("39107 start:play cutscene & finish quest")
    local actor = actorMgr:GetActor(Q391ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 39110)
        actor:FinishQuestID(false, 39111)
        actor:FinishQuest(false, nil)
    end
end

function Quest391:OnSubStart39108(arg1)
    print("39108 start:...")
end

function Quest391:OnSubStart39109(arg1)
    print("39109 start:...")
    local actor = actorMgr:GetActor(Q391ClientConfig.ActorAlias)
    if actor ~= nil then
        self:CallDelay(1.5, function(arg1)
            actor:FinishQuest(false, nil)
        end)
    end
end

function Quest391:OnSubStart39110(arg1)
    print("39110 start:...")
end

function Quest391:OnSubFinish39101(arg1)
    print("39101 Finish:Focus Camera & Narrator")
    self:FindOrganNarrator()
end

function Quest391:OnSubFinish39102(arg1)
    print("39102 Finish:...")
    self:FindOrganTalk()
end

function Quest391:OnSubFinish39103(arg1)
    print("39103 Finish:...")
    self:ActionSafeCall(self.DestroyNPC)
end

function Quest391:OnSubFinish39104(arg1)
    print("39104 Finish:...")
    self:FindClueNarrator()
end

function Quest391:OnSubFinish39105(arg1)
    print("39105 Finish:...")
    self:FindClueNarrator()
end

function Quest391:OnSubFinish39106(arg1)
    print("39106 Finish:...")
    self:FindClueNarrator()
end

function Quest391:OnSubFinish39107(arg1)
    print("39107 Finish:...")
end

function Quest391:OnSubFinish39108(arg1)
    print("39108 Finish:...")
    self:SealOpenCutscene()
end

function Quest391:OnSubFinish39109(arg1)
    print("39109 Finish:...")
end

function Quest391:OnSubFinish39110(arg1)
    print("39110 Finish:...")
end

function Quest391:Start() end
function Quest391:OnDestroy() end
return Quest391
