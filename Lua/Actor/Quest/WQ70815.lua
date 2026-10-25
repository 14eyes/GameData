require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70815 = class("Quest70815", QuestActorProxy)
Quest70815.defaultAlias = "Quest70815"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70815:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70815:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7081501"] = self.OnSubStart7081501,
        ["7081502"] = self.OnSubStart7081502,
        ["7081503"] = self.OnSubStart7081503,
        ["7081504"] = self.OnSubStart7081504,
        ["7081505"] = self.OnSubStart7081505,
        ["7081506"] = self.OnSubStart7081506,
        ["7081507"] = self.OnSubStart7081507,
        ["7081508"] = self.OnSubStart7081508,
        ["7081509"] = self.OnSubStart7081509,
        ["7081510"] = self.OnSubStart7081510,
        ["7081511"] = self.OnSubStart7081511
    }
end

function Quest70815:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7081501"] = self.OnSubFinish7081501,
        ["7081502"] = self.OnSubFinish7081502,
        ["7081503"] = self.OnSubFinish7081503,
        ["7081504"] = self.OnSubFinish7081504,
        ["7081505"] = self.OnSubFinish7081505,
        ["7081506"] = self.OnSubFinish7081506,
        ["7081507"] = self.OnSubFinish7081507,
        ["7081508"] = self.OnSubFinish7081508,
        ["7081509"] = self.OnSubFinish7081509,
        ["7081510"] = self.OnSubFinish7081510,
        ["7081511"] = self.OnSubFinish7081511
    }
end

function Quest70815:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7081501"] = self.OnSubFailed7081501,
        ["7081502"] = self.OnSubFailed7081502,
        ["7081503"] = self.OnSubFailed7081503,
        ["7081504"] = self.OnSubFailed7081504,
        ["7081505"] = self.OnSubFailed7081505,
        ["7081506"] = self.OnSubFailed7081506,
        ["7081507"] = self.OnSubFailed7081507,
        ["7081508"] = self.OnSubFailed7081508,
        ["7081509"] = self.OnSubFailed7081509,
        ["7081510"] = self.OnSubFailed7081510,
        ["7081511"] = self.OnSubFailed7081511
    }
end

function Quest70815:Start()
    print("Start")
end

function Quest70815:OnDestroy()
    print("OnDestroy")
end

function Quest70815:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 2, 0.5, self.ClearAll)
end

function Quest70815:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearAll()
end

function Quest70815:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearAll()
end

function Quest70815:FinishQuest()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if self.BeFollowState == BeFollowState.SUCCESS then
        actor:FinishQuestID(false, 7081506)
    end

    print("Successl Quest7081506")
end

function Quest70815:ClearAll()
    print("ClearAll")
    self:DestroyQuestNpcActor(npcs.Npc2306Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2308Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2056Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2308Data2.alias, 3)
end

function Quest70815:ClearSix()
    print("ClearSix")
    self:DestroyQuestNpcActor(npcs.Npc2308Data.alias, 3)
end

function Quest70815:EmptyFunction()
    print("EmptyFunction")
    print("empty function mtf")
end

function Quest70815:FailQuest()
    self:Standby()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 7081506)
    end

    print("Fail Quest7081506")
    self:ShowBlackScreen(0.2, 1, 0.5, nil, nil, nil, "QUEST_Message_Q7081506_Fail")
end

function Quest70815:BlackFail()
    print("BlackFail")
    self:ShowBlackScreen(0.2, 1, 0.5, self.FailQuest, nil, nil, "")
end

function Quest70815:PaimonReminder()
    print("PaimonReminder")
    self:NarratorOnlyTaskLegacy(datas.NarratorTable, nil, "")
end

function Quest70815:OnSubStart7081501(arg1)
    print("OnSubStart7081501")
    self:ShowBlackScreen(0.2, 2, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc2056Data.id, 1)
    end, nil, nil, "")
end

function Quest70815:OnSubFinish7081501(arg1)
    print("OnSubFinish7081501")
end

function Quest70815:OnSubFailed7081501(arg1)
    print("OnSubFailed7081501")
end

function Quest70815:OnSubStart7081502(arg1)
    print("OnSubStart7081502")
    self:CreateQuestNpc(arg1, npcs.Npc2306Data.id, 2)
