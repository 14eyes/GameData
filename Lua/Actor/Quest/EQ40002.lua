require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40002 = class("Quest40002", QuestActorProxy)
Quest40002.defaultAlias = "Quest40002"
local clientData
local playerData
local paimonData
local narratorData
local gadget1Data
local setPointData
local searchPoint1
local searchPoint2
local searchPoint3
local searchGadget

function Quest40002:OnDataLoaded()
    clientData = self.clientData
    playerData = clientData.PlayerData
    paimonData = clientData.PaimonData
    narratorData = clientData.NarratorData
    gadget1Data = clientData.Gadget1Data
    setPointData = clientData.SetPointData
    searchPoint1 = clientData.SearchPoint1
    searchPoint2 = clientData.SearchPoint2
    searchPoint3 = clientData.SearchPoint3
    searchGadget = clientData.SearchGadget
end

function Quest40002:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000201"] = self.OnSubStart4000201
    self.subStartHandlers["4000202"] = self.OnSubStart4000202
    self.subStartHandlers["4000203"] = self.OnSubStart4000203
    self.subStartHandlers["4000204"] = self.OnSubStart4000204
    self.subStartHandlers["4000205"] = self.OnSubStart4000205
    self.subStartHandlers["4000206"] = self.OnSubStart4000206
    self.subStartHandlers["4000208"] = self.OnSubStart4000208
    self.subStartHandlers["4000209"] = self.OnSubStart4000209
    self.subStartHandlers["4000210"] = self.OnSubStart4000210
    self.subStartHandlers["4000211"] = self.OnSubStart4000211
    self.subStartHandlers["4000212"] = self.OnSubStart4000212
    self.subStartHandlers["4000213"] = self.OnSubStart4000213
    self.subStartHandlers["4000214"] = self.OnSubStart4000214
    self.subStartHandlers["4000215"] = self.OnSubStart4000215
end

function Quest40002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4000201"] = self.OnSubFinish4000201
    self.subFinishHandlers["4000202"] = self.OnSubFinish4000202
    self.subFinishHandlers["4000203"] = self.OnSubFinish4000203
    self.subFinishHandlers["4000204"] = self.OnSubFinish4000204
    self.subFinishHandlers["4000205"] = self.OnSubFinish4000205
    self.subFinishHandlers["4000206"] = self.OnSubFinish4000206
    self.subFinishHandlers["4000208"] = self.OnSubFinish4000208
    self.subFinishHandlers["4000209"] = self.OnSubFinish4000209
    self.subFinishHandlers["4000210"] = self.OnSubFinish4000210
    self.subFinishHandlers["4000211"] = self.OnSubFinish4000211
    self.subFinishHandlers["4000212"] = self.OnSubFinish4000212
    self.subFinishHandlers["4000213"] = self.OnSubFinish4000213
    self.subFinishHandlers["4000214"] = self.OnSubFinish4000214
    self.subFinishHandlers["4000215"] = self.OnSubFinish4000215
end

function Quest40002:OnSubStart4000201(arg1)
    print("4000201 OnStart")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest40002:OnSubFinish4000201(arg1)
    print("4000201 OnFinished")
    self:NarratorOnlyTaskLegacy(narratorData.Story1, nil, "StoryCut")
end

function Quest40002:OnSubFinish4000202(arg1)
    print("4000201 OnFinished")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest40002:OnSubStart4000205(arg1)
    print("4000205 OnFinished")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4000216)
    end
end

function Quest40002:OnSubFinish4000205(arg1)
    print("4000205 OnFinished")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest40002:OnSubFinish4000206(arg1)
    print("4000206 OnFinish")
    globalActor:EnablePlayerInput(false)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q40007_ThiefRout1").pos, 0, 2, true, true)
    self:NarratorOnlyTaskLegacy(narratorData.Story5, nil, "Story")
end

function Quest40002:OnSubStart4000207(arg1)
    print("4000207 OnStart")
end

function Quest40002:OnSubFinish4000207(arg1)
    print("4000207 OnFinished")
end

function Quest40002:OnSubStart4000208(arg1)
    print("4000208 OnStart")
    self:CallDelay(2, function()
        globalActor:EnablePlayerInput(true)
    end)

    self:SetQuestVar(arg1.QuestConfigId, 0, 1)
end

function Quest40002:OnSubStart4000209(arg1)
    print("4000209 OnStart")
    self:SpawnGadget(arg1, searchGadget.ID1, 1)
end

function Quest40002:OnSubFinish4000209(arg1)
    print("4000209 OnFinish")
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    if questVar == 1 then
        self:NarratorOnlyTaskLegacy(narratorData.Story2, nil, "Story")
    elseif questVar == 2 then
        self:NarratorOnlyTaskLegacy(narratorData.Story3, nil, "Story")
    end

    local n = questVar + 1
    self:SetQuestVar(arg1.QuestConfigId, 0, n)
end

function Quest40002:OnSubStart4000210(arg1)
    print("4000210 OnStart")
    self:SpawnGadget(arg1, searchGadget.ID2, 1)
end

function Quest40002:OnSubFinish4000210(arg1)
    print("4000210 OnFinish")
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    if questVar == 1 then
        self:NarratorOnlyTaskLegacy(narratorData.Story2, nil, "Story")
    elseif questVar == 2 then
        self:NarratorOnlyTaskLegacy(narratorData.Story3, nil, "Story")
    end

    local n = questVar + 1
    self:SetQuestVar(arg1.QuestConfigId, 0, n)
end

function Quest40002:OnSubStart4000211(arg1)
    print("4000211 OnStart")
    self:SpawnGadget(arg1, searchGadget.ID3, 1)
end

function Quest40002:OnSubFinish4000211(arg1)
    print("4000211 OnFinish")
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    if questVar == 1 then
        self:NarratorOnlyTaskLegacy(narratorData.Story2, nil, "Story")
    elseif questVar == 2 then
        self:NarratorOnlyTaskLegacy(narratorData.Story3, nil, "Story")
    end

    local n = questVar + 1
    self:SetQuestVar(arg1.QuestConfigId, 0, n)
end

function Quest40002:OnSubFinish4000212(arg1)
    print("4000212 OnFinish")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4000213)
    end
end

function Quest40002:OnSubStart4000214(arg1)
    print("4000214 OnStart")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask({paimonData.Alias})
    self:ShowBlackScreen(0.5, 1, 0.5)
    self:TransmitPlayer(3, playerData.BornPos, playerData.BornDir, nil, function(arg1_2)
        arg1_2.CallDelay(arg1_2, 2, function()
            arg1_2:CreateQuestNpc(arg1, paimonData.ID)
            arg1_2:RequestInteraction(paimonData.Alias)
        end)
    end, questNpcCreateTask)
end

function Quest40002:OnSubFinish4000214(arg1)
    print("4000214 OnFinished")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest40002:OnSubFinish4000215(arg1)
    print("4000215 OnFinished")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest40002:Start() end
function Quest40002:OnDestroy() end
return Quest40002
