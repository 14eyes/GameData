require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70125 = class("Quest70125", QuestActorProxy)
Quest70125.defaultAlias = "Quest70125"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70125:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70125:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7012501"] = self.OnSubStart7012501,
        ["7012502"] = self.OnSubStart7012502,
        ["7012503"] = self.OnSubStart7012503
    }
end

function Quest70125:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7012501"] = self.OnSubFinish7012501,
        ["7012502"] = self.OnSubFinish7012502,
        ["7012503"] = self.OnSubFinish7012503
    }
end

function Quest70125:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7012501"] = self.OnSubFailed7012501,
        ["7012502"] = self.OnSubFailed7012502,
        ["7012503"] = self.OnSubFailed7012503
    }
end

function Quest70125:Start()
    print("Start")
end

function Quest70125:OnDestroy()
    print("OnDestroy")
end

function Quest70125:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70125:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70125:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70125:OnSubStart7012501(arg1)
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
    self.CreateQuestNpcByIdWithPos(self, 7012501, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70125:OnSubFinish7012501(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70125:OnSubFailed7012501(arg1)
    print("OnSubFailed7012501")
end

function Quest70125:OnSubStart7012502(arg1)
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
    self.CreateQuestNpcByIdWithPos(self, 7012502, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70125:OnSubFinish7012502(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70125:OnSubFailed7012502(arg1)
    print("OnSubFailed7012502")
end

function Quest70125:OnSubStart7012503(arg1)
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
    self.CreateQuestNpcByIdWithPos(self, 7012503, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70125:OnSubFinish7012503(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70125:OnSubFailed7012503(arg1)
    print("OnSubFailed7012503")
end

return Quest70125
