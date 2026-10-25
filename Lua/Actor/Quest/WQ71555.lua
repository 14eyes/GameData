require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71555 = class("Quest71555", QuestActorProxy)
Quest71555.defaultAlias = "Quest71555"
local clientData
local subIDs
local paimon
local npc20088Data
local subQuestState
local v
local subQuestState2
local n
local npc20088DataB

function Quest71555:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimon = clientData.Paimon
    npc20088Data = clientData.Npc20088Data
    npc20088DataB = clientData.Npc20088DataB
end

function Quest71555:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7155501"] = self.OnSubStart7155501,
        ["7155502"] = self.OnSubStart7155502,
        ["7155503"] = self.OnSubStart7155503,
        ["7155504"] = self.OnSubStart7155504,
        ["7155505"] = self.OnSubStart7155505,
        ["7155506"] = self.OnSubStart7155506,
        ["7155507"] = self.OnSubStart7155507,
        ["7155508"] = self.OnSubStart7155508,
        ["7155509"] = self.OnSubStart7155509,
        ["7155510"] = self.OnSubStart7155510,
        ["7155511"] = self.OnSubStart7155511,
        ["7155512"] = self.OnSubStart7155512,
        ["7155514"] = self.OnSubStart7155514,
        ["7155515"] = self.OnSubStart7155515,
        ["7155517"] = self.OnSubStart7155517,
        ["7155518"] = self.OnSubStart7155518
    }
end

function Quest71555:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7155501"] = self.OnSubFinish7155501,
        ["7155502"] = self.OnSubFinish7155502,
        ["7155503"] = self.OnSubFinish7155503,
        ["7155504"] = self.OnSubFinish7155504,
        ["7155505"] = self.OnSubFinish7155505,
        ["7155506"] = self.OnSubFinish7155506,
        ["7155507"] = self.OnSubFinish7155507,
        ["7155508"] = self.OnSubFinish7155508,
        ["7155509"] = self.OnSubFinish7155509,
        ["7155510"] = self.OnSubFinish7155510,
        ["7155511"] = self.OnSubFinish7155511,
        ["7155512"] = self.OnSubFinish7155512,
        ["7155514"] = self.OnSubFinish7155514,
        ["7155515"] = self.OnSubFinish7155515,
        ["7155517"] = self.OnSubFinish7155517,
        ["7155518"] = self.OnSubFinish7155518
    }
end

function Quest71555:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7155501"] = self.OnSubFailed7155501,
        ["7155502"] = self.OnSubFailed7155502,
        ["7155503"] = self.OnSubFailed7155503,
        ["7155504"] = self.OnSubFailed7155504,
        ["7155505"] = self.OnSubFailed7155505,
        ["7155506"] = self.OnSubFailed7155506,
        ["7155507"] = self.OnSubFailed7155507,
        ["7155508"] = self.OnSubFailed7155508,
        ["7155509"] = self.OnSubFailed7155509,
        ["7155510"] = self.OnSubFailed7155510,
        ["7155511"] = self.OnSubFailed7155511,
        ["7155512"] = self.OnSubFailed7155512,
        ["7155514"] = self.OnSubFailed7155514,
        ["7155515"] = self.OnSubFailed7155515,
        ["7155517"] = self.OnSubFailed7155517,
        ["7155518"] = self.OnSubFailed7155518
    }
end

function Quest71555:CheckQuestState()
    subQuestState = self:GetSubQuestState(7155501)
    v = self:GetSubQuestState(7155514)
    subQuestState2 = self:GetSubQuestState(7155515)
    n = subQuestState + v + subQuestState2
end

function Quest71555:InvokeOnInteraction(arg1)
    print("71555 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
        self:ActionSafeCall(function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor("Paimon")
            if questNpcActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end)
    end
end

function Quest71555:Start()
    print("Start")
end

function Quest71555:OnDestroy()
    print("OnDestroy")
end

function Quest71555:OnSubStart7155501(arg1)
    print("OnSubStart7155501")
    globalActor:EnablePlayerInput(false)
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7155501, paimon.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(paimon.alias)
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest71555:OnSubFinish7155501(arg1)
    print("OnSubFinish7155501")
    self:CheckQuestState()
    if n ~= 9 then
        local questNpcActor = self:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end
end

function Quest71555:OnSubStart7155514(arg1)
    print("OnSubStart7155514")
    globalActor:EnablePlayerInput(false)
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7155514, paimon.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(paimon.alias)
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest71555:OnSubFinish7155514(arg1)
    print("OnSubFinish7155514")
    self:CheckQuestState()
    if n ~= 9 then
        local questNpcActor = self:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end
end

function Quest71555:OnSubStart7155515(arg1)
    print("OnSubStart7155515")
    globalActor:EnablePlayerInput(false)
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7155515, paimon.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(paimon.alias)
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest71555:OnSubFinish7155515(arg1)
    print("OnSubFinish7155515")
    self:CheckQuestState()
    if n ~= 9 then
        local questNpcActor = self:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end
end

function Quest71555:OnSubStart7155518(arg1)
    print("OnSubStart7155518")
    globalActor:EnablePlayerInput(false)
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CallDelay(self, 1, function()
        self:RequestInteraction(paimon.alias)
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest71555:OnSubFinish7155518(arg1)
    print("OnSubFinish7155518")
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest71555:OnSubStart7155517(arg1)
    print("OnSubStart7155517")
    globalActor:EnablePlayerInput(false)
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7155517, paimon.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(paimon.alias)
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest71555:OnSubFinish7155517(arg1)
    print("OnSubFinish7155518")
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest71555:OnSubStart7155508(arg1)
    print("OnSubStart7155508")
    self:CreateQuestNpc(arg1, npc20088Data.ID, 1)
    self:CreateSpeechBubbleTask(20088, 715550902, 2, true, 2, 6)
end

function Quest71555:OnSubFinish7155509(arg1)
    print("OnSubFinish7155509")
    local questNpcActor = self:GetQuestNpcActor(npc20088Data.Alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
    self:ClearSpeechBubbleTask()
end

function Quest71555:OnSubStart7155512(arg1)
    print("OnSubStart7155512")
    self:CreateSpeechBubbleTask(20088, 715550903, 2, true, 2, 6)
    print("shuohualema")
end

function Quest71555:OnSubFinish7155512(arg1)
    print("OnSubFinish7155512")
    local questNpcActor = self:GetQuestNpcActor(npc20088Data.Alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
    self:ClearSpeechBubbleTask()
end

function Quest71555:OnSubFinish7155510(arg1)
    print("OnSubFinish7155510")
    self:CallDelay(0.5, function(arg1)
        arg1:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
            arg1:DestroyQuestNpcActor(npc20088Data.Alias, 3)
        end)
    end)
end

function Quest71555:OnSubStart7155511(arg1)
    print("OnSubStart7155511")
    self:CallDelay(0.6, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npc20088DataB.ID, 1)
    end)

    print(npc20088DataB.ID)
end

function Quest71555:OnSubFinish7155511(arg1)
    print("OnSubFinish7155511")
    local questNpcActor = self:GetQuestNpcActor(npc20088DataB.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
        self:ClearSpeechBubbleTask()
    end
end

return Quest71555
