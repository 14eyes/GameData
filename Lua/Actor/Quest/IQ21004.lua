require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21004 = class("Quest21004", QuestActorProxy)
Quest21004.defaultAlias = "Quest21004"
local clientData
local shareData
local subIDs
local n
local paimon

function Quest21004:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
    subIDs = clientData.SubIDs
    n = 21004
    paimon = clientData.Paimon
end

function Quest21004:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2100401"] = self.OnSubStart2100401
    self.subStartHandlers["2100402"] = self.OnSubStart2100402
    self.subStartHandlers["2100480"] = self.OnSubStart2100480
    self.subStartHandlers["2100481"] = self.OnSubStart2100481
    self.subStartHandlers["2100403"] = self.OnSubStart2100403
    self.subStartHandlers["2100410"] = self.OnSubStart2100410
    self.subStartHandlers["2100411"] = self.OnSubStart2100411
    self.subStartHandlers["2100412"] = self.OnSubStart2100412
    self.subStartHandlers["2100413"] = self.OnSubStart2100413
    self.subStartHandlers["2100414"] = self.OnSubStart2100414
    self.subStartHandlers["2100420"] = self.OnSubStart2100420
    self.subStartHandlers["2100421"] = self.OnSubStart2100421
    self.subStartHandlers["2100422"] = self.OnSubStart2100422
    self.subStartHandlers["2100430"] = self.OnSubStart2100430
    self.subStartHandlers["2100431"] = self.OnSubStart2100431
    self.subStartHandlers["2100432"] = self.OnSubStart2100432
    self.subStartHandlers["2100440"] = self.OnSubStart2100440
    self.subStartHandlers["2100450"] = self.OnSubStart2100450
end

function Quest21004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2100401"] = self.OnSubFinish2100401
    self.subFinishHandlers["2100402"] = self.OnSubFinish2100402
    self.subFinishHandlers["2100480"] = self.OnSubFinish2100480
    self.subFinishHandlers["2100481"] = self.OnSubFinish2100481
    self.subFinishHandlers["2100403"] = self.OnSubFinish2100403
    self.subFinishHandlers["2100410"] = self.OnSubFinish2100410
    self.subFinishHandlers["2100411"] = self.OnSubFinish2100411
    self.subFinishHandlers["2100412"] = self.OnSubFinish2100412
    self.subFinishHandlers["2100413"] = self.OnSubFinish2100413
    self.subFinishHandlers["2100414"] = self.OnSubFinish2100414
    self.subFinishHandlers["2100420"] = self.OnSubFinish2100420
    self.subFinishHandlers["2100421"] = self.OnSubFinish2100421
    self.subFinishHandlers["2100422"] = self.OnSubFinish2100422
    self.subFinishHandlers["2100430"] = self.OnSubFinish2100430
    self.subFinishHandlers["2100431"] = self.OnSubFinish2100431
    self.subFinishHandlers["2100432"] = self.OnSubFinish2100432
    self.subFinishHandlers["2100440"] = self.OnSubFinish2100440
    self.subFinishHandlers["2100450"] = self.OnSubFinish2100450
end

function Quest21004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2100401"] = self.OnSubFailed2100401
    self.subFailedHandlers["2100402"] = self.OnSubFailed2100402
    self.subFailedHandlers["2100480"] = self.OnSubFailed2100480
    self.subFailedHandlers["2100481"] = self.OnSubFailed2100405
    self.subFailedHandlers["2100403"] = self.OnSubFailed2100403
    self.subFailedHandlers["2100410"] = self.OnSubFailed2100410
    self.subFailedHandlers["2100411"] = self.OnSubFailed2100411
    self.subFailedHandlers["2100412"] = self.OnSubFailed2100412
    self.subFailedHandlers["2100413"] = self.OnSubFailed2100413
    self.subFailedHandlers["2100414"] = self.OnSubFailed2100414
    self.subFailedHandlers["2100420"] = self.OnSubFailed2100420
    self.subFailedHandlers["2100421"] = self.OnSubFailed2100421
    self.subFailedHandlers["2100422"] = self.OnSubFailed2100422
    self.subFailedHandlers["2100430"] = self.OnSubFailed2100430
    self.subFailedHandlers["2100431"] = self.OnSubFailed2100431
    self.subFailedHandlers["2100432"] = self.OnSubFailed2100432
    self.subFailedHandlers["2100440"] = self.OnSubFailed2100440
    self.subFailedHandlers["2100450"] = self.OnSubFailed2100450
end

function Quest21004:InvokeOnInteraction(arg1)
    print("21004 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
        self:ActionSafeCall(function(arg1)
            local questNpcActor = arg1.GetQuestNpcActor(arg1, "Paimon")
            arg1.EnablePlayerInput(arg1, false, true)
            if questNpcActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
                arg1.CallDelay(arg1, 2.5, function()
                    arg1:EnablePlayerInput(true, true)
                end)
            end
        end)
    end
end

function Quest21004:OnSubStart2100401(arg1)
    print("2100403_Start")
end

function Quest21004:OnSubStart2100481(arg1)
    print("2100481_Start")
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self.EnablePlayerInput(self, false, true)
    self.CreateQuestNpcByIdWithPos(self, 2100481, paimon.id, 1, avatarPos, M.Dir2Euler(v))
    self.CallDelay(self, 0, function()
        self:RequestInteraction(paimon.alias)
        self:EnablePlayerInput(true, true)
    end)
end

function Quest21004:OnSubFinish2100430(arg1) end
function Quest21004:OnSubFinish2100432(arg1) end

function Quest21004:OnSubFinish2100450(arg1)
    print("2100450_finish")
end

function Quest21004:Start() end
function Quest21004:OnDestroy() end
return Quest21004
