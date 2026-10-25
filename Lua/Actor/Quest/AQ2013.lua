require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2013 = class("Quest2013", QuestActorProxy)
Quest2013.defaultAlias = "Quest2013"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest2013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest2013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["201301"] = self.OnSubStart201301,
        ["201311"] = self.OnSubStart201311,
        ["201302"] = self.OnSubStart201302,
        ["201303"] = self.OnSubStart201303,
        ["201304"] = self.OnSubStart201304,
        ["201305"] = self.OnSubStart201305,
        ["201306"] = self.OnSubStart201306,
        ["201307"] = self.OnSubStart201307,
        ["201308"] = self.OnSubStart201308,
        ["201309"] = self.OnSubStart201309,
        ["201312"] = self.OnSubStart201312,
        ["201310"] = self.OnSubStart201310
    }
end

function Quest2013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["201301"] = self.OnSubFinish201301,
        ["201311"] = self.OnSubFinish201311,
        ["201302"] = self.OnSubFinish201302,
        ["201303"] = self.OnSubFinish201303,
        ["201304"] = self.OnSubFinish201304,
        ["201305"] = self.OnSubFinish201305,
        ["201306"] = self.OnSubFinish201306,
        ["201307"] = self.OnSubFinish201307,
        ["201308"] = self.OnSubFinish201308,
        ["201309"] = self.OnSubFinish201309,
        ["201312"] = self.OnSubFinish201312,
        ["201310"] = self.OnSubFinish201310
    }
end

function Quest2013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["201301"] = self.OnSubFailed201301,
        ["201311"] = self.OnSubFailed201311,
        ["201302"] = self.OnSubFailed201302,
        ["201303"] = self.OnSubFailed201303,
        ["201304"] = self.OnSubFailed201304,
        ["201305"] = self.OnSubFailed201305,
        ["201306"] = self.OnSubFailed201306,
        ["201307"] = self.OnSubFailed201307,
        ["201308"] = self.OnSubFailed201308,
        ["201309"] = self.OnSubFailed201309,
        ["201312"] = self.OnSubFailed201312,
        ["201310"] = self.OnSubFailed201310
    }
end

function Quest2013:Start()
    print("Start")
end

function Quest2013:OnDestroy()
    print("OnDestroy")
end

function Quest2013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2013:Narrator01()
    print("Narrator01")
    self:NarratorOnlyTaskByData(datas.NarratorWithId01)
end

function Quest2013:Narrator02()
    print("Narrator02")
    self:NarratorOnlyTaskByData(datas.NarratorWithId02)
end

function Quest2013:Narrator03()
    print("Narrator03")
    self:NarratorOnlyTaskByData(datas.NarratorWithId03)
end

function Quest2013:Narrator04()
    print("Narrator04")
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId04)
    end)
end

function Quest2013:CreateXincheng()
    print("CreateXincheng")
    self:CreateQuestNpcById(201304, npcs.Npc3016Data.id, 0)
    self:RequestInteraction(npcs.Npc3016Data.alias)
end

function Quest2013:AfterCreateQianli()
    print("AfterCreateQianli")
    self:CreateQuestNpcById(201310, npcs.Npc3086Data.id, 0)
    self:RequestInteraction(npcs.Npc3086Data.alias)
end

function Quest2013:TransFinish()
    print("TransFinish")
    self:FinishQuestID(false, 201312)
end

function Quest2013:FailTransBack()
    print("FailTransBack")
    self:TransmitPlayerWithTextByQuestId(201312, 1, {"QUEST_Message_Q201302"}, 2, self.TransFinish)
end

function Quest2013:InvokeOnInteraction(arg1)
    if arg1 == 11 then
        print("Invoke quest finish")
        self:ShowReadingDialog(100916)
    end
end

function Quest2013:OnSubStart201301(arg1)
    print("OnSubStart201301")
    self:NotifyTo("Npc3073", 1, true)
    self:NotifyTo("Npc3074", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3069Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q201301Trigger_.alias, datas.Q201301Trigger_.script, datas.Q201301Trigger_.id, 0, datas.Q201301Trigger_.point.pos, datas.Q201301Trigger_.point.rot, true, false, 3)
end

function Quest2013:OnSubFinish201301(arg1)
    print("OnSubFinish201301")
    self:LightNotifyTo("Npc3073", 0, true)
    self:LightNotifyTo("Npc3074", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc3069Data.alias, 3)
end

function Quest2013:OnSubFailed201301(arg1)
    print("OnSubFailed201301")
end

function Quest2013:OnSubStart201311(arg1)
    print("OnSubStart201311")
    self:CreateQuestNpc(arg1, npcs.Npc3093Data.id, 1)
    self:NotifyTo(npcs.Npc3086Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q201311Trigger_.alias, datas.Q201311Trigger_.script, datas.Q201311Trigger_.id, 0, datas.Q201311Trigger_.point.pos, datas.Q201311Trigger_.point.rot, true, false, 3)
end

function Quest2013:OnSubFinish201311(arg1)
    print("OnSubFinish201311")
    self:SafeDestroyQuestNpc(npcs.Npc3093Data.alias, 3)
end

function Quest2013:OnSubFailed201311(arg1)
    print("OnSubFailed201311")
end

function Quest2013:OnSubStart201302(arg1)
    print("OnSubStart201302")
    self:CreateQuestNpc(arg1, npcs.Npc3085Data.id, 1)
    self:NotifyTo(npcs.Npc3086Data.alias, 1, true)
end

function Quest2013:OnSubFinish201302(arg1)
    print("OnSubFinish201302")
    self:ActionSafeCall(self.Narrator01)
    self:DestroyQuestNpcActor(npcs.Npc3086Data.alias, 3)
end

function Quest2013:OnSubFailed201302(arg1)
    print("OnSubFailed201302")
