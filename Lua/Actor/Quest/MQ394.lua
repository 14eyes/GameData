require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest394 = class("Quest394", QuestActorProxy)
Quest394.defaultAlias = "Quest394"
local clientData
local wendyData
local barbaraData
local qinData

function Quest394:OnDataLoaded()
    clientData = self.clientData
    wendyData = clientData.WendyData
    barbaraData = clientData.BarbaraData
    qinData = clientData.QinData
end

function Quest394:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["39401"] = self.OnSubStart39401
    self.subStartHandlers["39402"] = self.OnSubStart39402
    self.subStartHandlers["39403"] = self.OnSubStart39403
end

function Quest394:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["39401"] = self.OnSubFinish39401
    self.subFinishHandlers["39402"] = self.OnSubFinish39402
    self.subFinishHandlers["39403"] = self.OnSubFinish39403
end

function Quest394:On39403CutSceneFinish()
    self:ShowBlackScreen(0, 0.5, 0)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 39403)
    end

    globalActor:EnablePlayerInput(false)
    self:CallDelay(6, function(arg1)
        globalActor:EnablePlayerInput(true)
        arg1.TransmitPlayerWithTextByQuestId(arg1, 39403, 1, {"QUEST_Message_Q39801"}, 5, function()
            arg1:ShowBlackScreen(0.5, 2, 0.5)
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 39405)
            end
        end)
    end)
end

function Quest394:On39403CutSceneFinishRewind()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 39403)
    end

    self.TransmitPlayerWithTextByQuestId(self, 39403, 1, {"QUEST_Message_Q39801"}, 5, function()
        self:ShowBlackScreen(0.5, 2, 0.5)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 39405)
        end
    end)
end

function Quest394:OnSubStart39401(arg1)
    print("39401 start ")
end

function Quest394:OnSubStart39402(arg1)
    print("39402 start:...")
end

function Quest394:OnSubStart39403(arg1)
    print("39403 start:...")
    if self:GetQuestVar(arg1.QuestConfigId, 0) == 2 then
        globalActor:EnablePlayerInput(true)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 39403)
            actor:FinishQuestID(false, 39405)
        end
    else
        globalActor:EnablePlayerInput(false)
        self:CallDelay(7, function(arg1)
            globalActor:EnablePlayerInput(true)
            arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
                arg1:PlayCutsceneIndex(39403, arg1.On39403CutSceneFinish)
            end)
        end)
    end
end

function Quest394:OnSubFinish39401(arg1)
    print("OnFinished 39401")
end

function Quest394:OnSubFinish39402(arg1)
    print("OnFinished 39402")
end

function Quest394:OnSubFinish39403(arg1)
    print("OnFinished 39403")
end

function Quest394:Start() end
function Quest394:OnDestroy() end
return Quest394
