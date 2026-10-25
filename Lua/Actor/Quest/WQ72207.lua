require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72207 = class("Quest72207", QuestActorProxy)
Quest72207.defaultAlias = "Quest72207"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72207:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72207:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7220701"] = self.OnSubStart7220701,
        ["7220702"] = self.OnSubStart7220702,
        ["7220703"] = self.OnSubStart7220703,
        ["7220704"] = self.OnSubStart7220704,
        ["7220705"] = self.OnSubStart7220705
    }
end

function Quest72207:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7220701"] = self.OnSubFinish7220701,
        ["7220702"] = self.OnSubFinish7220702,
        ["7220703"] = self.OnSubFinish7220703,
        ["7220704"] = self.OnSubFinish7220704,
        ["7220705"] = self.OnSubFinish7220705
    }
end

function Quest72207:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7220701"] = self.OnSubFailed7220701,
        ["7220702"] = self.OnSubFailed7220702,
        ["7220703"] = self.OnSubFailed7220703,
        ["7220704"] = self.OnSubFailed7220704,
        ["7220705"] = self.OnSubFailed7220705
    }
end

function Quest72207:Start()
    print("Start")
end

function Quest72207:OnDestroy()
    print("OnDestroy")
end

function Quest72207:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72207:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72207:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72207:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72207:OnSubStart7220701(arg1)
    print("OnSubStart7220701")
end

function Quest72207:OnSubFinish7220701(arg1)
    print("OnSubFinish7220701")
end

function Quest72207:OnSubFailed7220701(arg1)
    print("OnSubFailed7220701")
end

function Quest72207:OnSubStart7220702(arg1)
    print("OnSubStart7220702")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:CreateQuestNpcFaceToPlayer(7220702, npcs.Npc20429Data.id, 1)
end

function Quest72207:OnSubFinish7220702(arg1)
    print("OnSubFinish7220702")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72207:OnSubFailed7220702(arg1)
    print("OnSubFailed7220702")
end

function Quest72207:OnSubStart7220703(arg1)
    print("OnSubStart7220703")
    self:CreateQuestNpc(arg1, npcs.Npc20429Data.id, 1)
end

function Quest72207:OnSubFinish7220703(arg1)
    print("OnSubFinish7220703")
end

function Quest72207:OnSubFailed7220703(arg1)
    print("OnSubFailed7220703")
end

function Quest72207:OnSubStart7220704(arg1)
    print("OnSubStart7220704")
    self:CreateQuestNpc(arg1, npcs.Npc20429Data.id, 1)
end

function Quest72207:OnSubFinish7220704(arg1)
    print("OnSubFinish7220704")
    self:SafeDestroyQuestNpc(npcs.Npc20429Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72207:OnSubFailed7220704(arg1)
    print("OnSubFailed7220704")
end

function Quest72207:OnSubStart7220705(arg1)
    print("OnSubStart7220705")
end

function Quest72207:OnSubFinish7220705(arg1)
    print("OnSubFinish7220705")
end

function Quest72207:OnSubFailed7220705(arg1)
    print("OnSubFailed7220705")
end

return Quest72207
