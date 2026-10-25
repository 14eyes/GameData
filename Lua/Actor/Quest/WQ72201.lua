require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72201 = class("Quest72201", QuestActorProxy)
Quest72201.defaultAlias = "Quest72201"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72201:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72201:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7220101"] = self.OnSubStart7220101,
        ["7220102"] = self.OnSubStart7220102,
        ["7220103"] = self.OnSubStart7220103
    }
end

function Quest72201:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7220101"] = self.OnSubFinish7220101,
        ["7220102"] = self.OnSubFinish7220102,
        ["7220103"] = self.OnSubFinish7220103
    }
end

function Quest72201:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7220101"] = self.OnSubFailed7220101,
        ["7220102"] = self.OnSubFailed7220102,
        ["7220103"] = self.OnSubFailed7220103
    }
end

function Quest72201:Start()
    print("Start")
end

function Quest72201:OnDestroy()
    print("OnDestroy")
end

function Quest72201:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72201:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72201:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72201:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72201:OnSubStart7220101(arg1)
    print("OnSubStart7220101")
    self:CreateQuestNpc(arg1, npcs.Npc20423Data.id, 1)
end

function Quest72201:OnSubFinish7220101(arg1)
    print("OnSubFinish7220101")
end

function Quest72201:OnSubFailed7220101(arg1)
    print("OnSubFailed7220101")
end

function Quest72201:OnSubStart7220102(arg1)
    print("OnSubStart7220102")
    self:CreateQuestNpc(arg1, npcs.Npc20423Data.id, 1)
end

function Quest72201:OnSubFinish7220102(arg1)
    print("OnSubFinish7220102")
end

function Quest72201:OnSubFailed7220102(arg1)
    print("OnSubFailed7220102")
end

function Quest72201:OnSubStart7220103(arg1)
    print("OnSubStart7220103")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcFaceToPlayer(7220103, npcs.Npc20423Data.id, 1)
    end, nil, nil, "", false, true)
end

function Quest72201:OnSubFinish7220103(arg1)
    print("OnSubFinish7220103")
    self:SafeDestroyQuestNpc(npcs.Npc20423Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72201:OnSubFailed7220103(arg1)
    print("OnSubFailed7220103")
end

return Quest72201
