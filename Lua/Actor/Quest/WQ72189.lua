require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72189 = class("Quest72189", QuestActorProxy)
Quest72189.defaultAlias = "Quest72189"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72189:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72189:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7218901"] = self.OnSubStart7218901,
        ["7218902"] = self.OnSubStart7218902,
        ["7218903"] = self.OnSubStart7218903,
        ["7218904"] = self.OnSubStart7218904,
        ["7218905"] = self.OnSubStart7218905,
        ["7218906"] = self.OnSubStart7218906,
        ["7218907"] = self.OnSubStart7218907,
        ["7218908"] = self.OnSubStart7218908,
        ["7218909"] = self.OnSubStart7218909,
        ["7218910"] = self.OnSubStart7218910
    }
end

function Quest72189:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7218901"] = self.OnSubFinish7218901,
        ["7218902"] = self.OnSubFinish7218902,
        ["7218903"] = self.OnSubFinish7218903,
        ["7218904"] = self.OnSubFinish7218904,
        ["7218905"] = self.OnSubFinish7218905,
        ["7218906"] = self.OnSubFinish7218906,
        ["7218907"] = self.OnSubFinish7218907,
        ["7218908"] = self.OnSubFinish7218908,
        ["7218909"] = self.OnSubFinish7218909,
        ["7218910"] = self.OnSubFinish7218910
    }
end

function Quest72189:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7218901"] = self.OnSubFailed7218901,
        ["7218902"] = self.OnSubFailed7218902,
        ["7218903"] = self.OnSubFailed7218903,
        ["7218904"] = self.OnSubFailed7218904,
        ["7218905"] = self.OnSubFailed7218905,
        ["7218906"] = self.OnSubFailed7218906,
        ["7218907"] = self.OnSubFailed7218907,
        ["7218908"] = self.OnSubFailed7218908,
        ["7218909"] = self.OnSubFailed7218909,
        ["7218910"] = self.OnSubFailed7218910
    }
end

function Quest72189:Start()
    print("Start")
end

function Quest72189:OnDestroy()
    print("OnDestroy")
end

function Quest72189:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72189:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72189:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72189:_72160_CountDownFinish()
    self:FinishQuestID(false, 7218902)
    self:FinishQuestID(false, 7218905)
    self:FinishQuestID(false, 7218908)
end

function Quest72189:_72160_EnableInput()
    print("_72160_EnableInput")
    self:EnablePlayerInput(true)
end

function Quest72189:FinishLast()
    print("FinishLast")
    self:FinishQuestID(false, 7218910)
end

function Quest72189:OnSubStart7218901(arg1)
    print("OnSubStart7218901")
end

function Quest72189:OnSubFinish7218901(arg1)
    print("OnSubFinish7218901")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72189:OnSubFailed7218901(arg1)
    print("OnSubFailed7218901")
end

function Quest72189:OnSubStart7218902(arg1)
    print("OnSubStart7218902")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72189:OnSubFinish7218902(arg1)
    print("OnSubFinish7218902")
end

function Quest72189:OnSubFailed7218902(arg1)
    print("OnSubFailed7218902")
end

function Quest72189:OnSubStart7218903(arg1)
    print("OnSubStart7218903")
end

function Quest72189:OnSubFinish7218903(arg1)
    print("OnSubFinish7218903")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72189:OnSubFailed7218903(arg1)
    print("OnSubFailed7218903")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72189:OnSubStart7218904(arg1)
    print("OnSubStart7218904")
end

function Quest72189:OnSubFinish7218904(arg1)
    print("OnSubFinish7218904")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72189:OnSubFailed7218904(arg1)
    print("OnSubFailed7218904")
end

function Quest72189:OnSubStart7218905(arg1)
    print("OnSubStart7218905")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72189:OnSubFinish7218905(arg1)
    print("OnSubFinish7218905")
end

function Quest72189:OnSubFailed7218905(arg1)
    print("OnSubFailed7218905")
end

function Quest72189:OnSubStart7218906(arg1)
    print("OnSubStart7218906")
end

function Quest72189:OnSubFinish7218906(arg1)
    print("OnSubFinish7218906")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72189:OnSubFailed7218906(arg1)
    print("OnSubFailed7218906")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72189:OnSubStart7218907(arg1)
    print("OnSubStart7218907")
end

function Quest72189:OnSubFinish7218907(arg1)
    print("OnSubFinish7218907")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72189:OnSubFailed7218907(arg1)
    print("OnSubFailed7218907")
end

function Quest72189:OnSubStart7218908(arg1)
    print("OnSubStart7218908")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72189:OnSubFinish7218908(arg1)
    print("OnSubFinish7218908")
end

function Quest72189:OnSubFailed7218908(arg1)
    print("OnSubFailed7218908")
end

function Quest72189:OnSubStart7218909(arg1)
    print("OnSubStart7218909")
end

function Quest72189:OnSubFinish7218909(arg1)
    print("OnSubFinish7218909")
end

function Quest72189:OnSubFailed7218909(arg1)
    print("OnSubFailed7218909")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72189:OnSubStart7218910(arg1)
    print("OnSubStart7218910")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1, self.FinishLast)
end

function Quest72189:OnSubFinish7218910(arg1)
    print("OnSubFinish7218910")
end

function Quest72189:OnSubFailed7218910(arg1)
    print("OnSubFailed7218910")
end

return Quest72189
