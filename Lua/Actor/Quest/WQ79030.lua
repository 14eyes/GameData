require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79030 = class("Quest79030", QuestActorProxy)
Quest79030.defaultAlias = "Quest79030"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest79030:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7903001"] = self.OnSubStart7903001,
        ["7903002"] = self.OnSubStart7903002,
        ["7903005"] = self.OnSubStart7903005,
        ["7903003"] = self.OnSubStart7903003,
        ["7903004"] = self.OnSubStart7903004
    }
end

function Quest79030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7903001"] = self.OnSubFinish7903001,
        ["7903002"] = self.OnSubFinish7903002,
        ["7903005"] = self.OnSubFinish7903005,
        ["7903003"] = self.OnSubFinish7903003,
        ["7903004"] = self.OnSubFinish7903004
    }
end

function Quest79030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79030:Start()
    print("Start")
end

function Quest79030:OnDestroy()
    print("OnDestroy")
end

function Quest79030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79030:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest79030:OnSubStart7903001(arg1)
    print("OnSubStart7903001")
    actorMgr:CreateActorWithPos("Q79030Trigger", "Actor/Gadget/Q79030Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q7903001_guide").pos, sceneData:GetDummyPoint(9, "Q7903001_guide").rot, true, false, 9)
end

function Quest79030:OnSubFinish7903001(arg1)
    print("OnSubFinish7903001")
end

function Quest79030:OnSubStart7903002(arg1)
    print("OnSubStart7903002")
end

function Quest79030:OnSubFinish7903002(arg1)
    print("OnSubFinish7903002")
end

function Quest79030:OnSubStart7903005(arg1)
    print("OnSubStart7903005")
    self:CreateQuestNpcWithTrigger("Q7903005Trigger", 7903005, 1005, 1, 30)
end

function Quest79030:OnSubFinish7903005(arg1)
    print("OnSubFinish7903005")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79030:OnSubStart7903003(arg1)
    print("OnSubStart7903003")
end

function Quest79030:OnSubFinish7903003(arg1)
    print("OnSubFinish7903003")
end

function Quest79030:OnSubStart7903004(arg1)
    print("OnSubStart7903004")
end

function Quest79030:OnSubFinish7903004(arg1)
    print("OnSubFinish7903004")
end

return Quest79030
