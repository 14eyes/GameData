require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72188 = class("Quest72188", QuestActorProxy)
Quest72188.defaultAlias = "Quest72188"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72188:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72188:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7218801"] = self.OnSubStart7218801,
        ["7218802"] = self.OnSubStart7218802,
        ["7218803"] = self.OnSubStart7218803,
        ["7218804"] = self.OnSubStart7218804,
        ["7218805"] = self.OnSubStart7218805,
        ["7218806"] = self.OnSubStart7218806,
        ["7218807"] = self.OnSubStart7218807,
        ["7218808"] = self.OnSubStart7218808,
        ["7218809"] = self.OnSubStart7218809,
        ["7218810"] = self.OnSubStart7218810
    }
end

function Quest72188:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7218801"] = self.OnSubFinish7218801,
        ["7218802"] = self.OnSubFinish7218802,
        ["7218803"] = self.OnSubFinish7218803,
        ["7218804"] = self.OnSubFinish7218804,
        ["7218805"] = self.OnSubFinish7218805,
        ["7218806"] = self.OnSubFinish7218806,
        ["7218807"] = self.OnSubFinish7218807,
        ["7218808"] = self.OnSubFinish7218808,
        ["7218809"] = self.OnSubFinish7218809,
        ["7218810"] = self.OnSubFinish7218810
    }
end

function Quest72188:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7218801"] = self.OnSubFailed7218801,
        ["7218802"] = self.OnSubFailed7218802,
        ["7218803"] = self.OnSubFailed7218803,
        ["7218804"] = self.OnSubFailed7218804,
        ["7218805"] = self.OnSubFailed7218805,
        ["7218806"] = self.OnSubFailed7218806,
        ["7218807"] = self.OnSubFailed7218807,
        ["7218808"] = self.OnSubFailed7218808,
        ["7218809"] = self.OnSubFailed7218809,
        ["7218810"] = self.OnSubFailed7218810
    }
end

function Quest72188:Start()
    print("Start")
end

function Quest72188:OnDestroy()
    print("OnDestroy")
end

function Quest72188:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72188:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72188:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72188:_72160_CountDownFinish()
    self:FinishQuestID(false, 7218802)
    self:FinishQuestID(false, 7218805)
    self:FinishQuestID(false, 7218808)
end

function Quest72188:_72160_EnableInput()
    print("_72160_EnableInput")
    self:EnablePlayerInput(true)
end

function Quest72188:FinishLast()
    print("FinishLast")
    self:FinishQuestID(false, 7218810)
end

function Quest72188:OnSubStart7218801(arg1)
    print("OnSubStart7218801")
end

function Quest72188:OnSubFinish7218801(arg1)
    print("OnSubFinish7218801")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72188:OnSubFailed7218801(arg1)
    print("OnSubFailed7218801")
end

function Quest72188:OnSubStart7218802(arg1)
    print("OnSubStart7218802")
    self:CallDelay(4, self._72160_CountDownFinish)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_EnableInput)
end

function Quest72188:OnSubFinish7218802(arg1)
    print("OnSubFinish7218802")
end

function Quest72188:OnSubFailed7218802(arg1)
    print("OnSubFailed7218802")
end

function Quest72188:OnSubStart7218803(arg1)
    print("OnSubStart7218803")
end

function Quest72188:OnSubFinish7218803(arg1)
    print("OnSubFinish7218803")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72188:OnSubFailed7218803(arg1)
    print("OnSubFailed7218803")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72188:OnSubStart7218804(arg1)
    print("OnSubStart7218804")
end

function Quest72188:OnSubFinish7218804(arg1)
    print("OnSubFinish7218804")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72188:OnSubFailed7218804(arg1)
    print("OnSubFailed7218804")
end

function Quest72188:OnSubStart7218805(arg1)
    print("OnSubStart7218805")
    self:CallDelay(4, self._72160_CountDownFinish)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_EnableInput)
end

function Quest72188:OnSubFinish7218805(arg1)
    print("OnSubFinish7218805")
end

function Quest72188:OnSubFailed7218805(arg1)
    print("OnSubFailed7218805")
end

function Quest72188:OnSubStart7218806(arg1)
    print("OnSubStart7218806")
end

function Quest72188:OnSubFinish7218806(arg1)
    print("OnSubFinish7218806")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72188:OnSubFailed7218806(arg1)
    print("OnSubFailed7218806")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72188:OnSubStart7218807(arg1)
    print("OnSubStart7218807")
end

function Quest72188:OnSubFinish7218807(arg1)
    print("OnSubFinish7218807")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72188:OnSubFailed7218807(arg1)
    print("OnSubFailed7218807")
end

function Quest72188:OnSubStart7218808(arg1)
    print("OnSubStart7218808")
    self:CallDelay(4, self._72160_CountDownFinish)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_EnableInput)
end

function Quest72188:OnSubFinish7218808(arg1)
    print("OnSubFinish7218808")
end

function Quest72188:OnSubFailed7218808(arg1)
    print("OnSubFailed7218808")
end

function Quest72188:OnSubStart7218809(arg1)
    print("OnSubStart7218809")
end

function Quest72188:OnSubFinish7218809(arg1)
    print("OnSubFinish7218809")
end

function Quest72188:OnSubFailed7218809(arg1)
    print("OnSubFailed7218809")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72188:OnSubStart7218810(arg1)
    print("OnSubStart7218810")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1, self.FinishLast)
end

function Quest72188:OnSubFinish7218810(arg1)
    print("OnSubFinish7218810")
end

function Quest72188:OnSubFailed7218810(arg1)
    print("OnSubFailed7218810")
end

return Quest72188
