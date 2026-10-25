require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21021 = class("Quest21021", QuestActorProxy)
Quest21021.defaultAlias = "Quest21021"
local clientData
local subIDs
local npc20082Data
local paimon

function Quest21021:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    npc20082Data = clientData.Npc20082Data
    paimon = clientData.Paimon
end

function Quest21021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2102101"] = self.OnSubStart2102101,
        ["2102102"] = self.OnSubStart2102102,
        ["2102103"] = self.OnSubStart2102103,
        ["2102104"] = self.OnSubStart2102104,
        ["2102105"] = self.OnSubStart2102105,
        ["2102106"] = self.OnSubStart2102106,
        ["2102107"] = self.OnSubStart2102107,
        ["2102108"] = self.OnSubStart2102108,
        ["2102109"] = self.OnSubStart2102109,
        ["2102110"] = self.OnSubStart2102110,
        ["2102111"] = self.OnSubStart2102111,
        ["2102112"] = self.OnSubStart2102112,
        ["2102113"] = self.OnSubStart2102113,
        ["2102114"] = self.OnSubStart2102114,
        ["2102115"] = self.OnSubStart2102115,
        ["2102116"] = self.OnSubStart2102116,
        ["2102120"] = self.OnSubStart2102116,
        ["2102121"] = self.OnSubStart2102116,
        ["2102122"] = self.OnSubStart2102116,
        ["2102126"] = self.OnSubStart2102126,
        ["2102127"] = self.OnSubStart2102127
    }
end

function Quest21021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2102101"] = self.OnSubFinish2102101,
        ["2102102"] = self.OnSubFinish2102102,
        ["2102103"] = self.OnSubFinish2102103,
        ["2102104"] = self.OnSubFinish2102104,
        ["2102105"] = self.OnSubFinish2102105,
        ["2102106"] = self.OnSubFinish2102106,
        ["2102107"] = self.OnSubFinish2102107,
        ["2102108"] = self.OnSubFinish2102108,
        ["2102109"] = self.OnSubFinish2102109,
        ["2102110"] = self.OnSubFinish2102110,
        ["2102111"] = self.OnSubFinish2102111,
        ["2102112"] = self.OnSubFinish2102112,
        ["2102113"] = self.OnSubFinish2102113,
        ["2102114"] = self.OnSubFinish2102114,
        ["2102115"] = self.OnSubFinish2102115,
        ["2102116"] = self.OnSubFinish2102116,
        ["2102123"] = self.OnSubFinish2102123
    }
end

function Quest21021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2102101"] = self.OnSubFailed2102101,
        ["2102102"] = self.OnSubFailed2102102,
        ["2102103"] = self.OnSubFailed2102103,
        ["2102104"] = self.OnSubFailed2102104,
        ["2102105"] = self.OnSubFailed2102105,
        ["2102106"] = self.OnSubFailed2102106,
        ["2102107"] = self.OnSubFailed2102107,
        ["2102108"] = self.OnSubFailed2102108,
        ["2102109"] = self.OnSubFailed2102109,
        ["2102110"] = self.OnSubFailed2102110,
        ["2102111"] = self.OnSubFailed2102111,
        ["2102112"] = self.OnSubFailed2102112,
        ["2102113"] = self.OnSubFailed2102113,
        ["2102114"] = self.OnSubFailed2102114,
        ["2102115"] = self.OnSubFailed2102115,
        ["2102116"] = self.OnSubFailed2102116
    }
end

function Quest21021:InvokeOnInteraction(arg1)
    print("21021 Invoke : ")
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

function Quest21021:Start()
    print("Start")
end

function Quest21021:OnDestroy()
    print("OnDestroy")
end

function Quest21021:OnSubStart2102101(arg1)
    print("OnSubStart2102101")
end

function Quest21021:OnSubFinish2102101(arg1)
    print("OnSubFinish2102101")
end

function Quest21021:OnSubFailed2102101(arg1)
    print("OnSubFailed2102101")
end

function Quest21021:OnSubStart2102102(arg1)
    print("OnSubStart2102102")
end

