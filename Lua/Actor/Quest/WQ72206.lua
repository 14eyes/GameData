require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72206 = class("Quest72206", QuestActorProxy)
Quest72206.defaultAlias = "Quest72206"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72206:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72206:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7220601"] = self.OnSubStart7220601,
        ["7220602"] = self.OnSubStart7220602,
        ["7220603"] = self.OnSubStart7220603,
        ["7220604"] = self.OnSubStart7220604,
        ["7220605"] = self.OnSubStart7220605,
        ["7220606"] = self.OnSubStart7220606,
        ["7220607"] = self.OnSubStart7220607
    }
end

function Quest72206:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7220601"] = self.OnSubFinish7220601,
        ["7220602"] = self.OnSubFinish7220602,
        ["7220603"] = self.OnSubFinish7220603,
        ["7220604"] = self.OnSubFinish7220604,
        ["7220605"] = self.OnSubFinish7220605,
        ["7220606"] = self.OnSubFinish7220606,
        ["7220607"] = self.OnSubFinish7220607
    }
end

function Quest72206:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7220601"] = self.OnSubFailed7220601,
        ["7220602"] = self.OnSubFailed7220602,
        ["7220603"] = self.OnSubFailed7220603,
        ["7220604"] = self.OnSubFailed7220604,
        ["7220605"] = self.OnSubFailed7220605,
        ["7220606"] = self.OnSubFailed7220606,
        ["7220607"] = self.OnSubFailed7220607
    }
end

function Quest72206:Start()
    print("Start")
end

function Quest72206:OnDestroy()
    print("OnDestroy")
end

function Quest72206:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72206:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72206:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72206:CreateQuestNpcBesidePlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local v = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + n * arg3
    avatarPos.z = avatarPos.z + v * arg3
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72206:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72206:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72206:OnSubStart7220601(arg1)
    print("OnSubStart7220601")
end

function Quest72206:OnSubFinish7220601(arg1)
    print("OnSubFinish7220601")
end

function Quest72206:OnSubFailed7220601(arg1)
    print("OnSubFailed7220601")
end

function Quest72206:OnSubStart7220602(arg1)
    print("OnSubStart7220602")
    self:CreateQuestNpcBesidePlayer(7220602, npcs.Npc20428Data.id, 0.5)
    self:EnablePlayerInput(false)
    self:CallDelay(1, function(arg1)
        arg1:EnablePlayerInput(true)
        arg1:RequestInteraction(npcs.Npc20428Data.alias)
    end)
end

function Quest72206:OnSubFinish7220602(arg1)
    print("OnSubFinish7220602")
    self:GetQuestNpcActor(npcs.Npc20428Data.alias):DestroyWithDisappear(false)
end

function Quest72206:OnSubFailed7220602(arg1)
    print("OnSubFailed7220602")
end

function Quest72206:OnSubStart7220603(arg1)
    print("OnSubStart7220603")
    self:EnablePlayerInput(false)
    self:CallDelay(2, function(arg1)
        arg1:CreateQuestNpcFaceToPlayer(7220603, npcs.PaimonData.id, 0.5)
        arg1:CallDelay(1, function(arg1)
            arg1:EnablePlayerInput(true)
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end)
end

function Quest72206:OnSubFinish7220603(arg1)
    print("OnSubFinish7220603")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72206:OnSubFailed7220603(arg1)
    print("OnSubFailed7220603")
end

function Quest72206:OnSubStart7220604(arg1)
    print("OnSubStart7220604")
end

function Quest72206:OnSubFinish7220604(arg1)
    print("OnSubFinish7220604")
end

function Quest72206:OnSubFailed7220604(arg1)
    print("OnSubFailed7220604")
end

function Quest72206:OnSubStart7220605(arg1)
    print("OnSubStart7220605")
    self:EnablePlayerInput(false)
    self:CreateQuestNpcFaceToPlayer(7220605, npcs.Npc20428Data.id, 0.5)
    self:CallDelay(1, function(arg1)
        arg1:EnablePlayerInput(true)
        arg1:RequestInteraction(npcs.Npc20428Data.alias)
    end)
end

function Quest72206:OnSubFinish7220605(arg1)
    print("OnSubFinish7220605")
end

function Quest72206:OnSubFailed7220605(arg1)
    print("OnSubFailed7220605")
end

function Quest72206:OnSubStart7220606(arg1)
    print("OnSubStart7220606")
    self:NpcCreate(arg1, npcs.Npc20428Data.id, 1)
end

function Quest72206:OnSubFinish7220606(arg1)
    print("OnSubFinish7220606")
end

function Quest72206:OnSubFailed7220606(arg1)
    print("OnSubFailed7220606")
end

function Quest72206:OnSubStart7220607(arg1)
    print("OnSubStart7220607")
    self:NpcCreate(arg1, npcs.Npc20428Data.id, 1)
end

function Quest72206:OnSubFinish7220607(arg1)
    print("OnSubFinish7220607")
    self:GetQuestNpcActor(npcs.Npc20428Data.alias):DestroyWithDisappear(false)
end

function Quest72206:OnSubFailed7220607(arg1)
    print("OnSubFailed7220607")
end

return Quest72206
