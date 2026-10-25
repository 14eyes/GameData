require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15047 = class("Quest15047", QuestActorProxy)
Quest15047.defaultAlias = "Quest15047"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15047:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15047:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1504701"] = self.OnSubStart1504701,
        ["1504703"] = self.OnSubStart1504703,
        ["1504704"] = self.OnSubStart1504704,
        ["1504705"] = self.OnSubStart1504705,
        ["1504706"] = self.OnSubStart1504706,
        ["1504707"] = self.OnSubStart1504707,
        ["1504708"] = self.OnSubStart1504708,
        ["1504702"] = self.OnSubStart1504702
    }
end

function Quest15047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1504701"] = self.OnSubFinish1504701,
        ["1504703"] = self.OnSubFinish1504703,
        ["1504704"] = self.OnSubFinish1504704,
        ["1504705"] = self.OnSubFinish1504705,
        ["1504706"] = self.OnSubFinish1504706,
        ["1504707"] = self.OnSubFinish1504707,
        ["1504708"] = self.OnSubFinish1504708,
        ["1504702"] = self.OnSubFinish1504702
    }
end

function Quest15047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1504706"] = self.OnSubFailed1504706, ["1504707"] = self.OnSubFailed1504707}
end

function Quest15047:Start()
    print("Start")
end

function Quest15047:OnDestroy()
    print("OnDestroy")
end

function Quest15047:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15047:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15047:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15047:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q1504702Trigger")
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc21845.id, 15047)
end

function Quest15047:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15047:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15047:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest15047:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15047:OnSubStart1504701(arg1)
    print("OnSubStart1504701")
    this:NpcCreateWithNpcTrigger(npcs.Npc21845.id, 0, 10, 1504701)
    this:GetQuestNpcActor(npcs.Npc21845.alias, 15047):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorUtils.AddQuestAvatarNpcMark(npcs.Npc21845.id, 15047, true, "UI_AvatarIcon_Side_Mualani")
end

function Quest15047:OnSubFinish1504701(arg1)
    print("OnSubFinish1504701")
    this:NpcDestroyImmediately(3, npcs.Npc21845.alias)
    this:SetNavigationByMainId(15047, true)
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc21845.id, 15047)
end

function Quest15047:OnSubStart1504703(arg1)
    print("OnSubStart1504703")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121504701)
    end)
end

function Quest15047:OnSubFinish1504703(arg1)
    print("OnSubFinish1504703")
    this:CancelStoryByQuest(121504701)
end

function Quest15047:OnSubStart1504704(arg1)
    print("OnSubStart1504704")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504704, 0, 25, 1, npcs.Npc21845.id)
end

function Quest15047:OnSubFinish1504704(arg1)
    print("OnSubFinish1504704")
end

function Quest15047:OnSubStart1504705(arg1)
    print("OnSubStart1504705")
    this:GetQuestNpcActor(npcs.Npc21845.alias, 15047):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21949.alias, 15047):DoFreeStyle(7, true, nil, true, true, false, false)
end

function Quest15047:OnSubFinish1504705(arg1)
    print("OnSubFinish1504705")
    this:NpcDestroyImmediately(3, npcs.Npc21845.alias)
    this:NpcDestroyImmediately(3, npcs.Npc21949.alias)
end

function Quest15047:OnSubStart1504706(arg1)
    print("OnSubStart1504706")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121504702)
    end)
end

function Quest15047:OnSubFinish1504706(arg1)
    print("OnSubFinish1504706")
end

function Quest15047:OnSubFailed1504706(arg1)
    print("OnSubFailed1504706")
    this:CancelStoryByQuest(121504702)
end

function Quest15047:OnSubStart1504707(arg1)
    print("OnSubStart1504707")
    this:DeployStoryByQuest(121504702)
end

function Quest15047:OnSubFinish1504707(arg1)
    print("OnSubFinish1504707")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitDataBlack, nil, nil, nil)
    end)
end

function Quest15047:OnSubFailed1504707(arg1)
    print("OnSubFailed1504707")
    this:CancelStoryByQuest(121504702)
end

function Quest15047:OnSubStart1504708(arg1)
    print("OnSubStart1504708")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504708, 0, 38, 1, npcs.Npc21845.id)
end

function Quest15047:OnSubFinish1504708(arg1)
    print("OnSubFinish1504708")
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21949.alias, 3)
    this:CancelStoryByQuest(121504702)
    actorUtils.RemoveQuestAvatarNpcMark(npcs.Npc21845.id, 15047)
end

function Quest15047:OnSubStart1504702(arg1)
    print("OnSubStart1504702")
    actorMgr:CreateActorWithPos("Q1504702Trigger", "Actor/Gadget/Q1504702Trigger", 70900002, 0, points._Q1504702TriggerPoint_.pos, points._Q1504702TriggerPoint_.rot, true, false, 3)
end

function Quest15047:OnSubFinish1504702(arg1)
    print("OnSubFinish1504702")
end

return Quest15047
