require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72251 = class("Quest72251", QuestActorProxy)
Quest72251.defaultAlias = "Quest72251"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72251:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72251:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7225101"] = self.OnSubStart7225101,
        ["7225102"] = self.OnSubStart7225102,
        ["7225103"] = self.OnSubStart7225103
    }
end

function Quest72251:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7225101"] = self.OnSubFinish7225101,
        ["7225102"] = self.OnSubFinish7225102,
        ["7225103"] = self.OnSubFinish7225103
    }
end

function Quest72251:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7225101"] = self.OnSubFailed7225101,
        ["7225102"] = self.OnSubFailed7225102,
        ["7225103"] = self.OnSubFailed7225103
    }
end

function Quest72251:Start()
    print("Start")
end

function Quest72251:OnDestroy()
    print("OnDestroy")
end

function Quest72251:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72251:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72251:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72251:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72251:OnSubStart7225101(arg1)
    print("OnSubStart7225101")
end

function Quest72251:OnSubFinish7225101(arg1)
    print("OnSubFinish7225101")
end

function Quest72251:OnSubFailed7225101(arg1)
    print("OnSubFailed7225101")
end

function Quest72251:OnSubStart7225102(arg1)
    print("OnSubStart7225102")
    self:PlayCutsceneIndex("3223001", function(arg1)
        arg1:FinishQuestID(false, 7225102)
    end, nil, nil, false)
end

function Quest72251:OnSubFinish7225102(arg1)
    print("OnSubFinish7225102")
end

function Quest72251:OnSubFailed7225102(arg1)
    print("OnSubFailed7225102")
end

function Quest72251:OnSubStart7225103(arg1)
    print("OnSubStart7225103")
    self:EnablePlayerInput(false)
    self:ShowBlackScreen(0, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcFaceToPlayer(7225103, npcs.PaimonData.id, 0.5)
        arg1:CallDelay(0.5, function(arg1)
            arg1:EnablePlayerInput(true)
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, "", false, true)
end

function Quest72251:OnSubFinish7225103(arg1)
    print("OnSubFinish7225103")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72251:OnSubFailed7225103(arg1)
    print("OnSubFailed7225103")
end

return Quest72251
