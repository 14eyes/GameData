require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19065 = class("Quest19065", QuestActorProxy)
Quest19065.defaultAlias = "Quest19065"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19065:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19065:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1906510"] = self.OnSubStart1906510,
        ["1906513"] = self.OnSubStart1906513,
        ["1906501"] = self.OnSubStart1906501,
        ["1906511"] = self.OnSubStart1906511,
        ["1906502"] = self.OnSubStart1906502,
        ["1906503"] = self.OnSubStart1906503,
        ["1906512"] = self.OnSubStart1906512,
        ["1906504"] = self.OnSubStart1906504,
        ["1906505"] = self.OnSubStart1906505,
        ["1906506"] = self.OnSubStart1906506,
        ["1906507"] = self.OnSubStart1906507,
        ["1906508"] = self.OnSubStart1906508,
        ["1906509"] = self.OnSubStart1906509
    }
end

function Quest19065:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1906510"] = self.OnSubFinish1906510,
        ["1906513"] = self.OnSubFinish1906513,
        ["1906501"] = self.OnSubFinish1906501,
        ["1906511"] = self.OnSubFinish1906511,
        ["1906502"] = self.OnSubFinish1906502,
        ["1906503"] = self.OnSubFinish1906503,
        ["1906512"] = self.OnSubFinish1906512,
        ["1906504"] = self.OnSubFinish1906504,
        ["1906505"] = self.OnSubFinish1906505,
        ["1906506"] = self.OnSubFinish1906506,
        ["1906507"] = self.OnSubFinish1906507,
        ["1906508"] = self.OnSubFinish1906508,
        ["1906509"] = self.OnSubFinish1906509
    }
end

function Quest19065:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1906510"] = self.OnSubFailed1906510,
        ["1906513"] = self.OnSubFailed1906513,
        ["1906501"] = self.OnSubFailed1906501,
        ["1906511"] = self.OnSubFailed1906511,
        ["1906502"] = self.OnSubFailed1906502,
        ["1906503"] = self.OnSubFailed1906503,
        ["1906512"] = self.OnSubFailed1906512,
        ["1906504"] = self.OnSubFailed1906504,
        ["1906505"] = self.OnSubFailed1906505,
        ["1906506"] = self.OnSubFailed1906506,
        ["1906507"] = self.OnSubFailed1906507,
        ["1906508"] = self.OnSubFailed1906508,
        ["1906509"] = self.OnSubFailed1906509
    }
end

function Quest19065:Start()
    print("Start")
end

function Quest19065:OnDestroy()
    print("OnDestroy")
end

function Quest19065:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19065:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19065:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearAll()
end

function Quest19065:ClearNoel()
    print("ClearNoel")
    self:DestroyQuestNpcActor(npcs.Npc1027DataMid.alias, 3)
end

function Quest19065:ClearAll()
    print("ClearAll")
    self:DestroyQuestNpcActor(npcs.Npc1027DataHE.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc11002Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19065Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19065TriggerOut_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19065TriggerOut2_.alias, 3, false)
    self:EnablePlayerInput(true)
end

function Quest19065:ClearAddedTalk()
    print("ClearAddedTalk")
    self:DestroyQuestNpcActor(npcs.Npc1027DataAdd.alias, 3)
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
end

function Quest19065:OnSubStart1906510(arg1)
    print("OnSubStart1906510")
    self:SetNavigationByMainId(19065, true)
end

function Quest19065:OnSubFinish1906510(arg1)
    print("OnSubFinish1906510")
end

function Quest19065:OnSubFailed1906510(arg1)
    print("OnSubFailed1906510")
end

function Quest19065:OnSubStart1906513(arg1)
    print("OnSubStart1906513")
    actorMgr:CreateActorWithPos(datas.Q19065Trigger_.alias, datas.Q19065Trigger_.script, datas.Q19065Trigger_.id, 0, datas.Q19065Trigger_.point.pos, datas.Q19065Trigger_.point.rot, true, false, 3)
    actorMgr:CreateActorWithPos(datas.Q19065TriggerOut_.alias, datas.Q19065TriggerOut_.script, datas.Q19065TriggerOut_.id, 0, datas.Q19065TriggerOut_.point.pos, datas.Q19065TriggerOut_.point.rot, true, false, 3)
end

function Quest19065:OnSubFinish1906513(arg1)
    print("OnSubFinish1906513")
    self:ActionSafeCall(self.ClearAddedTalk)
end

function Quest19065:OnSubFailed1906513(arg1)
    print("OnSubFailed1906513")
end

function Quest19065:OnSubStart1906501(arg1)
    print("OnSubStart1906501")
end

function Quest19065:OnSubFinish1906501(arg1)
    print("OnSubFinish1906501")
end

function Quest19065:OnSubFailed1906501(arg1)
    print("OnSubFailed1906501")
end

