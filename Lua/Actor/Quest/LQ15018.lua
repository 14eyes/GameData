require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15018 = class("Quest15018", QuestActorProxy)
Quest15018.defaultAlias = "Quest15018"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15018:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1501801"] = self.OnSubStart1501801,
        ["1501802"] = self.OnSubStart1501802,
        ["1501808"] = self.OnSubStart1501808,
        ["1501805"] = self.OnSubStart1501805,
        ["1501803"] = self.OnSubStart1501803,
        ["1501804"] = self.OnSubStart1501804,
        ["1501806"] = self.OnSubStart1501806,
        ["1501807"] = self.OnSubStart1501807
    }
end

function Quest15018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1501801"] = self.OnSubFinish1501801,
        ["1501802"] = self.OnSubFinish1501802,
        ["1501808"] = self.OnSubFinish1501808,
        ["1501805"] = self.OnSubFinish1501805,
        ["1501803"] = self.OnSubFinish1501803,
        ["1501804"] = self.OnSubFinish1501804,
        ["1501806"] = self.OnSubFinish1501806,
        ["1501807"] = self.OnSubFinish1501807
    }
end

function Quest15018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15018:Start()
    print("Start")
end

function Quest15018:OnDestroy()
    print("OnDestroy")
end

function Quest15018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15018:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("WaleishaP1Point01")
    this:ActorDestroy("WaleishaP1Point02")
    this:ActorDestroy("WaleishaP1Point03")
    this:ActorDestroy("WaleishaP1Point04")
    this:ActorDestroy("WaleishaP1Point015")
    this:ActorDestroy("WaleishaP1Point00")
    this:ActorDestroy("Q15018Trigger_qiaotou")
    this:ActorDestroy("Q15018Trigger_qiaohoumian")
end

function Quest15018:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15018:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15018:OnSubStart1501801(arg1)
    print("OnSubStart1501801")
    this:CreateQuestNpc(arg1, npcs.Npc1098.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 15018):DoFreeStyle(1280, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("WaleishaP1Point00", "Actor/Gadget/WaleishaP1Point00", 70900002, 0, points._WaleishaP1Point00Point_.pos, points._WaleishaP1Point00Point_.rot, true, false, 3)
end

function Quest15018:OnSubFinish1501801(arg1)
    print("OnSubFinish1501801")
    this:SetNavigationByMainId(15018, true)
end

function Quest15018:OnSubStart1501802(arg1)
    print("OnSubStart1501802")
    this:DeployStoryByQuest(121501802)
end

function Quest15018:OnSubFinish1501802(arg1)
    print("OnSubFinish1501802")
    this:CancelStoryByQuest(121501802)
end

function Quest15018:OnSubStart1501808(arg1)
    print("OnSubStart1501808")
    actorMgr:CreateActorWithPos("Q15018Trigger_qiaotou", "Actor/Gadget/Q15018Trigger_qiaotou", 70900002, 0, points._Q15018Trigger_qiaotouPoint_.pos, points._Q15018Trigger_qiaotouPoint_.rot, true, false, 3)
end

function Quest15018:OnSubFinish1501808(arg1)
    print("OnSubFinish1501808")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
end

function Quest15018:OnSubStart1501805(arg1)
    print("OnSubStart1501805")
    actorMgr:CreateActorWithPos("WaleishaP1Point015", "Actor/Gadget/WaleishaP1Point015", 70900002, 0, points._WaleishaP1Point015Point_.pos, points._WaleishaP1Point015Point_.rot, true, false, 3)
end

function Quest15018:OnSubFinish1501805(arg1)
    print("OnSubFinish1501805")
    this:QuestNarratorTask(datas.NarratorWithId_6, nil)
end

function Quest15018:OnSubStart1501803(arg1)
    print("OnSubStart1501803")
    actorMgr:CreateActorWithPos("WaleishaP1Point02", "Actor/Gadget/WaleishaP1Point02", 70900002, 0, points._WaleishaP1Point02Point_.pos, points._WaleishaP1Point02Point_.rot, true, false, 3)
end

function Quest15018:OnSubFinish1501803(arg1)
    print("OnSubFinish1501803")
end

function Quest15018:OnSubStart1501804(arg1)
    print("OnSubStart1501804")
    actorMgr:CreateActorWithPos("WaleishaP1Point03", "Actor/Gadget/WaleishaP1Point03", 70900002, 0, points._WaleishaP1Point03Point_.pos, points._WaleishaP1Point03Point_.rot, true, false, 3)
end

function Quest15018:OnSubFinish1501804(arg1)
    print("OnSubFinish1501804")
end

function Quest15018:OnSubStart1501806(arg1)
    print("OnSubStart1501806")
    actorMgr:CreateActorWithPos("WaleishaP1Point04", "Actor/Gadget/WaleishaP1Point04", 70900002, 0, points._WaleishaP1Point04Point_.pos, points._WaleishaP1Point04Point_.rot, true, false, 3)
end

function Quest15018:OnSubFinish1501806(arg1)
    print("OnSubFinish1501806")
end

function Quest15018:OnSubStart1501807(arg1)
    print("OnSubStart1501807")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1501807, 0, 12, 0, npcs.Npc1098.id)
end

function Quest15018:OnSubFinish1501807(arg1)
    print("OnSubFinish1501807")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
end

return Quest15018
