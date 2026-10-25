require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22300 = class("Quest22300", QuestActorProxy)
Quest22300.defaultAlias = "Quest22300"
local clientData
local taleType

function Quest22300:OnDataLoaded()
    clientData = self.clientData
    taleType = clientData.TaleType
end

function Quest22300:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2230001"] = self.OnSubStart2230001
    self.subStartHandlers["2230002"] = self.OnSubStart2230002
    self.subStartHandlers["2230003"] = self.OnSubStart2230003
    self.subStartHandlers["2230004"] = self.OnSubStart2230004
    self.subStartHandlers["2230010"] = self.OnSubStart2230010
    self.subStartHandlers["2230011"] = self.OnSubStart2230011
    self.subStartHandlers["2230012"] = self.OnSubStart2230012
    self.subStartHandlers["2230013"] = self.OnSubStart2230013
    self.subStartHandlers["2230060"] = self.OnSubStart2230060
    self.subStartHandlers["2230061"] = self.OnSubStart2230061
    self.subStartHandlers["2230080"] = self.OnSubStart2230080
    self.subStartHandlers["2230081"] = self.OnSubStart2230081
end

function Quest22300:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2230001"] = self.OnSubFinish2230001
    self.subFinishHandlers["2230002"] = self.OnSubFinish2230002
    self.subFinishHandlers["2230003"] = self.OnSubFinish2230003
    self.subFinishHandlers["2230004"] = self.OnSubFinish2230004
    self.subFinishHandlers["2230010"] = self.OnSubFinish2230010
    self.subFinishHandlers["2230011"] = self.OnSubFinish2230011
    self.subFinishHandlers["2230012"] = self.OnSubFinish2230012
    self.subFinishHandlers["2230013"] = self.OnSubFinish2230013
    self.subFinishHandlers["2230060"] = self.OnSubFinish2230060
    self.subFinishHandlers["2230061"] = self.OnSubFinish2230061
    self.subFinishHandlers["2230080"] = self.OnSubFinish2230080
    self.subFinishHandlers["2230081"] = self.OnSubFinish2230081
end

function Quest22300:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2230001"] = self.OnSubFailed2230001
    self.subFailedHandlers["2230002"] = self.OnSubFailed2230002
    self.subFailedHandlers["2230003"] = self.OnSubFailed2230003
    self.subFailedHandlers["2230004"] = self.OnSubFailed2230004
    self.subFailedHandlers["2230010"] = self.OnSubFailed2230010
    self.subFailedHandlers["2230011"] = self.OnSubFailed2230011
    self.subFailedHandlers["2230012"] = self.OnSubFailed2230012
    self.subFailedHandlers["2230013"] = self.OnSubFailed2230013
    self.subFailedHandlers["2230060"] = self.OnSubFailed2230060
    self.subFailedHandlers["2230061"] = self.OnSubFailed2230061
    self.subFailedHandlers["2230080"] = self.OnSubFailed2230080
    self.subFailedHandlers["2230081"] = self.OnSubFailed2230081
end

function Quest22300:OnSubStart2230001(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 0)
    self:NotifyTo("Npc2014", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22300:OnSubFinish2230001(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 2, 1)
end

function Quest22300:OnSubFailed2230001(arg1) end

function Quest22300:OnSubStart2230002(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 2, 2)
    self:NotifyTo("Npc2014", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22300:OnSubFinish2230002(arg1)
    local str = tostring(self:GetGivingRecord(2230002))
    local v = taleType[str]
    self:SetQuestVar(arg1.QuestConfigId, 0, v)
end

function Quest22300:OnSubFailed2230002(arg1) end

function Quest22300:OnSubStart2230003(arg1)
    if self:GetQuestVar(arg1.QuestconfigId, 2) < 3 then
        self:RequestInteractionForceAlias("Npc2014")
    end

    self:SetQuestVar(arg1.QuestConfigId, 2, 3)
    self:NotifyTo("Npc2014", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22300:OnSubFinish2230003(arg1) end
function Quest22300:OnSubFailed2230003(arg1) end

function Quest22300:OnSubStart2230004(arg1)
    if self:GetQuestVar(arg1.QuestconfigId, 2) < 4 then
        self:RequestInteractionForceAlias("Npc2014")
    end

    self:SetQuestVar(arg1.QuestConfigId, 2, 4)
    self:NotifyTo("Npc2014", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22300:OnSubFinish2230004(arg1)
    self:NotifyTo("Npc2014", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest22300:OnSubFailed2230004(arg1) end
function Quest22300:OnSubStart2230010(arg1) end
function Quest22300:OnSubFinish2230010(arg1) end
function Quest22300:OnSubFailed2230010(arg1) end
function Quest22300:OnSubStart2230011(arg1) end
function Quest22300:OnSubFinish2230011(arg1) end
function Quest22300:OnSubFailed2230011(arg1) end
function Quest22300:OnSubStart2230012(arg1) end
function Quest22300:OnSubFinish2230012(arg1) end
function Quest22300:OnSubFailed2230012(arg1) end
function Quest22300:OnSubFinish2230013(arg1) end
function Quest22300:OnSubFailed2230013(arg1) end
function Quest22300:OnSubStart2230060(arg1) end

function Quest22300:OnSubFinish2230060(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest22300:OnSubFailed2230060(arg1) end

function Quest22300:OnSubFinish2230061(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 1, 2)
end

function Quest22300:OnSubFailed2230061(arg1) end
function Quest22300:OnSubStart2230080(arg1) end
function Quest22300:OnSubFinish2230080(arg1) end
function Quest22300:OnSubFailed2230080(arg1) end
function Quest22300:OnSubFinish2230081(arg1) end
function Quest22300:OnSubFailed2230081(arg1) end
function Quest22300:InvokeOnInteraction(arg1) end
function Quest22300:Start() end
function Quest22300:OnDestroy() end

function Quest22300:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
    self:NotifyTo("Npc2014", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest22300:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
    self:NotifyTo("Npc2014", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest22300:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:NotifyTo("Npc2014", NpcUtil.NpcEventType.STARTDAILY, true)
end

return Quest22300
