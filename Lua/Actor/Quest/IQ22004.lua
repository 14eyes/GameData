require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22004 = class("Quest22004", QuestActorProxy)
Quest22004.defaultAlias = "Quest22004"
local clientData
local mainID
local actorAlias
local subIDs
local actors
local datas

function Quest22004:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    actors = clientData.Actors
    datas = clientData.Datas
end

function Quest22004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2200401"] = self.OnSubStart2200401,
        ["2200402"] = self.OnSubStart2200402,
        ["2200403"] = self.OnSubStart2200403,
        ["2200404"] = self.OnSubStart2200404,
        ["2200405"] = self.OnSubStart2200405
    }
end

function Quest22004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2200401"] = self.OnSubFinish2200401,
        ["2200402"] = self.OnSubFinish2200402,
        ["2200403"] = self.OnSubFinish2200403,
        ["2200404"] = self.OnSubFinish2200404,
        ["2200405"] = self.OnSubFinish2200405
    }
end

function Quest22004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2200401"] = self.OnSubFailed2200401,
        ["2200402"] = self.OnSubFailed2200402,
        ["2200403"] = self.OnSubFailed2200403,
        ["2200404"] = self.OnSubFailed2200404,
        ["2200405"] = self.OnSubFailed2200405
    }
end

function Quest22004:BlackScreen(arg1)
    print("BlackScreen")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.Finishquest04, nil, nil, "")
end

function Quest22004:Finishquest04(arg1)
    print("Finishquest04")
    self:FinishQuestID(false, 2200404)
end

function Quest22004:ShowNarrator04(arg1)
    print("ShowNarrator04")
    self:NarratorOnlyTask(datas.PaimonReminder, self.BlackScreen)
end

function Quest22004:ShowNarrator02(arg1)
    print("ShowNarrator02")
    self:NarratorOnlyTask(datas.JiangXueReminder01)
end

function Quest22004:ShowNarrator03(arg1)
    print("ShowNarrator03")
    self:NarratorOnlyTask(datas.JiangXueReminder02)
end

function Quest22004:TurnCamera(arg1)
    print("TurnCamera")
    self:EnterSceneLookCamera(datas.CameraFocus, 1.5, 2, true, true)
    self:GetQuestNpcActor(actors.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest22004:ForceInteract(arg1)
    print("ForceInteract")
    self:RequestInteraction(actors.JiangXueData.alias)
end

function Quest22004:Start()
    print("Start")
end

function Quest22004:OnDestroy()
    print("OnDestroy")
end

function Quest22004:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        avatarForward.x = actors.JiangXueData.pos.x - avatarPos.x
        avatarForward.z = actors.JiangXueData.pos.z - avatarPos.z
        local n = (avatarForward.x ^ 2 + avatarForward.y ^ 2 + avatarForward.z ^ 2) ^ 0.5
        avatarForward.x = avatarForward.x / n
        avatarForward.z = avatarForward.z / n
        local x = avatarForward.x
        avatarForward.x = avatarForward.z * -1
        avatarForward.z = x
        avatarPos.x = 0.5 * (avatarPos.x + actors.JiangXueData.pos.x) + avatarForward.x * 1
        avatarPos.z = 0.5 * (avatarPos.z + actors.JiangXueData.pos.z) + avatarForward.z * 1
        avatarForward.x = actors.JiangXueData.pos.x - avatarPos.x
        avatarForward.z = actors.JiangXueData.pos.z - avatarPos.z
        self:CreateQuestNpcByIdWithPos(2200401, actors.PaimonData.id, 2, avatarPos, M.Dir2Euler(avatarForward))
    elseif arg1 == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        avatarForward.x = actors.JiangXueData.pos.x - avatarPos.x
        avatarForward.z = actors.JiangXueData.pos.z - avatarPos.z
        local n = (avatarForward.x ^ 2 + avatarForward.y ^ 2 + avatarForward.z ^ 2) ^ 0.5
        avatarForward.x = avatarForward.x / n
        avatarForward.z = avatarForward.z / n
        local x = avatarForward.x
        avatarForward.x = avatarForward.z * -1
        avatarForward.z = x
        avatarPos.x = 0.5 * (avatarPos.x + actors.JiangXueData.pos.x) + avatarForward.x * 1
        avatarPos.z = 0.5 * (avatarPos.z + actors.JiangXueData.pos.z) + avatarForward.z * 1
        avatarForward.x = actors.JiangXueData.pos.x - avatarPos.x
        avatarForward.z = actors.JiangXueData.pos.z - avatarPos.z
        self:CreateQuestNpcByIdWithPos(2200405, actors.PaimonData.id, 2, avatarPos, M.Dir2Euler(avatarForward))
    end
end

function Quest22004:OnSubStart2200401(arg1)
    print("OnSubStart2200401")
    self:CreateQuestNpc(arg1, actors.JiangXueData.id, 1)
    local questNpcActor = self:GetQuestNpcActor(actors.JiangXueData.alias)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(4220)
    self:NotifyTo(actors.JiangXueDailyData.alias, 1, true)
end

function Quest22004:OnSubFinish2200401(arg1)
    print("OnSubFinish2200401")
    self:ActionSafeCall(self.TurnCamera)
end

function Quest22004:OnSubFailed2200401(arg1)
    print("OnSubFailed2200401")
end

function Quest22004:OnSubStart2200402(arg1)
    print("OnSubStart2200402")
    self:CallDelay(3, self.ShowNarrator02)
    self:NotifyTo(actors.JiangXueDailyData.alias, 1, true)
end

function Quest22004:OnSubFinish2200402(arg1)
    print("OnSubFinish2200402")
end

function Quest22004:OnSubFailed2200402(arg1)
    print("OnSubFailed2200402")
end

function Quest22004:OnSubStart2200403(arg1)
    print("OnSubStart2200403")
    self:CallDelay(3, self.ShowNarrator03)
    self:NotifyTo(actors.JiangXueDailyData.alias, 1, true)
end

function Quest22004:OnSubFinish2200403(arg1)
    print("OnSubFinish2200403")
end

function Quest22004:OnSubFailed2200403(arg1)
    print("OnSubFailed2200403")
end

function Quest22004:OnSubStart2200404(arg1)
    print("OnSubStart2200404")
    self:CallDelay(10, self.ShowNarrator04)
    self:NotifyTo(actors.JiangXueDailyData.alias, 1, true)
end

function Quest22004:OnSubFinish2200404(arg1)
    print("OnSubFinish2200404")
end

function Quest22004:OnSubFailed2200404(arg1)
    print("OnSubFailed2200404")
end

function Quest22004:OnSubStart2200405(arg1)
    print("OnSubStart2200405")
    self:NotifyTo(actors.JiangXueDailyData.alias, 1, true)
end

function Quest22004:OnSubFinish2200405(arg1)
    print("OnSubFinish2200405")
    self.ActionSafeCall(self, function(arg1)
        self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1, arg2)
            self:GetQuestNpcActor(actors.PaimonData.alias):DestroyWithDisappear(false)
            self:GetQuestNpcActor(actors.JiangXueData.alias):Destroy(false)
            self:NotifyTo(actors.JiangXueDailyData.alias, 0, true)
        end)
    end)
end

function Quest22004:OnSubFailed2200405(arg1)
    print("OnSubFailed2200405")
    self:NotifyTo(actors.JiangXueDailyData.alias, 0, true)
end

function Quest22004:OnMainCanceled(arg1)
    self:GetQuestNpcActor(actors.JiangXueData.alias):Destroy(false)
    self:NotifyTo(actors.JiangXueDailyData.alias, 0, true)
end

return Quest22004
