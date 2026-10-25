require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75097 = class("Quest75097", QuestActorProxy)
Quest75097.defaultAlias = "Quest75097"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75097:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75097:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7509701"] = self.OnSubStart7509701,
        ["7509702"] = self.OnSubStart7509702,
        ["7509703"] = self.OnSubStart7509703,
        ["7509704"] = self.OnSubStart7509704,
        ["7509705"] = self.OnSubStart7509705,
        ["7509706"] = self.OnSubStart7509706
    }
end

function Quest75097:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7509701"] = self.OnSubFinish7509701,
        ["7509702"] = self.OnSubFinish7509702,
        ["7509703"] = self.OnSubFinish7509703,
        ["7509704"] = self.OnSubFinish7509704,
        ["7509705"] = self.OnSubFinish7509705,
        ["7509706"] = self.OnSubFinish7509706
    }
end

function Quest75097:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75097:Start()
    print("Start")
end

function Quest75097:OnDestroy()
    print("OnDestroy")
end

function Quest75097:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75097:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75097:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75097:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:ActionSafeCall(function(arg1)
            arg1:GetQuestNpcActor("Paimon"):DestroyWithDisappear(false)
        end)
    end
end

function Quest75097:CreateQuestNpcBesidePlayer(arg1, arg2, arg3, arg4)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local v = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + n * arg2
    avatarPos.z = avatarPos.z + v * arg2
    this:CreateQuestNpcByIdWithPos(arg3, arg1, arg4, avatarPos, avatarForward)
end

function Quest75097:OnSubStart7509701(arg1)
    print("OnSubStart7509701")
end

function Quest75097:OnSubFinish7509701(arg1)
    print("OnSubFinish7509701")
end

function Quest75097:OnSubStart7509702(arg1)
    print("OnSubStart7509702")
end

function Quest75097:OnSubFinish7509702(arg1)
    print("OnSubFinish7509702")
end

function Quest75097:OnSubStart7509703(arg1)
    print("OnSubStart7509703")
end

function Quest75097:OnSubFinish7509703(arg1)
    print("OnSubFinish7509703")
end

function Quest75097:OnSubStart7509704(arg1)
    print("OnSubStart7509704")
    if self:GetQuestVar(7509704, 0) == 1 then
        actorUtils.FinishQuestID(false, 7509704)
        return
    end

    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            this:CreateQuestNpcBesidePlayer(1005, -0.8, 7509704, 0)
            this:RequestInteraction(npcs.Paimon.alias, "", true)
        end)
    end)
end

function Quest75097:OnSubFinish7509704(arg1)
    print("OnSubFinish7509704")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor("Paimon"):DestroyWithDisappear(false)
    end)
end

function Quest75097:OnSubStart7509705(arg1)
    print("OnSubStart7509705")
    if self:GetQuestVar(7509705, 0) == 1 then
        actorUtils.FinishQuestID(false, 7509705)
        return
    end

    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            this:CreateQuestNpcBesidePlayer(1005, -0.8, 7509705, 0)
            this:RequestInteraction(npcs.Paimon.alias, "", true)
        end)
    end)
end

function Quest75097:OnSubFinish7509705(arg1)
    print("OnSubFinish7509705")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor("Paimon"):DestroyWithDisappear(false)
    end)
end

function Quest75097:OnSubStart7509706(arg1)
    print("OnSubStart7509706")
    if self:GetSubQuestState(7510101) == 3 then
        actorUtils.FinishQuestID(false, 7509706)
        return
    end

    if self:GetQuestVar(7509706, 0) == 1 then
        actorUtils.FinishQuestID(false, 7509706)
        return
    end

    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            this:CreateQuestNpcBesidePlayer(1005, -0.8, 7509706, 0)
            this:RequestInteraction(npcs.Paimon.alias, "", true)
        end)
    end)
end

function Quest75097:OnSubFinish7509706(arg1)
    print("OnSubFinish7509706")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor("Paimon"):DestroyWithDisappear(false)
    end)
end

return Quest75097
