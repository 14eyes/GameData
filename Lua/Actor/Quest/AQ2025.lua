require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2025 = class("Quest2025", QuestActorProxy)
Quest2025.defaultAlias = "Quest2025"
local clientData
local mainID
local actorAlias
local subIDs

function Quest2025:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest2025:OnSubStartHandlerBuild()
    self.subStartHandlers = {["202501"] = self.OnSubStart202501, ["202502"] = self.OnSubStart202502}
end

function Quest2025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["202501"] = self.OnSubFinish202501, ["202502"] = self.OnSubFinish202502}
end

function Quest2025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["202501"] = self.OnSubFailed202501, ["202502"] = self.OnSubFailed202502}
end

function Quest2025:Start()
    print("Start")
end

function Quest2025:OnDestroy()
    print("OnDestroy")
end

function Quest2025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2025:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2025:OnSubStart202501(arg1)
    print("OnSubStart202501")
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(2.5, function(arg1)
            arg1:FinishQuestID(false, 202501)
            local avatarPos = actorUtils.GetAvatarPos()
            if sceneData.currSceneID == 3 then
                local x = avatarPos.x
                if -2652.345 < x then
                    if avatarPos.x < -2594.634 then
                        if avatarPos.z < -3996.529 then
                            local z = avatarPos.z
                            if -4042.568 < z then
                                arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q2025Camera").pos, 2, 3, true, true)
                            end
                        end
                    end
                end
            end
        end)
    end)
end

function Quest2025:OnSubFinish202501(arg1)
    print("OnSubFinish202501")
end

function Quest2025:OnSubFailed202501(arg1)
    print("OnSubFailed202501")
end

function Quest2025:OnSubStart202502(arg1)
    print("OnSubStart202502")
end

function Quest2025:OnSubFinish202502(arg1)
    print("OnSubFinish202502")
end

function Quest2025:OnSubFailed202502(arg1)
    print("OnSubFailed202502")
end

return Quest2025
