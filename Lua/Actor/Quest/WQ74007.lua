require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74007 = class("Quest74007", QuestActorProxy)
Quest74007.defaultAlias = "Quest74007"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74007:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7400721"] = self.OnSubStart7400721,
        ["7400701"] = self.OnSubStart7400701,
        ["7400702"] = self.OnSubStart7400702,
        ["7400703"] = self.OnSubStart7400703,
        ["7400704"] = self.OnSubStart7400704,
        ["7400705"] = self.OnSubStart7400705,
        ["7400706"] = self.OnSubStart7400706,
        ["7400707"] = self.OnSubStart7400707,
        ["7400719"] = self.OnSubStart7400719,
        ["7400720"] = self.OnSubStart7400720,
        ["7400708"] = self.OnSubStart7400708,
        ["7400709"] = self.OnSubStart7400709,
        ["7400710"] = self.OnSubStart7400710,
        ["7400711"] = self.OnSubStart7400711,
        ["7400712"] = self.OnSubStart7400712,
        ["7400715"] = self.OnSubStart7400715,
        ["7400716"] = self.OnSubStart7400716,
        ["7400718"] = self.OnSubStart7400718,
        ["7400714"] = self.OnSubStart7400714,
        ["7400713"] = self.OnSubStart7400713,
        ["7400717"] = self.OnSubStart7400717
    }
end

function Quest74007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7400721"] = self.OnSubFinish7400721,
        ["7400701"] = self.OnSubFinish7400701,
        ["7400702"] = self.OnSubFinish7400702,
        ["7400703"] = self.OnSubFinish7400703,
        ["7400704"] = self.OnSubFinish7400704,
        ["7400705"] = self.OnSubFinish7400705,
        ["7400706"] = self.OnSubFinish7400706,
        ["7400707"] = self.OnSubFinish7400707,
        ["7400719"] = self.OnSubFinish7400719,
        ["7400720"] = self.OnSubFinish7400720,
        ["7400708"] = self.OnSubFinish7400708,
        ["7400709"] = self.OnSubFinish7400709,
        ["7400710"] = self.OnSubFinish7400710,
        ["7400711"] = self.OnSubFinish7400711,
        ["7400712"] = self.OnSubFinish7400712,
        ["7400715"] = self.OnSubFinish7400715,
        ["7400716"] = self.OnSubFinish7400716,
        ["7400718"] = self.OnSubFinish7400718,
        ["7400714"] = self.OnSubFinish7400714,
        ["7400713"] = self.OnSubFinish7400713,
        ["7400717"] = self.OnSubFinish7400717
    }
end

function Quest74007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74007:Start()
    print("Start")
end

function Quest74007:OnDestroy()
    print("OnDestroy")
end

function Quest74007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74007:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7400719)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7400720)
    end
end

function Quest74007:OnSubStart7400721(arg1)
    print("OnSubStart7400721")
    this:CreateQuestNpc(arg1, npcs.Npc21221Data.id, 0)
end

function Quest74007:OnSubFinish7400721(arg1)
    print("OnSubFinish7400721")
    this:SafeDestroyQuestNpc(npcs.Npc21221Data.alias, 3)
end

function Quest74007:OnSubStart7400701(arg1)
    print("OnSubStart7400701")
    actorMgr:CreateActorWithPos("Q7400701Trigger", "Actor/Gadget/Q7400701Trigger", 70900002, 0, points.TPos_Q7400701Trigger.pos, points.TPos_Q7400701Trigger.rot, true, false, 3)
end

function Quest74007:OnSubFinish7400701(arg1)
    print("OnSubFinish7400701")
end

function Quest74007:OnSubStart7400702(arg1)
    print("OnSubStart7400702")
    actorMgr:CreateActorWithPos("Q7400702Trigger", "Actor/Gadget/Q7400702Trigger", 70900002, 0, points.TPos_Q7400702Trigger.pos, points.TPos_Q7400702Trigger.rot, true, false, 3)
end

function Quest74007:OnSubFinish7400702(arg1)
    print("OnSubFinish7400702")
end

function Quest74007:OnSubStart7400703(arg1)
    print("OnSubStart7400703")
    this:CreateQuestNpc(arg1, npcs.Npc21031Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400703Trigger", "Actor/Gadget/Q7400703Trigger", 70900002, 0, {x = 2609.05, y = 253.79, z = 4796.433}, {x = 0.0, y = 24.154, z = 0.0}, true, false, 3)
end

function Quest74007:OnSubFinish7400703(arg1)
    print("OnSubFinish7400703")
    this:SafeDestroyQuestNpc(npcs.Npc21031Data.alias, 3)
end

function Quest74007:OnSubStart7400704(arg1)
    print("OnSubStart7400704")
    this:PlayCutsceneIndex(7400704, function(arg1)
        this:ActionSafeCall(nil)
        actorUtils.FinishQuestID(false, 7400704)
    end, nil, nil, false)
end

function Quest74007:OnSubFinish7400704(arg1)
    print("OnSubFinish7400704")
end

function Quest74007:OnSubStart7400705(arg1)
    print("OnSubStart7400705")
    this:CreateQuestNpc(arg1, npcs.Npc21031Data.id, 0)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:RequestInteraction(npcs.Npc21031Data.alias)
    end)
