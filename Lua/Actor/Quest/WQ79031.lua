require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79031 = class("Quest79031", QuestActorProxy)
Quest79031.defaultAlias = "Quest79031"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest79031:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7903101"] = self.OnSubStart7903101,
        ["7903102"] = self.OnSubStart7903102,
        ["7903105"] = self.OnSubStart7903105,
        ["7903103"] = self.OnSubStart7903103,
        ["7903106"] = self.OnSubStart7903106,
        ["7903104"] = self.OnSubStart7903104
    }
end

function Quest79031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7903101"] = self.OnSubFinish7903101,
        ["7903102"] = self.OnSubFinish7903102,
        ["7903105"] = self.OnSubFinish7903105,
        ["7903103"] = self.OnSubFinish7903103,
        ["7903106"] = self.OnSubFinish7903106,
        ["7903104"] = self.OnSubFinish7903104
    }
end

function Quest79031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79031:Start()
    print("Start")
end

function Quest79031:OnDestroy()
    print("OnDestroy")
end

function Quest79031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79031:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest79031:OnSubStart7903101(arg1)
    print("OnSubStart7903101")
    actorMgr:CreateActorWithPos("Q79031Trigger", "Actor/Gadget/Q79031Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q7903101_guide").pos, sceneData:GetDummyPoint(9, "Q7903101_guide").rot, true, false, 9)
end

function Quest79031:OnSubFinish7903101(arg1)
    print("OnSubFinish7903101")
end

function Quest79031:OnSubStart7903102(arg1)
    print("OnSubStart7903102")
end

function Quest79031:OnSubFinish7903102(arg1)
    print("OnSubFinish7903102")
end

function Quest79031:OnSubStart7903105(arg1)
    print("OnSubStart7903105")
    self:CreateQuestNpcWithTrigger("Q7903105Trigger", 7903105, 1005, 1, 20)
end

function Quest79031:OnSubFinish7903105(arg1)
    print("OnSubFinish7903105")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79031:OnSubStart7903103(arg1)
    print("OnSubStart7903103")
end

function Quest79031:OnSubFinish7903103(arg1)
    print("OnSubFinish7903103")
end

function Quest79031:OnSubStart7903106(arg1)
    print("OnSubStart7903106")
    self:CreateQuestNpcWithTrigger("Q7903106Trigger", 7903106, 1005, 1, 20)
end

function Quest79031:OnSubFinish7903106(arg1)
    print("OnSubFinish7903106")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79031:OnSubStart7903104(arg1)
    print("OnSubStart7903104")
end

function Quest79031:OnSubFinish7903104(arg1)
    print("OnSubFinish7903104")
end

return Quest79031
