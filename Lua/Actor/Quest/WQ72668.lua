require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72668 = class("Quest72668", QuestActorProxy)
Quest72668.defaultAlias = "Quest72668"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72668:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72668:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7266801"] = self.OnSubStart7266801, ["7266802"] = self.OnSubStart7266802}
end

function Quest72668:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7266801"] = self.OnSubFinish7266801, ["7266802"] = self.OnSubFinish7266802}
end

function Quest72668:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7266801"] = self.OnSubFailed7266801, ["7266802"] = self.OnSubFailed7266802}
end

function Quest72668:Start()
    print("Start")
end

function Quest72668:OnDestroy()
    print("OnDestroy")
end

function Quest72668:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72668:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72668:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72668:OnSubStart7266801(arg1)
    print("OnSubStart7266801")
end

function Quest72668:OnSubFinish7266801(arg1)
    print("OnSubFinish7266801")
end

function Quest72668:OnSubFailed7266801(arg1)
    print("OnSubFailed7266801")
end

function Quest72668:OnSubStart7266802(arg1)
    print("OnSubStart7266802")
    self:CallDelay(3, function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            local avatarPos = actorUtils.GetAvatarPos()
            local avatarForward = actorUtils.GetAvatarForward()
            local n = 1
            print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
            avatarPos.x = avatarPos.x + avatarForward.x * n
            avatarPos.z = avatarPos.z - avatarForward.z * n
            local v = avatarForward
            v.x = v.x * -0.5
            v.z = v.z * -0.5
            arg1:LevelLoadFinishSafeCall(function(arg1)
                arg1:CreateQuestNpcByIdWithPos(7266802, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
                arg1:RequestInteraction(npcs.PaimonData.alias)
            end)
        end, nil, nil, "", false, true)

        actorUtils.CloseFishingChallengeEndPage()
    end)
end

function Quest72668:OnSubFinish7266802(arg1)
    print("OnSubFinish7266802")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72668:OnSubFailed7266802(arg1)
    print("OnSubFailed7266802")
end

return Quest72668