end

function Quest70815:OnSubFinish7081502(arg1)
    print("OnSubFinish7081502")
end

function Quest70815:OnSubFailed7081502(arg1)
    print("OnSubFailed7081502")
end

function Quest70815:OnSubStart7081503(arg1)
    print("OnSubStart7081503")
    self:CreateQuestNpc(arg1, npcs.Npc2308Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc2308Data.alias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc2308Data.alias)
    questNpcActor:EnableInteraction(false)
    questNpcActor:DoFreeStyle(4190, false)
end

function Quest70815:OnSubFinish7081503(arg1)
    print("OnSubFinish7081503")
end

function Quest70815:OnSubFailed7081503(arg1)
    print("OnSubFailed7081503")
end

function Quest70815:OnSubStart7081504(arg1)
    print("OnSubStart7081504")
end

function Quest70815:OnSubFinish7081504(arg1)
    print("OnSubFinish7081504")
end

function Quest70815:OnSubFailed7081504(arg1)
    print("OnSubFailed7081504")
end

function Quest70815:OnSubStart7081505(arg1)
    print("OnSubStart7081505")
    self:GetQuestNpcActor(npcs.Npc2308Data.alias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc2308Data.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
end

function Quest70815:OnSubFinish7081505(arg1)
    print("OnSubFinish7081505")
end

function Quest70815:OnSubFailed7081505(arg1)
    print("OnSubFailed7081505")
end

function Quest70815:OnSubStart7081506(arg1)
    print("OnSubStart7081506")
    self:PaimonReminder()
    self:GetQuestNpcActor(npcs.Npc2308Data.alias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc2308Data.alias)
    questNpcActor:EnableInteraction(false)
    questNpcActor:BeFollowTaskByRoutePoints(datas.RoutePointsData, 20, 25, self.FinishQuest, nil, nil, self.EmptyFunction, nil, self.FailQuest)
end

function Quest70815:OnSubFinish7081506(arg1)
    print("OnSubFinish7081506")
end

function Quest70815:OnSubFailed7081506(arg1)
    print("OnSubFailed7081506")
    self:GetQuestNpcActor(npcs.Npc2308Data.alias)
    self:GetQuestNpcActor(npcs.Npc2308Data.alias):EnableInteraction(true)
end

function Quest70815:OnSubStart7081507(arg1)
    print("OnSubStart7081507")
    self:GetQuestNpcActor(npcs.Npc2308Data.alias)
    self:GetQuestNpcActor(npcs.Npc2308Data.alias):Standby()
end

function Quest70815:OnSubFinish7081507(arg1)
    print("OnSubFinish7081507")
end

function Quest70815:OnSubFailed7081507(arg1)
    print("OnSubFailed7081507")
end

function Quest70815:OnSubStart7081508(arg1)
    print("OnSubStart7081508")
    self:GetQuestNpcActor(npcs.Npc2308Data.alias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc2308Data.alias)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
end

function Quest70815:OnSubFinish7081508(arg1)
    print("OnSubFinish7081508")
    self:ShowBlackScreen(0.2, 1, 0.5, self.ClearSix)
end

function Quest70815:OnSubFailed7081508(arg1)
    print("OnSubFailed7081508")
end

function Quest70815:OnSubStart7081509(arg1)
    print("OnSubStart7081509")
    self:CreateQuestNpc(arg1, npcs.Npc2308Data2.id, 4)
end

function Quest70815:OnSubFinish7081509(arg1)
    print("OnSubFinish7081509")
end

function Quest70815:OnSubFailed7081509(arg1)
    print("OnSubFailed7081509")
end

function Quest70815:OnSubStart7081510(arg1)
    print("OnSubStart7081510")
end

function Quest70815:OnSubFinish7081510(arg1)
    print("OnSubFinish7081510")
end

function Quest70815:OnSubFailed7081510(arg1)
    print("OnSubFailed7081510")
end

function Quest70815:OnSubStart7081511(arg1)
    print("OnSubStart7081511")
end

function Quest70815:OnSubFinish7081511(arg1)
    print("OnSubFinish7081511")
end

function Quest70815:OnSubFailed7081511(arg1)
    print("OnSubFailed7081511")
end

return Quest70815
