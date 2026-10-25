require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72252 = class("Quest72252", QuestActorProxy)
Quest72252.defaultAlias = "Quest72252"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72252:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72252:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7225201"] = self.OnSubStart7225201, ["7225202"] = self.OnSubStart7225202}
end

function Quest72252:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7225201"] = self.OnSubFinish7225201, ["7225202"] = self.OnSubFinish7225202}
end

function Quest72252:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7225201"] = self.OnSubFailed7225201, ["7225202"] = self.OnSubFailed7225202}
end

function Quest72252:Start()
    print("Start")
end

function Quest72252:OnDestroy()
    print("OnDestroy")
end

function Quest72252:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72252:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72252:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72252:CreateQuestNpcBesidePlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local v = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + n * arg3
    avatarPos.z = avatarPos.z + v * arg3
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72252:OnSubStart7225201(arg1)
    print("OnSubStart7225201")
end

function Quest72252:OnSubFinish7225201(arg1)
    print("OnSubFinish7225201")
end

function Quest72252:OnSubFailed7225201(arg1)
    print("OnSubFailed7225201")
end

function Quest72252:OnSubStart7225202(arg1)
    print("OnSubStart7225202")
    self:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcBesidePlayer(7225202, npcs.PaimonData.id, 0.5)
        arg1:CallDelay(0.5, function(arg1)
            arg1:EnablePlayerInput(true)
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, "", false, true)
end

function Quest72252:OnSubFinish7225202(arg1)
    print("OnSubFinish7225202")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72252:OnSubFailed7225202(arg1)
    print("OnSubFailed7225202")
end

return Quest72252
