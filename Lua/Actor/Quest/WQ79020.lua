require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79020 = class("Quest79020", QuestActorProxy)
Quest79020.defaultAlias = "Quest79020"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest79020:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7902001"] = self.OnSubStart7902001,
        ["7902012"] = self.OnSubStart7902012,
        ["7902003"] = self.OnSubStart7902003,
        ["7902004"] = self.OnSubStart7902004,
        ["7902005"] = self.OnSubStart7902005,
        ["7902006"] = self.OnSubStart7902006,
        ["7902007"] = self.OnSubStart7902007,
        ["7902008"] = self.OnSubStart7902008,
        ["7902009"] = self.OnSubStart7902009,
        ["7902010"] = self.OnSubStart7902010,
        ["7902011"] = self.OnSubStart7902011,
        ["7902013"] = self.OnSubStart7902013
    }
end

function Quest79020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7902001"] = self.OnSubFinish7902001,
        ["7902012"] = self.OnSubFinish7902012,
        ["7902003"] = self.OnSubFinish7902003,
        ["7902004"] = self.OnSubFinish7902004,
        ["7902005"] = self.OnSubFinish7902005,
        ["7902006"] = self.OnSubFinish7902006,
        ["7902007"] = self.OnSubFinish7902007,
        ["7902008"] = self.OnSubFinish7902008,
        ["7902009"] = self.OnSubFinish7902009,
        ["7902010"] = self.OnSubFinish7902010,
        ["7902011"] = self.OnSubFinish7902011,
        ["7902013"] = self.OnSubFinish7902013
    }
end

function Quest79020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79020:Start()
    print("Start")
end

function Quest79020:OnDestroy()
    print("OnDestroy")
end

function Quest79020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79020:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest79020:OnSubStart7902001(arg1)
    print("OnSubStart7902001")
end

function Quest79020:OnSubFinish7902001(arg1)
    print("OnSubFinish7902001")
end

function Quest79020:OnSubStart7902012(arg1)
    print("OnSubStart7902012")
    self:CreateQuestNpcFaceToPlayer(7902012, npcs.PaimonData.id, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest79020:OnSubFinish7902012(arg1)
    print("OnSubFinish7902012")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79020:OnSubStart7902003(arg1)
    print("OnSubStart7902003")
end

function Quest79020:OnSubFinish7902003(arg1)
    print("OnSubFinish7902003")
end

function Quest79020:OnSubStart7902004(arg1)
    print("OnSubStart7902004")
end

function Quest79020:OnSubFinish7902004(arg1)
    print("OnSubFinish7902004")
end

function Quest79020:OnSubStart7902005(arg1)
    print("OnSubStart7902005")
end

function Quest79020:OnSubFinish7902005(arg1)
    print("OnSubFinish7902005")
end

function Quest79020:OnSubStart7902006(arg1)
    print("OnSubStart7902006")
end

function Quest79020:OnSubFinish7902006(arg1)
    print("OnSubFinish7902006")
end

function Quest79020:OnSubStart7902007(arg1)
    print("OnSubStart7902007")
end

function Quest79020:OnSubFinish7902007(arg1)
    print("OnSubFinish7902007")
end

function Quest79020:OnSubStart7902008(arg1)
    print("OnSubStart7902008")
end

function Quest79020:OnSubFinish7902008(arg1)
    print("OnSubFinish7902008")
end

function Quest79020:OnSubStart7902009(arg1)
    print("OnSubStart7902009")
    self:CreateQuestNpcFaceToPlayer(7902009, npcs.PaimonData.id, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest79020:OnSubFinish7902009(arg1)
    print("OnSubFinish7902009")
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 9)
end

function Quest79020:OnSubStart7902010(arg1)
    print("OnSubStart7902010")
    actorMgr:CreateActorWithPos("Q7902011Trigger", "Actor/Gadget/Q7902011Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7902008").pos, sceneData:GetDummyPoint(9, "guide_Q7902008").rot, true, false, 9)
end

function Quest79020:OnSubFinish7902010(arg1)
    print("OnSubFinish7902010")
end

function Quest79020:OnSubStart7902011(arg1)
    print("OnSubStart7902011")
end

function Quest79020:OnSubFinish7902011(arg1)
    print("OnSubFinish7902011")
end

function Quest79020:OnSubStart7902013(arg1)
    print("OnSubStart7902013")
    self:CreateQuestNpcFaceToPlayer(7902013, npcs.PaimonData.id, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest79020:OnSubFinish7902013(arg1)
    print("OnSubFinish7902013")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

return Quest79020
