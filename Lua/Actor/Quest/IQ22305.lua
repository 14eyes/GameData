require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22305 = class("Quest22305", QuestActorProxy)
Quest22305.defaultAlias = "Quest22305"
local clientData

function Quest22305:OnDataLoaded()
    clientData = self.clientData
end

function Quest22305:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2230501"] = self.OnSubStart2230501
    self.subStartHandlers["2230502"] = self.OnSubStart2230502
    self.subStartHandlers["2230503"] = self.OnSubStart2230503
    self.subStartHandlers["2230504"] = self.OnSubStart2230504
    self.subStartHandlers["2230505"] = self.OnSubStart2230505
    self.subStartHandlers["2230506"] = self.OnSubStart2230506
    self.subStartHandlers["2230507"] = self.OnSubStart2230507
    self.subStartHandlers["2230508"] = self.OnSubStart2230508
    self.subStartHandlers["2230509"] = self.OnSubStart2230509
    self.subStartHandlers["2230510"] = self.OnSubStart2230510
    self.subStartHandlers["2230511"] = self.OnSubStart2230511
    self.subStartHandlers["2230512"] = self.OnSubStart2230512
    self.subStartHandlers["2230513"] = self.OnSubStart2230513
    self.subStartHandlers["2230514"] = self.OnSubStart2230514
    self.subStartHandlers["2230515"] = self.OnSubStart2230515
    self.subStartHandlers["2230516"] = self.OnSubStart2230516
    self.subStartHandlers["2230517"] = self.OnSubStart2230517
    self.subStartHandlers["2230518"] = self.OnSubStart2230518
    self.subStartHandlers["2230519"] = self.OnSubStart2230519
    self.subStartHandlers["2230520"] = self.OnSubStart2230520
    self.subStartHandlers["2230521"] = self.OnSubStart2230521
    self.subStartHandlers["2230522"] = self.OnSubStart2230522
    self.subStartHandlers["2230523"] = self.OnSubStart2230523
    self.subStartHandlers["2230524"] = self.OnSubStart2230524
    self.subStartHandlers["2230525"] = self.OnSubStart2230525
    self.subStartHandlers["2230526"] = self.OnSubStart2230526
    self.subStartHandlers["2230527"] = self.OnSubStart2230527
    self.subStartHandlers["2230528"] = self.OnSubStart2230528
end

function Quest22305:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2230504"] = self.OnSubFinish2230504
    self.subFinishHandlers["2230505"] = self.OnSubFinish2230505
    self.subFinishHandlers["2230506"] = self.OnSubFinish2230506
    self.subFinishHandlers["2230507"] = self.OnSubFinish2230507
    self.subFinishHandlers["2230508"] = self.OnSubFinish2230508
    self.subFinishHandlers["2230509"] = self.OnSubFinish2230509
    self.subFinishHandlers["2230510"] = self.OnSubFinish2230510
    self.subFinishHandlers["2230511"] = self.OnSubFinish2230511
    self.subFinishHandlers["2230512"] = self.OnSubFinish2230512
    self.subFinishHandlers["2230513"] = self.OnSubFinish2230513
    self.subFinishHandlers["2230514"] = self.OnSubFinish2230514
    self.subFinishHandlers["2230515"] = self.OnSubFinish2230515
    self.subFinishHandlers["2230516"] = self.OnSubFinish2230516
    self.subFinishHandlers["2230517"] = self.OnSubFinish2230517
    self.subFinishHandlers["2230518"] = self.OnSubFinish2230518
    self.subFinishHandlers["2230519"] = self.OnSubFinish2230519
    self.subFinishHandlers["2230520"] = self.OnSubFinish2230520
    self.subFinishHandlers["2230521"] = self.OnSubFinish2230521
    self.subFinishHandlers["2230522"] = self.OnSubFinish2230522
    self.subFinishHandlers["2230523"] = self.OnSubFinish2230523
    self.subFinishHandlers["2230524"] = self.OnSubFinish2230524
    self.subFinishHandlers["2230525"] = self.OnSubFinish2230525
    self.subFinishHandlers["2230526"] = self.OnSubFinish2230526
    self.subFinishHandlers["2230527"] = self.OnSubFinish2230527
    self.subFinishHandlers["2230528"] = self.OnSubFinish2230528
end

