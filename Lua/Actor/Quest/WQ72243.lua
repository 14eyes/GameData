require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72243 = class("Quest72243", QuestActorProxy)
Quest72243.defaultAlias = "Quest72243"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72243:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72243:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7224301"] = self.OnSubStart7224301, ["7224302"] = self.OnSubStart7224302}
end

function Quest72243:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7224301"] = self.OnSubFinish7224301, ["7224302"] = self.OnSubFinish7224302}
end

function Quest72243:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72243:Start()
    print("Start")
end

function Quest72243:OnDestroy()
    print("OnDestroy")
end

function Quest72243:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72243:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72243:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72243:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72243:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("InvokeOnInteraction")
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            self:ActionSafeCall(function()
                actor:FinishQuestID(false, 7224301)
            end)
        end
    elseif arg1 == 2 then
        self:SetQuestVarByMainId(1, 1)
    end
end

function Quest72243:OnSubStart7224301(arg1)
    print("OnSubStart7224301")
end

function Quest72243:OnSubFinish7224301(arg1)
    print("OnSubFinish7224301")
end

function Quest72243:OnSubStart7224302(arg1)
    print("OnSubStart7224302")
end

function Quest72243:OnSubFinish7224302(arg1)
    print("OnSubFinish7224302")
end

return Quest72243