end

function Quest2013:OnSubStart201303(arg1)
    print("OnSubStart201303")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3086Data.alias, 1, true)
    end)

    actorMgr:CreateActorWithPos(datas.Q201303Trigger_.alias, datas.Q201303Trigger_.script, datas.Q201303Trigger_.id, 0, datas.Q201303Trigger_.point.pos, datas.Q201303Trigger_.point.rot, true, false, 3)
end

function Quest2013:OnSubFinish201303(arg1)
    print("OnSubFinish201303")
    self:SafeDestroyQuestNpc(npcs.Npc3085Data.alias, 3)
end

function Quest2013:OnSubFailed201303(arg1)
    print("OnSubFailed201303")
end

function Quest2013:OnSubStart201304(arg1)
    print("OnSubStart201304")
    self:NotifyTo(npcs.Npc3086Data.alias, 1, true)
    self:ShowBlackScreen(0.5, 1, 0.5, self.CreateXincheng, nil, nil, "", false, true)
end

function Quest2013:OnSubFinish201304(arg1)
    print("OnSubFinish201304")
    self:SafeDestroyQuestNpc(npcs.Npc3016Data.alias, 3)
end

function Quest2013:OnSubFailed201304(arg1)
    print("OnSubFailed201304")
end

function Quest2013:OnSubStart201305(arg1)
    print("OnSubStart201305")
    self:NotifyTo(npcs.Npc3086Data.alias, 1, true)
end

function Quest2013:OnSubFinish201305(arg1)
    print("OnSubFinish201305")
end

function Quest2013:OnSubFailed201305(arg1)
    print("OnSubFailed201305")
end

function Quest2013:OnSubStart201306(arg1)
    print("OnSubStart201306")
    self:NotifyTo(npcs.Npc3086Data.alias, 1, true)
end

function Quest2013:OnSubFinish201306(arg1)
    print("OnSubFinish201306")
end

function Quest2013:OnSubFailed201306(arg1)
    print("OnSubFailed201306")
end

function Quest2013:OnSubStart201307(arg1)
    print("OnSubStart201307")
    self:NotifyTo(npcs.Npc3093Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q201307Trigger_.alias, datas.Q201307Trigger_.script, datas.Q201307Trigger_.id, 0, datas.Q201307Trigger_.point.pos, datas.Q201307Trigger_.point.rot, true, false, 3)
end

function Quest2013:OnSubFinish201307(arg1)
    print("OnSubFinish201307")
    self:SafeDestroyQuestNpc(npcs.Npc3086Data.alias, 3)
    self:LightNotifyTo("Npc3093", 0, true)
end

function Quest2013:OnSubFailed201307(arg1)
    print("OnSubFailed201307")
end

function Quest2013:OnSubStart201308(arg1)
    print("OnSubStart201308")
    self:CreateQuestNpc(arg1, npcs.Npc3016Data.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3086Data.alias, 1, true)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc12054Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q201308Trigger_.alias, datas.Q201308Trigger_.script, datas.Q201308Trigger_.id, 0, datas.Q201308Trigger_.point.pos, datas.Q201308Trigger_.point.rot, true, false, 3)
end

function Quest2013:OnSubFinish201308(arg1)
    print("OnSubFinish201308")
    self:SafeDestroyQuestNpc(npcs.Npc3016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12054Data.alias, 3)
end

function Quest2013:OnSubFailed201308(arg1)
    print("OnSubFailed201308")
end

function Quest2013:OnSubStart201309(arg1)
    print("OnSubStart201309")
    self:NotifyTo(npcs.Npc3086Data.alias, 1, true)
    self:NotifyTo("Npc20269", 1, true)
    self:NotifyTo("Npc20270", 1, true)
    actorMgr:CreateActorWithPos(datas.Q2013HSFailTrigger_.alias, datas.Q2013HSFailTrigger_.script, datas.Q2013HSFailTrigger_.id, 0, datas.Q2013HSFailTrigger_.point.pos, datas.Q2013HSFailTrigger_.point.rot, true, false, 3)
    actorMgr:CreateActorWithPos(datas.Q201309BlockTrigger_.alias, datas.Q201309BlockTrigger_.script, datas.Q201309BlockTrigger_.id, 0, datas.Q201309BlockTrigger_.point.pos, datas.Q201309BlockTrigger_.point.rot, true, false, 3)
end

function Quest2013:OnSubFinish201309(arg1)
    print("OnSubFinish201309")
end

function Quest2013:OnSubFailed201309(arg1)
    print("OnSubFailed201309")
end

function Quest2013:OnSubStart201312(arg1)
    print("OnSubStart201312")
    self:NotifyTo(npcs.Npc3086Data.alias, 1, true)
    self:LevelLoadFinishSafeCall(self.FailTransBack)
end

function Quest2013:OnSubFinish201312(arg1)
    print("OnSubFinish201312")
end

function Quest2013:OnSubFailed201312(arg1)
    print("OnSubFailed201312")
end

function Quest2013:OnSubStart201310(arg1)
    print("OnSubStart201310")
    self:LightNotifyTo("Npc20269", 0, true)
    self:LightNotifyTo("Npc20270", 0, true)
    self:ShowBlackScreen(0.5, 1, 0.5, self.AfterCreateQianli, nil, nil, "", false, true)
end

function Quest2013:OnSubFinish201310(arg1)
    print("OnSubFinish201310")
    self:SafeDestroyQuestNpc(npcs.Npc3086Data.alias, 3)
    self:ActionSafeCall(self.Narrator04)
end

function Quest2013:OnSubFailed201310(arg1)
    print("OnSubFailed201310")
    self:SafeDestroyQuestNpc(npcs.Npc3086Data.alias, 3)
end

return Quest2013