function Quest22305:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2230501"] = self.OnSubFailed2230501
    self.subFailedHandlers["2230502"] = self.OnSubFailed2230502
    self.subFailedHandlers["2230503"] = self.OnSubFailed2230503
    self.subFailedHandlers["2230504"] = self.OnSubFailed2230504
    self.subFailedHandlers["2230505"] = self.OnSubFailed2230505
    self.subFailedHandlers["2230506"] = self.OnSubFailed2230506
    self.subFailedHandlers["2230507"] = self.OnSubFailed2230507
    self.subFailedHandlers["2230508"] = self.OnSubFailed2230508
    self.subFailedHandlers["2230509"] = self.OnSubFailed2230509
    self.subFailedHandlers["2230510"] = self.OnSubFailed2230510
    self.subFailedHandlers["2230511"] = self.OnSubFailed2230511
    self.subFailedHandlers["2230512"] = self.OnSubFailed2230512
    self.subFailedHandlers["2230513"] = self.OnSubFailed2230513
    self.subFailedHandlers["2230514"] = self.OnSubFailed2230514
    self.subFailedHandlers["2230515"] = self.OnSubFailed2230515
    self.subFailedHandlers["2230516"] = self.OnSubFailed2230516
    self.subFailedHandlers["2230517"] = self.OnSubFailed2230517
    self.subFailedHandlers["2230518"] = self.OnSubFailed2230518
    self.subFailedHandlers["2230519"] = self.OnSubFailed2230519
    self.subFailedHandlers["2230520"] = self.OnSubFailed2230520
    self.subFailedHandlers["2230521"] = self.OnSubFailed2230521
    self.subFailedHandlers["2230522"] = self.OnSubFailed2230522
    self.subFailedHandlers["2230523"] = self.OnSubFailed2230523
    self.subFailedHandlers["2230524"] = self.OnSubFailed2230524
    self.subFailedHandlers["2230525"] = self.OnSubFailed2230525
    self.subFailedHandlers["2230526"] = self.OnSubFailed2230526
    self.subFailedHandlers["2230527"] = self.OnSubFailed2230527
    self.subFailedHandlers["2230528"] = self.OnSubFailed2230528
end

function Quest22305:OnSubStart2230501(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 3, 0)
    self:SetQuestVar(arg1.QuestConfigId, 4, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 0)
    self:SetQuestVar(arg1.QuestConfigId, 2, 1)
end

function Quest22305:OnSubFinish2230501(arg1) end
function Quest22305:OnSubFailed2230501(arg1) end

function Quest22305:OnSubStart2230502(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 1, 0)
    if self:GetQuestVar(arg1.QuestConfigId, 2) < 2 then
        self:RequestInteractionForceAlias("Npc2054")
    end

    self:SetQuestVar(arg1.QuestConfigId, 2, 2)
end

function Quest22305:OnSubFinish2230502(arg1) end
function Quest22305:OnSubFailed2230502(arg1) end
function Quest22305:OnSubStart2230503(arg1) end
function Quest22305:OnSubFinish2230503(arg1) end
function Quest22305:OnSubFailed2230503(arg1) end
function Quest22305:OnSubStart2230504(arg1) end
function Quest22305:OnSubFinish2230504(arg1) end
function Quest22305:OnSubFailed2230504(arg1) end
function Quest22305:OnSubStart2230505(arg1) end
function Quest22305:OnSubFinish2230505(arg1) end
function Quest22305:OnSubFailed2230505(arg1) end

function Quest22305:OnSubStart2230506(arg1)
    if self:GetQuestVar(arg1.QuestConfigId, 2) < 6 then
        self:RequestInteractionForceAlias("Npc2054")
    end

    self:SetQuestVar(arg1.QuestConfigId, 2, 6)
end

function Quest22305:OnSubFinish2230506(arg1) end
function Quest22305:OnSubFailed2230506(arg1) end
function Quest22305:OnSubStart2230507(arg1) end
function Quest22305:OnSubFinish2230507(arg1) end
function Quest22305:OnSubFailed2230507(arg1) end
function Quest22305:OnSubStart2230508(arg1) end
function Quest22305:OnSubFinish2230508(arg1) end
function Quest22305:OnSubFailed2230508(arg1) end
function Quest22305:OnSubStart2230509(arg1) end
function Quest22305:OnSubFinish2230509(arg1) end
function Quest22305:OnSubFailed2230509(arg1) end
function Quest22305:OnSubStart2230510(arg1) end

function Quest22305:OnSubFinish2230510(arg1)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    local v = self:GetQuestVar(arg1.QuestConfigId, 3)
    local questVar2 = self:GetQuestVar(arg1.QuestConfigId, 4)
    local n = v + 1
    print(n)
    if 5 <= n then
        questVar = 1
    end

    if 5 < questVar2 then
        questVar = 1
    end

    self:SetQuestVar(arg1.QuestConfigId, 0, questVar)
    self:SetQuestVar(arg1.QuestConfigId, 3, n)
    self:SetQuestVar(arg1.QuestConfigId, 4, questVar2)
end

function Quest22305:OnSubFailed2230510(arg1) end
function Quest22305:OnSubStart2230511(arg1) end

