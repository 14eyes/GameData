require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71015 = class("Quest71015", QuestActorProxy)
Quest71015.defaultAlias = "Quest71015"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7101501"] = self.OnSubStart7101501,
        ["7101502"] = self.OnSubStart7101502,
        ["7101503"] = self.OnSubStart7101503,
        ["7101504"] = self.OnSubStart7101504
    }
end

function Quest71015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7101501"] = self.OnSubFinish7101501,
        ["7101502"] = self.OnSubFinish7101502,
        ["7101503"] = self.OnSubFinish7101503,
        ["7101504"] = self.OnSubFinish7101504
    }
end

function Quest71015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7101501"] = self.OnSubFailed7101501,
        ["7101502"] = self.OnSubFailed7101502,
        ["7101503"] = self.OnSubFailed7101503,
        ["7101504"] = self.OnSubFailed7101504
    }
end

function Quest71015:Start()
    print("Start")
end

function Quest71015:OnDestroy()
    print("OnDestroy")
end

function Quest71015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71015:Transport()
    self:TransmitPlayerByQuestId(7101501, 1, self.Protect, self.BlackScreen)
end

function Quest71015:Transport2()
    self:TransmitPlayerByQuestId(7101502, 1, self.Protect, self.BlackScreen)
end

function Quest71015:Transport3()
    self:TransmitPlayerByQuestId(7101503, 1, self.Protect, self.BlackScreen)
end

function Quest71015:BlackScreen()
    print("BlackScreen")
    self:ShowBlackScreen(0, 3, 0.5, nil, nil, nil, "QUEST_Message_Q71014")
end

function Quest71015:Protect()
    print("finishiquest")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7101504)
    end
end

function Quest71015:Enable()
    print("Enable")
    self:EnablePlayerInput(true)
end

function Quest71015:Disable()
    print("Disable")
    self:EnablePlayerInput(false)
end

function Quest71015:OnSubStart7101501(arg1)
    print("OnSubStart7101501")
end

function Quest71015:OnSubFinish7101501(arg1)
    print("OnSubFinish7101501")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q71014_Lijiulang").pos, 0, 3, false, false)
end

function Quest71015:OnSubFailed7101501(arg1)
    print("OnSubFailed7101501")
end

function Quest71015:OnSubStart7101502(arg1)
    print("OnSubStart7101502")
end

function Quest71015:OnSubFinish7101502(arg1)
    print("OnSubFinish7101502")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q71014_Makeximu").pos, 0, 3, false, false)
end

function Quest71015:OnSubFailed7101502(arg1)
    print("OnSubFailed7101502")
end

function Quest71015:OnSubStart7101503(arg1)
    print("OnSubStart7101503")
end

function Quest71015:OnSubFinish7101503(arg1)
    print("OnSubFinish7101503")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q71014_luoxia").pos, 0, 3, false, false)
end

function Quest71015:OnSubFailed7101503(arg1)
    print("OnSubFailed7101503")
end

function Quest71015:OnSubStart7101504(arg1)
    print("OnSubStart7101504")
    self:CallDelay(3, self.Protect)
    self:Disable()
end

function Quest71015:OnSubFinish7101504(arg1)
    print("OnSubFinish7101504")
    self:Enable()
end

function Quest71015:OnSubFailed7101504(arg1)
    print("OnSubFailed7101504")
end

return Quest71015
