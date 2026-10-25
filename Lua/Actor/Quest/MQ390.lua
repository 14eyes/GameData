require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest390 = class("Quest390", QuestActorProxy)
Quest390.defaultAlias = "Quest390"
local clientData
local wendyData
local dilucData
local qinData
local paimonData
local organData

function Quest390:OnDataLoaded()
    clientData = self.clientData
    wendyData = clientData.WendyData
    dilucData = clientData.DilucData
    qinData = clientData.QinData
    paimonData = clientData.PaimonData
    organData = clientData.OrganData
end

function Quest390:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["39001"] = self.OnSubStart39001
    self.subStartHandlers["39002"] = self.OnSubStart39002
    self.subStartHandlers["39003"] = self.OnSubStart39003
    self.subStartHandlers["39004"] = self.OnSubStart39004
    self.subStartHandlers["39005"] = self.OnSubStart39005
    self.subStartHandlers["39006"] = self.OnSubStart39006
    self.subStartHandlers["39007"] = self.OnSubStart39007
    self.subStartHandlers["39008"] = self.OnSubStart39008
    self.subStartHandlers["39009"] = self.OnSubStart39009
    self.subStartHandlers["39010"] = self.OnSubStart39010
    self.subStartHandlers["39011"] = self.OnSubStart39011
end

function Quest390:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["39001"] = self.OnSubFinish39001
    self.subFinishHandlers["39002"] = self.OnSubFinish39002
    self.subFinishHandlers["39003"] = self.OnSubFinish39003
    self.subFinishHandlers["39004"] = self.OnSubFinish39004
    self.subFinishHandlers["39005"] = self.OnSubFinish39005
    self.subFinishHandlers["39006"] = self.OnSubFinish39006
    self.subFinishHandlers["39007"] = self.OnSubFinish39007
    self.subFinishHandlers["39008"] = self.OnSubFinish39008
    self.subFinishHandlers["39009"] = self.OnSubFinish39009
    self.subFinishHandlers["39010"] = self.OnSubFinish39010
    self.subFinishHandlers["39011"] = self.OnSubFinish39011
end

function Quest390:FindOrganNarrator()
    local subQuestState = self:GetSubQuestState(39001)
    local v = self:GetSubQuestState(39101)
    local subQuestState2 = self:GetSubQuestState(39201)
    local n = subQuestState + v + subQuestState2
    print(subQuestState .. "|" .. v .. "|" .. subQuestState2)
    if n == 7 then
        self:NarratorOnlyTaskLegacy(clientData.NarratorData.FindOrgan1)
        self:EnterSceneLookCamera(organData.bornPos, 0, 3, true)
    end
end

function Quest390:FindOrganTalk() end

function Quest390:RequestTalk()
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

function Quest390:FindClueNarrator()
    local subQuestState = self:GetSubQuestState(39004)
    local v = self:GetSubQuestState(39005)
    local subQuestState2 = self:GetSubQuestState(39006)
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
            self:NarratorOnlyTaskLegacy(clientData.NarratorData.FindClue1_1)
        elseif n == 9 then
            self:PlayCutscene(clientData.SealAppearTimeCfg, function(arg1)
                arg1:NarratorOnlyTaskLegacy(clientData.NarratorData.FindClue1_3)
            end)
        end
    elseif n2 == 7 then
        if n == 8 then
            self:NarratorOnlyTaskLegacy(clientData.NarratorData.FindClue2_2)
        elseif n == 9 then
            self:PlayCutscene(clientData.SealAppearTimeCfg)
        end
    elseif n2 == 8 and n == 9 then
        self:PlayCutscene(clientData.SealAppearTimeCfg, function(arg1)
            arg1:NarratorOnlyTaskLegacy(clientData.NarratorData.FindClue3_3)
        end)
    end
end

function Quest390:SealOpenCutscene()
    local subQuestState = self:GetSubQuestState(39005)
    local n = self:GetSubQuestState(39006)
    local v = self:GetSubQuestState(39007)
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
        self:PlayCutscene(clientData.SealOpenTimeCfg1, function(arg1)
            arg1:NarratorOnlyTaskLegacy(clientData.NarratorData.OpenOrgan1)
        end)
    elseif n2 == 8 then
        self:PlayCutscene(clientData.SealOpenTimeCfg2, function(arg1)
            arg1:NarratorOnlyTaskLegacy(clientData.NarratorData.OpenOrgan2)
        end)
    elseif n2 == 9 then
        self:PlayCutscene(clientData.SealOpenTimeCfg3, function(arg1)
            arg1:CallDelay(1, function(arg1)
                arg1:NarratorOnlyTaskLegacy(clientData.NarratorData.OpenOrgan3)
                arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q389VentiPos2").pos, 0, 3, true)
            end)
        end)
    end
end

function Quest390:DestroyNPC()
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
            actor3:DestroyWithDisappear(false)
        end
    end)
end

function Quest390:OnSubStart39001(arg1)
    print("39001 start ")
end

function Quest390:OnSubStart39002(arg1)
    print("39002 start:...")
end

function Quest390:OnSubStart39003(arg1)
    print("39003 start:...")
    self:CreateQuestNpc(arg1, wendyData.WendyID)
    self:CreateQuestNpc(arg1, dilucData.DilucID)
    self:CreateQuestNpc(arg1, qinData.QinID)
end

function Quest390:OnSubStart39004(arg1)
    print("39004 start:...")
    self:CallDelay(7, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest390:OnSubStart39005(arg1)
    print("39005 start:...")
end

function Quest390:OnSubStart39006(arg1)
    print("39006 start:...")
end

function Quest390:OnSubStart39007(arg1)
    print("39007 start:play cutscene & finish quest")
end

function Quest390:OnSubStart39008(arg1)
    print("39008 start:...")
end

function Quest390:OnSubStart39009(arg1)
    print("39009 start:...")
end

function Quest390:OnSubStart39010(arg1)
    print("39010 start:...")
end

function Quest390:OnSubFinish39001(arg1)
    print("39001 Finish:Focus Camera & Narrator")
end

function Quest390:OnSubFinish39002(arg1)
    print("39002 Finish:...")
end

function Quest390:OnSubFinish39003(arg1)
    print("39003 Finish:Camera Look")
    globalActor:EnablePlayerInput(false)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q390Target2").pos, 0, 2, true)
    self:CallDelay(2, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q394Target1").pos, 0, 3, true)
    end)

    self:CallDelay(5, function(arg1)
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest390:OnSubFinish39004(arg1)
    print("39004 Finish:...")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest390:OnSubFinish39005(arg1)
    print("39005 Finish:...")
    self:CallDelay(3, self.SealOpenCutscene)
end

function Quest390:OnSubFinish39006(arg1)
    print("39006 Finish:...")
    self:CallDelay(3, self.SealOpenCutscene)
end

function Quest390:OnSubFinish39007(arg1)
    print("39007 Finish:...")
    self:CallDelay(3, self.SealOpenCutscene)
end

function Quest390:OnSubFinish39008(arg1)
    print("39008 Finish:...")
end

function Quest390:OnSubFinish39009(arg1)
    print("39009 Finish:...")
end

function Quest390:OnSubFinish39010(arg1)
    print("39010 Finish:...")
end

function Quest390:Start() end
function Quest390:OnDestroy() end
return Quest390
