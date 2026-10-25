require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest392 = class("Quest392", QuestActorProxy)
Quest392.defaultAlias = "Quest392"
local Q392ClientConfig = require("Quest/Client/Q392ClientConfig")

local wendyData = Q392ClientConfig.WendyData
local dilucData = Q392ClientConfig.DilucData
local qinData = Q392ClientConfig.QinData
local paimonData = Q392ClientConfig.PaimonData
local organData = Q392ClientConfig.OrganData

function Quest392:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["39201"] = self.OnSubStart39201
    self.subStartHandlers["39202"] = self.OnSubStart39202
    self.subStartHandlers["39203"] = self.OnSubStart39203
    self.subStartHandlers["39204"] = self.OnSubStart39204
    self.subStartHandlers["39205"] = self.OnSubStart39205
    self.subStartHandlers["39206"] = self.OnSubStart39206
    self.subStartHandlers["39207"] = self.OnSubStart39207
    self.subStartHandlers["39208"] = self.OnSubStart39208
    self.subStartHandlers["39209"] = self.OnSubStart39209
    self.subStartHandlers["39210"] = self.OnSubStart39210
    self.subStartHandlers["39211"] = self.OnSubStart39211
end

function Quest392:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["39201"] = self.OnSubFinish39201
    self.subFinishHandlers["39202"] = self.OnSubFinish39202
    self.subFinishHandlers["39203"] = self.OnSubFinish39203
    self.subFinishHandlers["39204"] = self.OnSubFinish39204
    self.subFinishHandlers["39205"] = self.OnSubFinish39205
    self.subFinishHandlers["39206"] = self.OnSubFinish39206
    self.subFinishHandlers["39207"] = self.OnSubFinish39207
    self.subFinishHandlers["39208"] = self.OnSubFinish39208
    self.subFinishHandlers["39209"] = self.OnSubFinish39209
    self.subFinishHandlers["39210"] = self.OnSubFinish39210
    self.subFinishHandlers["39211"] = self.OnSubFinish39211
end

function Quest392:FindOrganNarrator()
    local subQuestState = self:GetSubQuestState(39001)
    local v = self:GetSubQuestState(39101)
    local subQuestState2 = self:GetSubQuestState(39201)
    local n = subQuestState + v + subQuestState2
    print(subQuestState .. "|" .. v .. "|" .. subQuestState2)
    if n == 7 then
        self:NarratorOnlyTask(Q392ClientConfig.NarratorData.FindOrgan1)
        self:EnterSceneLookCamera(organData.bornPos, 0, 3, true)
    end
end

function Quest392:FindOrganTalk()
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({wendyData.Wendy, qinData.Qin, dilucData.Diluc, paimonData.Paimon})
    self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q392Player").pos, sceneData:GetDummyPoint(3, "Q392Player").rot, self.RequestTalk, function(arg1)
        actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos, wendyData.bornDir, true)
        actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true)
        actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true)
        actorMgr:CreateActorWithPos(paimonData.Paimon, paimonData.PaimonScript, paimonData.PaimonID, 0, paimonData.bornPos, paimonData.bornDir, true)
    end, entityCreateTask)
end

function Quest392:RequestTalk()
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

function Quest392:FindClueNarrator()
    local subQuestState = self:GetSubQuestState(39204)
    local v = self:GetSubQuestState(39205)
    local subQuestState2 = self:GetSubQuestState(39206)
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
            self:NarratorOnlyTask(Q392ClientConfig.NarratorData.FindClue1_1)
        elseif n == 9 then
            self:PlayCutscene(Q392ClientConfig.SealAppearTimeCfg, function(arg1)
                arg1:NarratorOnlyTask(Q392ClientConfig.NarratorData.FindClue1_3)
            end)
        end
    elseif n2 == 7 then
        if n == 8 then
            self:NarratorOnlyTask(Q392ClientConfig.NarratorData.FindClue2_2)
        elseif n == 9 then
            self:PlayCutscene(Q392ClientConfig.SealAppearTimeCfg)
        end
    elseif n2 == 8 and n == 9 then
        self:PlayCutscene(Q392ClientConfig.SealAppearTimeCfg, function(arg1)
            arg1:NarratorOnlyTask(Q392ClientConfig.NarratorData.FindClue3_3)
        end)
    end
