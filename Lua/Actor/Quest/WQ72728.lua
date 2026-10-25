require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72728 = class("Quest72728", QuestActorProxy)
Quest72728.defaultAlias = "Quest72728"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest72728:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72728:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7272801"] = self.OnSubStart7272801,
        ["7272803"] = self.OnSubStart7272803,
        ["7272802"] = self.OnSubStart7272802
    }
end

function Quest72728:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7272801"] = self.OnSubFinish7272801,
        ["7272803"] = self.OnSubFinish7272803,
        ["7272802"] = self.OnSubFinish7272802
    }
end

function Quest72728:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72728:Start()
    print("Start")
end

function Quest72728:OnDestroy()
    print("OnDestroy")
end

function Quest72728:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72728:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72728:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    actorMgr:DestroyEntityActor("Q72728Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q72728Trigger2", 3, false)
end

function Quest72728:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    this:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72728:OnSubStart7272801(arg1)
    print("OnSubStart7272801")
    if self.GetQuestVar(self, 7272801, 0) ~= 1 then
        self.AfterMainPageActiveSafeCall(self, function()
            self:CallDelay(0.1, function()
                self:ActionSafeCall(function()
                    actorUtils.ShowContext("BrickBreakerStagePage")
                    self:AfterMainPageActiveSafeCall(function()
                        actorMgr:CreateActorWithPos("Q72728Trigger", "Actor/Gadget/Q72728Trigger", 70900002, 0, {x = -2784.354, y = 224.731, z = -4432.913}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
                    end)
                end)
            end)
        end)
    else
        actorMgr:CreateActorWithPos("Q72728Trigger", "Actor/Gadget/Q72728Trigger", 70900002, 0, {x = -2784.354, y = 224.731, z = -4432.913}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    end
end

function Quest72728:OnSubFinish7272801(arg1)
    print("OnSubFinish7272801")
end

function Quest72728:OnSubStart7272803(arg1)
    print("OnSubStart7272803")
    this:AfterMainPageActiveSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function()
            this:CreateQuestNpcFaceToPlayer(7272803, 1005, 1)
            this:RequestInteraction(npcs.PaimonData.alias)
        end)
    end)
end

function Quest72728:OnSubFinish7272803(arg1)
    print("OnSubFinish7272803")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest72728:OnSubStart7272802(arg1)
    print("OnSubStart7272802")
    this:CreateQuestNpcWithTriggerBlack("Q72728Trigger2", 7272802, 1005, 0, 15, 1)
end

function Quest72728:OnSubFinish7272802(arg1)
    print("OnSubFinish7272802")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        this:ShowTutorialDialog(916)
    end)
end

return Quest72728