function Quest22305:OnSubFinish2230511(arg1)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    local v = self:GetQuestVar(arg1.QuestConfigId, 3)
    local questVar2 = self:GetQuestVar(arg1.QuestConfigId, 4)
    local n = v + 1
    local n2 = questVar2 + 1
    print(n)
    print(n2)
    if 5 <= n then
        questVar = 1
    end

    if 5 < n2 then
        questVar = 1
    end

    self:SetQuestVar(arg1.QuestConfigId, 0, questVar)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
    self:SetQuestVar(arg1.QuestConfigId, 3, n)
    self:SetQuestVar(arg1.QuestConfigId, 4, n2)
end

function Quest22305:OnSubFailed2230511(arg1) end
function Quest22305:OnSubStart2230512(arg1) end

function Quest22305:OnSubFinish2230512(arg1)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    local v = self:GetQuestVar(arg1.QuestConfigId, 3)
    local questVar2 = self:GetQuestVar(arg1.QuestConfigId, 4)
    local n = v + 1
    local n2 = questVar2 + 6
    print(n)
    print(n2)
    if 5 <= n then
        questVar = 1
    end

    if 5 < n2 then
        questVar = 1
    end

    self:SetQuestVar(arg1.QuestConfigId, 0, questVar)
    self:SetQuestVar(arg1.QuestConfigId, 3, n)
    self:SetQuestVar(arg1.QuestConfigId, 4, n2)
end

function Quest22305:OnSubFailed2230512(arg1) end

function Quest22305:OnSubStart2230513(arg1)
    if self:GetQuestVar(arg1.QuestConfigId, 2) < 13 then
        self:RequestInteractionForceAlias("Npc2054")
    end

    self:SetQuestVar(arg1.QuestConfigId, 2, 13)
end

function Quest22305:OnSubFinish2230513(arg1) end
function Quest22305:OnSubFailed2230513(arg1) end
function Quest22305:OnSubStart2230514(arg1) end

function Quest22305:OnSubFinish2230514(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 2, 0)
end

function Quest22305:OnSubFailed2230514(arg1) end
function Quest22305:OnSubStart2230515(arg1) end
function Quest22305:OnSubFinish2230515(arg1) end
function Quest22305:OnSubFailed2230515(arg1) end
function Quest22305:OnSubStart2230516(arg1) end
function Quest22305:OnSubFinish2230516(arg1) end
function Quest22305:OnSubFailed2230516(arg1) end
function Quest22305:OnSubStart2230517(arg1) end
function Quest22305:OnSubFinish2230517(arg1) end
function Quest22305:OnSubFailed2230517(arg1) end
function Quest22305:OnSubStart2230518(arg1) end
function Quest22305:OnSubFinish2230518(arg1) end
function Quest22305:OnSubFailed2230518(arg1) end
function Quest22305:OnSubStart2230519(arg1) end
function Quest22305:OnSubFinish2230519(arg1) end
function Quest22305:OnSubFailed2230519(arg1) end
function Quest22305:OnSubStart2230520(arg1) end
function Quest22305:OnSubFinish2230520(arg1) end
function Quest22305:OnSubFailed2230520(arg1) end
function Quest22305:OnSubFailed2230521(arg1) end
function Quest22305:OnSubStart2230521(arg1) end
function Quest22305:OnSubFinish2230521(arg1) end
function Quest22305:OnSubFailed2230522(arg1) end
function Quest22305:OnSubStart2230522(arg1) end
function Quest22305:OnSubFinish2230522(arg1) end
function Quest22305:OnSubFailed2230523(arg1) end
function Quest22305:OnSubStart2230523(arg1) end
function Quest22305:OnSubFinish2230523(arg1) end
function Quest22305:OnSubFailed2230524(arg1) end
function Quest22305:OnSubStart2230524(arg1) end
function Quest22305:OnSubFinish2230524(arg1) end
function Quest22305:OnSubFailed2230525(arg1) end
function Quest22305:OnSubStart2230525(arg1) end
function Quest22305:OnSubFinish2230525(arg1) end
function Quest22305:OnSubFailed2230526(arg1) end
function Quest22305:OnSubStart2230526(arg1) end
function Quest22305:OnSubFinish2230526(arg1) end
function Quest22305:OnSubFailed2230527(arg1) end
function Quest22305:OnSubStart2230527(arg1) end
function Quest22305:OnSubFinish2230527(arg1) end
function Quest22305:OnSubFailed2230528(arg1) end
function Quest22305:OnSubStart2230528(arg1) end
function Quest22305:OnSubFinish2230528(arg1) end
function Quest22305:InvokeOnInteraction(arg1) end
function Quest22305:Start() end
function Quest22305:OnDestroy() end
return Quest22305
