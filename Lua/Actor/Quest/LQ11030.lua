require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11030 = class("Quest11030", QuestActorProxy)
Quest11030.defaultAlias = "Quest11030"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11030:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1103001"] = self.OnSubStart1103001,
        ["1103002"] = self.OnSubStart1103002,
        ["1103003"] = self.OnSubStart1103003,
        ["1103004"] = self.OnSubStart1103004,
        ["1103010"] = self.OnSubStart1103010,
        ["1103005"] = self.OnSubStart1103005,
        ["1103006"] = self.OnSubStart1103006,
        ["1103007"] = self.OnSubStart1103007,
        ["1103008"] = self.OnSubStart1103008,
        ["1103009"] = self.OnSubStart1103009,
        ["1103011"] = self.OnSubStart1103011,
        ["1103012"] = self.OnSubStart1103012
    }
end

function Quest11030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1103001"] = self.OnSubFinish1103001,
        ["1103002"] = self.OnSubFinish1103002,
        ["1103003"] = self.OnSubFinish1103003,
        ["1103004"] = self.OnSubFinish1103004,
        ["1103010"] = self.OnSubFinish1103010,
        ["1103005"] = self.OnSubFinish1103005,
        ["1103006"] = self.OnSubFinish1103006,
        ["1103007"] = self.OnSubFinish1103007,
        ["1103008"] = self.OnSubFinish1103008,
        ["1103009"] = self.OnSubFinish1103009,
        ["1103011"] = self.OnSubFinish1103011,
        ["1103012"] = self.OnSubFinish1103012
    }
end

function Quest11030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1103001"] = self.OnSubFailed1103001,
        ["1103002"] = self.OnSubFailed1103002,
        ["1103003"] = self.OnSubFailed1103003,
        ["1103004"] = self.OnSubFailed1103004,
        ["1103010"] = self.OnSubFailed1103010,
        ["1103005"] = self.OnSubFailed1103005,
        ["1103006"] = self.OnSubFailed1103006,
        ["1103007"] = self.OnSubFailed1103007,
        ["1103008"] = self.OnSubFailed1103008,
        ["1103009"] = self.OnSubFailed1103009,
        ["1103011"] = self.OnSubFailed1103011,
        ["1103012"] = self.OnSubFailed1103012
    }
end

function Quest11030:Start()
    print("Start")
end

function Quest11030:OnDestroy()
    print("OnDestroy")
end

function Quest11030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11030:PaimonIndicate()
    print("PaimonIndicate")
    self:NarratorOnlyTaskByData(datas.PaimonIndicate, nil, 11030)
end

function Quest11030:CountDown()
    print("CountDown")
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, self.FinishCount)
end

function Quest11030:NormalBlack()
    print("NormalBlack")
    self:ShowBlackScreen(0.5, 1.5, 0.5, nil, nil, nil, "")
end

function Quest11030:ClearSanmishu()
    print("ClearSanmishu")
    self:DestroyQuestNpcActor(npcs.Npc214001Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc214201Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc214301Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:NotifyTo("Npc2140", 0, true)
    self:NotifyTo("Npc2142", 0, true)
    self:NotifyTo("Npc2143", 0, true)
end

function Quest11030:FinishCount()
    print("FinishCount")
    self:EnablePlayerInput(true)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1103010)
    end
end