end

function Quest74007:OnSubFinish7400705(arg1)
    print("OnSubFinish7400705")
    this:SafeDestroyQuestNpc(npcs.Npc21031Data.alias, 3)
end

function Quest74007:OnSubStart7400706(arg1)
    print("OnSubStart7400706")
end

function Quest74007:OnSubFinish7400706(arg1)
    print("OnSubFinish7400706")
end

function Quest74007:OnSubStart7400707(arg1)
    print("OnSubStart7400707")
    this:CreateQuestNpc(arg1, npcs.Npc21031Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400707Trigger", "Actor/Gadget/Q7400707Trigger", 70900002, 0, points.TPos_Q7400707Trigger.pos, points.TPos_Q7400707Trigger.rot, true, false, 3)
    this:EnablePlayerInputByQuest(true)
end

function Quest74007:OnSubFinish7400707(arg1)
    print("OnSubFinish7400707")
    this:TransmitPlayerByQuestId(7400708, 1)
    this:SafeDestroyQuestNpc(npcs.Npc21031Data.alias, 3)
end

function Quest74007:OnSubStart7400719(arg1)
    print("OnSubStart7400719")
end

function Quest74007:OnSubFinish7400719(arg1)
    print("OnSubFinish7400719")
end

function Quest74007:OnSubStart7400720(arg1)
    print("OnSubStart7400720")
end

function Quest74007:OnSubFinish7400720(arg1)
    print("OnSubFinish7400720")
end

function Quest74007:OnSubStart7400708(arg1)
    print("OnSubStart7400708")
    this:EnablePlayerInputByQuest(false)
end

function Quest74007:OnSubFinish7400708(arg1)
    print("OnSubFinish7400708")
end

function Quest74007:OnSubStart7400709(arg1)
    print("OnSubStart7400709")
    this:EnablePlayerInputByQuest(true)
end

function Quest74007:OnSubFinish7400709(arg1)
    print("OnSubFinish7400709")
end

function Quest74007:OnSubStart7400710(arg1)
    print("OnSubStart7400710")
    this:CreateQuestNpc(arg1, npcs.Npc5301Data.id, 0)
    this:RequestInteraction(npcs.Npc5301Data.alias)
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest74007:OnSubFinish7400710(arg1)
    print("OnSubFinish7400710")
    this:TransmitPlayerUseCustomizedTplByQuestId(7400711, 2, 15)
    this:SafeDestroyQuestNpc(npcs.Npc5301Data.alias, 3)
end

function Quest74007:OnSubStart7400711(arg1)
    print("OnSubStart7400711")
    actorMgr:CreateActorWithPos("Q7400711Trigger", "Actor/Gadget/Q7400711Trigger", 70900002, 0, {x = 2288.773, y = -309.126, z = 4250.625}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest74007:OnSubFinish7400711(arg1)
    print("OnSubFinish7400711")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_02)
end

function Quest74007:OnSubStart7400712(arg1)
    print("OnSubStart7400712")
end

function Quest74007:OnSubFinish7400712(arg1)
    print("OnSubFinish7400712")
end

function Quest74007:OnSubStart7400715(arg1)
    print("OnSubStart7400715")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
    globalActor:DisablePaimonInProfilePage({3})
end

function Quest74007:OnSubFinish7400715(arg1)
    print("OnSubFinish7400715")
    this:TransmitPlayerByQuestId(7400716, 3)
end

function Quest74007:OnSubStart7400716(arg1)
    print("OnSubStart7400716")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
    globalActor:ResumePaimonInProfilePage({3})
    actorMgr:CreateActorWithPos("Q7400716Trigger", "Actor/Gadget/Q7400716Trigger", 70900002, 0, points.TPos_Q7400716Trigger.pos, points.TPos_Q7400716Trigger.rot, true, false, 3)
end

function Quest74007:OnSubFinish7400716(arg1)
    print("OnSubFinish7400716")
    this:SafeDestroyQuestNpc(npcs.Npc20985Data.alias, 3)
end

function Quest74007:OnSubStart7400718(arg1)
    print("OnSubStart7400718")
end

function Quest74007:OnSubFinish7400718(arg1)
    print("OnSubFinish7400718")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest74007:OnSubStart7400714(arg1)
    print("OnSubStart7400714")
end

function Quest74007:OnSubFinish7400714(arg1)
    print("OnSubFinish7400714")
end

function Quest74007:OnSubStart7400713(arg1)
    print("OnSubStart7400713")
end

function Quest74007:OnSubFinish7400713(arg1)
    print("OnSubFinish7400713")
end

function Quest74007:OnSubStart7400717(arg1)
    print("OnSubStart7400717")
end

function Quest74007:OnSubFinish7400717(arg1)
    print("OnSubFinish7400717")
end

return Quest74007