end

function Quest392:SealOpenCutscene()
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
        self:PlayCutscene(Q392ClientConfig.SealOpenTimeCfg1, function(arg1)
            arg1:NarratorOnlyTask(Q392ClientConfig.NarratorData.OpenOrgan1)
        end)
    elseif n2 == 8 then
        self:PlayCutscene(Q392ClientConfig.SealOpenTimeCfg2, function(arg1)
            arg1:NarratorOnlyTask(Q392ClientConfig.NarratorData.OpenOrgan2)
        end)
    elseif n2 == 9 then
        self:PlayCutscene(Q392ClientConfig.SealOpenTimeCfg3, function(arg1)
            arg1:CallDelay(1, function(arg1)
                arg1:NarratorOnlyTask(Q392ClientConfig.NarratorData.OpenOrgan3)
                arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q389VentiPos2").pos, 0, 3, true)
            end)
        end)
    end
end

function Quest392:DestroyNPC()
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

function Quest392:OnSubStart39201(arg1)
    print("39201 start ")
end

function Quest392:OnSubStart39202(arg1)
    print("39202 start:...")
end

function Quest392:OnSubStart39203(arg1)
    print("39203 start:...")
end

function Quest392:OnSubStart39204(arg1)
    print("39204 start:...")
end

function Quest392:OnSubStart39205(arg1)
    print("39205 start:...")
end

function Quest392:OnSubStart39206(arg1)
    print("39206 start:...")
end

function Quest392:OnSubStart39207(arg1)
    print("39207 start:play cutscene & finish quest")
    local actor = actorMgr:GetActor(Q392ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 39210)
        actor:FinishQuestID(false, 39211)
        actor:FinishQuest(false, nil)
    end
end

function Quest392:OnSubStart39208(arg1)
    print("39208 start:...")
end

function Quest392:OnSubStart39209(arg1)
    print("39209 start:...")
    local actor = actorMgr:GetActor(Q392ClientConfig.ActorAlias)
    if actor ~= nil then
        self:CallDelay(1.5, function(arg1)
            actor:FinishQuest(false, nil)
        end)
    end
end

function Quest392:OnSubStart39210(arg1)
    print("39210 start:...")
end

function Quest392:OnSubFinish39201(arg1)
    print("39201 Finish:Focus Camera & Narrator")
    self:FindOrganNarrator()
end

function Quest392:OnSubFinish39202(arg1)
    print("39202 Finish:...")
    self:FindOrganTalk()
end

function Quest392:OnSubFinish39203(arg1)
    print("39203 Finish:...")
    self:ActionSafeCall(self.DestroyNPC)
end

function Quest392:OnSubFinish39204(arg1)
    print("39204 Finish:...")
    self:FindClueNarrator()
end

function Quest392:OnSubFinish39205(arg1)
    print("39205 Finish:...")
    self:FindClueNarrator()
end

function Quest392:OnSubFinish39206(arg1)
    print("39206 Finish:...")
    self:FindClueNarrator()
end

function Quest392:OnSubFinish39207(arg1)
    print("39207 Finish:...")
end

function Quest392:OnSubFinish39208(arg1)
    print("39208 Finish:...")
    self:SealOpenCutscene()
end

function Quest392:OnSubFinish39209(arg1)
    print("39209 Finish:...")
end

function Quest392:OnSubFinish39210(arg1)
    print("39210 Finish:...")
end

function Quest392:Start() end
function Quest392:OnDestroy() end
return Quest392