function Quest11030:ClearAocangshanNPC()
    print("ClearAocangshanNPC")
    self:DestroyQuestNpcActor(npcs.Npc1015Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11030:Clearchallenge1startNPC()
    print("Clearchallenge1startNPC")
    self:DestroyQuestNpcActor(npcs.Npc1015Data2.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11030:Clearchallenge1endNPC()
    print("Clearchallenge1endNPC")
    self:DestroyQuestNpcActor(npcs.Npc1015Data3.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11030:Clearchallenge2startNPC()
    print("Clearchallenge2startNPC")
    self:DestroyQuestNpcActor(npcs.Npc1015Data4.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11030:Clearchallenge2endNPC()
    print("Clearchallenge2endNPC")
    self:DestroyQuestNpcActor(npcs.XiaoData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1015Data4.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10258Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10342Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11030:OnSubStart1103001(arg1)
    print("OnSubStart1103001")
    self:NotifyTo("Npc2140", 1, true)
    self:NotifyTo("Npc2142", 1, true)
    self:NotifyTo("Npc2143", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc214001Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc214201Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc214301Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc214001Data.alias, mainID)
    self:GetQuestNpcActor(npcs.Npc214201Data.alias, mainID)
    self:GetQuestNpcActor(npcs.Npc214301Data.alias, mainID)
    self:GetQuestNpcActor(npcs.Npc214001Data.alias):DoFreeStyle(1240, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc214201Data.alias):DoFreeStyle(1190, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc214301Data.alias):DoFreeStyle(1170, true, nil, true, true)
    actorMgr:CreateActorWithPos(datas.Q11030TriggerBegin_.alias, datas.Q11030TriggerBegin_.script, datas.Q11030TriggerBegin_.id, 0, datas.Q11030TriggerBegin_.point.pos, datas.Q11030TriggerBegin_.point.rot, true, false, 3)
end

function Quest11030:OnSubFinish1103001(arg1)
    print("OnSubFinish1103001")
    self:ActionSafeCall(self.ClearSanmishu)
    self:CallDelay(5, self.PaimonIndicate)
end

function Quest11030:OnSubFailed1103001(arg1)
    print("OnSubFailed1103001")
end

function Quest11030:OnSubStart1103002(arg1)
    print("OnSubStart1103002")
    self:CreateQuestNpc(arg1, npcs.Npc1015Data.id, 1)
end

function Quest11030:OnSubFinish1103002(arg1)
    print("OnSubFinish1103002")
end

function Quest11030:OnSubFailed1103002(arg1)
    print("OnSubFailed1103002")
end

function Quest11030:OnSubStart1103003(arg1)
    print("OnSubStart1103003")
end

function Quest11030:OnSubFinish1103003(arg1)
    print("OnSubFinish1103003")
    self:ActionSafeCall(self.ClearAocangshanNPC)
end

function Quest11030:OnSubFailed1103003(arg1)
    print("OnSubFailed1103003")
end

function Quest11030:OnSubStart1103004(arg1)
    print("OnSubStart1103004")
    self.CallDelay(self, 3, function()
        self:CreateQuestNpc(arg1, npcs.Npc1015Data2.id, 2)
    end)
end

function Quest11030:OnSubFinish1103004(arg1)
    print("OnSubFinish1103004")
    self:ActionSafeCall(self.Clearchallenge1startNPC)
    self:ShowBlackScreen(0.2, 3, 0.5, nil, nil, nil, "")
end

function Quest11030:OnSubFailed1103004(arg1)
    print("OnSubFailed1103004")
end

function Quest11030:OnSubStart1103010(arg1)
    print("OnSubStart1103010")
    self:EnablePlayerInput(false)
    self:TransmitPlayerWithTextByQuestId(1103005, 1, "", 2, self.CountDown)
end

function Quest11030:OnSubFinish1103010(arg1)
    print("OnSubFinish1103010")
end

function Quest11030:OnSubFailed1103010(arg1)
    print("OnSubFailed1103010")
end

function Quest11030:OnSubStart1103005(arg1)
    print("OnSubStart1103005")
    self:CallDelay(2, function()
        globalActor:StartGuide("GuideGanyuQuestAimiOS")
    end)
end

function Quest11030:OnSubFinish1103005(arg1)
    print("OnSubFinish1103005")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1015Data3.alias})
    self.CallDelay(self, 3, function()
        self:TransmitPlayerByQuestId(1103005, 2, nil, function()
            self:CreateQuestNpc(arg1, npcs.Npc1015Data3.id, 6)
        end, questNpcCreateTask)
    end)
end

function Quest11030:OnSubFailed1103005(arg1)
    print("OnSubFailed1103005")
    self.CallDelay(self, 3, function()
        self:TransmitPlayerWithTextByQuestId(1103004, 1, {"WORLDQUEST_RACING_MESSAGE"}, 2)
    end)
end

function Quest11030:OnSubStart1103006(arg1)
    print("OnSubStart1103006")
end

function Quest11030:OnSubFinish1103006(arg1)
    print("OnSubFinish1103006")
    self:ActionSafeCall(self.Clearchallenge1endNPC)
end

function Quest11030:OnSubFailed1103006(arg1)
    print("OnSubFailed1103006")
end

function Quest11030:OnSubStart1103007(arg1)
    print("OnSubStart1103007")
    self:CreateQuestNpc(arg1, npcs.XiaoData.id, 9)
    self:FinishQuestID(false, 1112401)
end

function Quest11030:OnSubFinish1103007(arg1)
    print("OnSubFinish1103007")
    self:ActionSafeCall(self.Clearchallenge2startNPC)
    self:ShowBlackScreen(0.2, 3, 0.5, nil, nil, nil, "")
end

function Quest11030:OnSubFailed1103007(arg1)
    print("OnSubFailed1103007")
end

function Quest11030:OnSubStart1103008(arg1)
    print("OnSubStart1103008")
    actorMgr:CreateActorWithPos(datas.Q11030Trigger_.alias, datas.Q11030Trigger_.script, datas.Q11030Trigger_.id, 0, datas.Q11030Trigger_.point.pos, datas.Q11030Trigger_.point.rot, true, false, 3)
end

function Quest11030:OnSubFinish1103008(arg1)
    print("OnSubFinish1103008")
end

function Quest11030:OnSubFailed1103008(arg1)
    print("OnSubFailed1103008")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
end

function Quest11030:OnSubStart1103009(arg1)
    print("OnSubStart1103009")
end

function Quest11030:OnSubFinish1103009(arg1)
    print("OnSubFinish1103009")
    self:ActionSafeCall(self.Clearchallenge2endNPC)
end

function Quest11030:OnSubFailed1103009(arg1)
    print("OnSubFailed1103009")
end

function Quest11030:OnSubStart1103011(arg1)
    print("OnSubStart1103011")
end

function Quest11030:OnSubFinish1103011(arg1)
    globalActor:LeaveWeather()
end

function Quest11030:OnSubFailed1103011(arg1)
    print("OnSubFailed1103011")
end

function Quest11030:OnSubStart1103012(arg1)
    print("OnSubStart1103012")
end

function Quest11030:OnSubFinish1103012(arg1)
    print("OnSubFinish1103012")
end

function Quest11030:OnSubFailed1103012(arg1)
    print("OnSubFailed1103012")
end

return Quest11030