function Quest21021:OnSubFinish2102102(arg1)
    print("OnSubFinish2102102")
end

function Quest21021:OnSubFailed2102102(arg1)
    print("OnSubFailed2102102")
end

function Quest21021:OnSubStart2102103(arg1)
    print("OnSubStart2102103")
end

function Quest21021:OnSubFinish2102103(arg1)
    print("OnSubFinish2102103")
    local questNpcActor = self:GetQuestNpcActor(npc20082Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
        self:ClearSpeechBubbleTask()
    end
end

function Quest21021:OnSubFailed2102103(arg1)
    print("OnSubFailed2102103")
end

function Quest21021:OnSubStart2102104(arg1)
    print("OnSubStart2102104")
end

function Quest21021:OnSubFinish2102104(arg1)
    print("OnSubFinish2102104")
end

function Quest21021:OnSubFailed2102104(arg1)
    print("OnSubFailed2102104")
end

function Quest21021:OnSubStart2102105(arg1)
    print("OnSubStart2102105")
end

function Quest21021:OnSubFinish2102105(arg1)
    print("OnSubFinish2102105")
end

function Quest21021:OnSubFailed2102105(arg1)
    print("OnSubFailed2102105")
end

function Quest21021:OnSubStart2102106(arg1)
    print("OnSubStart2102106")
    self:CreateQuestNpc(arg1, npc20082Data.ID, 1)
    self:GetQuestNpcActor(npc20082Data.Alias):DoFreeStyle(1160)
    self:CreateSpeechBubbleTask(20082, 210210601, 3, true, 1, 2)
end

function Quest21021:OnSubStart2102116(arg1)
    print("OnSubStart2102116")
    self:FinishQuestID(false, 2102116)
end

function Quest21021:OnSubStart2102117(arg1)
    print("OnSubStart2102117")
    if self:GetSubQuestState(2102103) == 3 then
        self:FinishQuestID(false, 2102117)
    end
end

function Quest21021:OnSubStart2102118(arg1)
    print("OnSubStart2102118")
    if self:GetSubQuestState(2102104) == 3 then
        self:FinishQuestID(false, 2102118)
    end
end

function Quest21021:OnSubStart2102119(arg1)
    print("OnSubStart2102119")
    if self:GetSubQuestState(2102105) == 3 then
        self:FinishQuestID(false, 2102119)
    end
end

function Quest21021:OnSubStart2102120(arg1)
    print("OnSubStart2102120")
    if self:GetSubQuestState(2102102) == 3 then
        self:FinishQuestID(false, 2102120)
    end
end

function Quest21021:OnSubStart2102121(arg1)
    print("OnSubStart2102121")
    if self:GetSubQuestState(2102102) == 3 then
        self:FinishQuestID(false, 2102121)
    end
end

function Quest21021:OnSubStart2102122(arg1)
    print("OnSubStart2102122")
    if self:GetSubQuestState(2102102) == 3 then
        self:FinishQuestID(false, 2102122)
    end
end

function Quest21021:OnSubFinish2102107(arg1)
    print("OnSubFinish2102107")
    local questNpcActor = self:GetQuestNpcActor(npc20082Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
        self:ClearSpeechBubbleTask()
    end
end

function Quest21021:OnSubFinish2102102(arg1)
    print("OnSubFinish2102102")
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
    self.CreateQuestNpcByIdWithPos(self, 2102102, paimon.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(paimon.alias)
    end)
end

function Quest21021:OnSubFinish2102101(arg1)
    print("OnSubFinish2102101")
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
    self.CreateQuestNpcByIdWithPos(self, 2102101, paimon.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(paimon.alias)
    end)
end

function Quest21021:OnSubFinish2102114(arg1)
    print("OnSubFinish2102114")
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
    self.CreateQuestNpcByIdWithPos(self, 2102114, paimon.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(paimon.alias)
    end)
end

function Quest21021:OnSubFinish2102123(arg1)
    print("OnSubFinish2102123")
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
    self.CreateQuestNpcByIdWithPos(self, 2102123, paimon.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(paimon.alias)
    end)
end

return Quest21021