function Quest19065:OnSubStart1906511(arg1)
    print("OnSubStart1906511")
end

function Quest19065:OnSubFinish1906511(arg1)
    print("OnSubFinish1906511")
end

function Quest19065:OnSubFailed1906511(arg1)
    print("OnSubFailed1906511")
end

function Quest19065:OnSubStart1906502(arg1)
    print("OnSubStart1906502")
end

function Quest19065:OnSubFinish1906502(arg1)
    print("OnSubFinish1906502")
end

function Quest19065:OnSubFailed1906502(arg1)
    print("OnSubFailed1906502")
end

function Quest19065:OnSubStart1906503(arg1)
    print("OnSubStart1906503")
end

function Quest19065:OnSubFinish1906503(arg1)
    print("OnSubFinish1906503")
end

function Quest19065:OnSubFailed1906503(arg1)
    print("OnSubFailed1906503")
end

function Quest19065:OnSubStart1906512(arg1)
    print("OnSubStart1906512")
end

function Quest19065:OnSubFinish1906512(arg1)
    print("OnSubFinish1906512")
end

function Quest19065:OnSubFailed1906512(arg1)
    print("OnSubFailed1906512")
end

function Quest19065:OnSubStart1906504(arg1)
    print("OnSubStart1906504")
end

function Quest19065:OnSubFinish1906504(arg1)
    print("OnSubFinish1906504")
end

function Quest19065:OnSubFailed1906504(arg1)
    print("OnSubFailed1906504")
end

function Quest19065:OnSubStart1906505(arg1)
    print("OnSubStart1906505")
end

function Quest19065:OnSubFinish1906505(arg1)
    print("OnSubFinish1906505")
end

function Quest19065:OnSubFailed1906505(arg1)
    print("OnSubFailed1906505")
end

function Quest19065:OnSubStart1906506(arg1)
    print("OnSubStart1906506")
    self.EnablePlayerInput(self, false)
    self.CallDelay(self, 3.5, function()
        self:EnablePlayerInput(true)
        self:ShowBlackScreen(0.2, 1.6, 0.5, function()
            self:EnablePlayerInput(true)
            self:CreateQuestNpcById(1906504, npcs.Npc1027DataMid.id, 1)
            self:EnablePlayerInput(true)
            self:RequestCoopInteractionFromSubStartPoint(103401, 1906501)
            self:EnablePlayerInput(true)
            self:RequestInteraction(npcs.Npc1027DataMid.alias)
            self:EnablePlayerInput(true)
        end, nil, nil, "")
    end)

    self.CallDelay(self, 5, function()
        self:EnablePlayerInput(true)
    end)

    actorMgr:CreateActorWithPos(datas.Q19065TriggerOut2_.alias, datas.Q19065TriggerOut2_.script, datas.Q19065TriggerOut2_.id, 0, datas.Q19065TriggerOut2_.point.pos, datas.Q19065TriggerOut2_.point.rot, true, false, 3)
end

function Quest19065:OnSubFinish1906506(arg1)
    print("OnSubFinish1906506")
    self:ActionSafeCall(self.ClearNoel)
    actorMgr:CreateActorWithPos(datas.Q19065TriggerOut2_.alias, datas.Q19065TriggerOut2_.script, datas.Q19065TriggerOut2_.id, 0, datas.Q19065TriggerOut2_.point.pos, datas.Q19065TriggerOut2_.point.rot, true, false, 3)
end

function Quest19065:OnSubFailed1906506(arg1)
    print("OnSubFailed1906506")
end

function Quest19065:OnSubStart1906507(arg1)
    print("OnSubStart1906507")
    self:CreateQuestNpc(arg1, npcs.Npc11002Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc11002Data.alias):DoFreeStyle(4190, true, nil, true, true)
end

function Quest19065:OnSubFinish1906507(arg1)
    print("OnSubFinish1906507")
end

function Quest19065:OnSubFailed1906507(arg1)
    print("OnSubFailed1906507")
end

function Quest19065:OnSubStart1906508(arg1)
    print("OnSubStart1906508")
end

function Quest19065:OnSubFinish1906508(arg1)
    print("OnSubFinish1906508")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc11002Data.alias)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1300, true, nil, true, true)
end

function Quest19065:OnSubFailed1906508(arg1)
    print("OnSubFailed1906508")
end

function Quest19065:OnSubStart1906509(arg1)
    print("OnSubStart1906509")
    self:RequestCoopInteractionFromSubStartPoint(103401, 1906502)
    actorMgr:DestroyEntityActor(datas.Q19065TriggerOut2_.alias, 3, false)
end

function Quest19065:OnSubFinish1906509(arg1)
    print("OnSubFinish1906509")
    self:ActionSafeCall(self.ClearAll)
end

function Quest19065:OnSubFailed1906509(arg1)
    print("OnSubFailed1906509")
end

return Quest19065
