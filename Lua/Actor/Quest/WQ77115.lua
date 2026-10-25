require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77115 = class("Quest77115", QuestActorProxy)
Quest77115.defaultAlias = "Quest77115"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77115:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77115:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7711503"] = self.OnSubStart7711503,
        ["7711505"] = self.OnSubStart7711505,
        ["7711506"] = self.OnSubStart7711506,
        ["7711507"] = self.OnSubStart7711507,
        ["7711511"] = self.OnSubStart7711511,
        ["7711512"] = self.OnSubStart7711512,
        ["7711514"] = self.OnSubStart7711514,
        ["7711501"] = self.OnSubStart7711501,
        ["7711515"] = self.OnSubStart7711515,
        ["7711516"] = self.OnSubStart7711516
    }
end

function Quest77115:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7711503"] = self.OnSubFinish7711503,
        ["7711505"] = self.OnSubFinish7711505,
        ["7711506"] = self.OnSubFinish7711506,
        ["7711507"] = self.OnSubFinish7711507,
        ["7711511"] = self.OnSubFinish7711511,
        ["7711512"] = self.OnSubFinish7711512,
        ["7711514"] = self.OnSubFinish7711514,
        ["7711501"] = self.OnSubFinish7711501,
        ["7711515"] = self.OnSubFinish7711515,
        ["7711516"] = self.OnSubFinish7711516
    }
end

function Quest77115:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77115:Start()
    print("Start")
end

function Quest77115:OnDestroy()
    print("OnDestroy")
end

function Quest77115:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77115:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77115:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q7711520Trigger", nil)
    this:ActorDestroy("Q7711519Trigger", nil)
    this:ActorDestroy("Q7711518Trigger", nil)
    this:ActorDestroy("Q7711517Trigger", nil)
    this:ActorDestroy("Q7711507Trigger", nil)
    this:ActorDestroy("Q7711503Trigger", nil)
    this:ActorDestroy("Q7711502Trigger", nil)
    this:ActorDestroy("Q7711516Trigger", nil)
    this:ActorDestroy("Q7711512Trigger", nil)
    this:ActorDestroy("Q7711501Trigger", nil)
    this:ActorDestroy("Q7711521Trigger", nil)
    this:SafeDestroyQuestNpc(npcs.Npc22308.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22356.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22416.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22417.alias, 3)
    this:RecycleAllRes()
end

function Quest77115:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7711514Trigger", 77115)
    this:ActorDestroy("Q7711507Trigger", 0)
    this:ActorDestroy("Q7711503Trigger", 0)
    this:ActorDestroy("Q7711516Trigger", 0)
    this:ActorDestroy("Q7711512Trigger", 0)
end

function Quest77115:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77115:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest77115:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77115:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77115:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77115:OnSubStart7711503(arg1)
    print("OnSubStart7711503")
    this:NpcCreateWithNpcTrigger(npcs.Npc22356.id, 0, 20, 7711503)
    this:GetQuestNpcActor(npcs.Npc22356.alias, 77115):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22700.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22700.alias, 77115):DoFreeStyle(4, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22699.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22699.alias, 77115):DoFreeStyle(1, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22698.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22698.alias, 77115):DoFreeStyle(2, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7711503Trigger", "Actor/Gadget/Q7711503Trigger", 70900002, 0, points._Q7711503TriggerPoint_.pos, points._Q7711503TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77115:OnSubFinish7711503(arg1)
    print("OnSubFinish7711503")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22356.alias)
    this:SafeDestroyQuestNpc(npcs.Npc22700.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22699.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22698.alias, 3)
end

function Quest77115:OnSubStart7711505(arg1)
    print("OnSubStart7711505")
end

function Quest77115:OnSubFinish7711505(arg1)
    print("OnSubFinish7711505")
end

function Quest77115:OnSubStart7711506(arg1)
    print("OnSubStart7711506")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7711506, 0, 20, 0, npcs.Npc22356.id)
    this:RequestInteraction("22356", "22356", true)
end

function Quest77115:OnSubFinish7711506(arg1)
    print("OnSubFinish7711506")
    this:NpcDestroyWithDither(3, npcs.Npc22356.alias)
end

function Quest77115:OnSubStart7711507(arg1)
    print("OnSubStart7711507")
    actorMgr:CreateActorWithPos("Q7711507Trigger", "Actor/Gadget/Q7711507Trigger", 70900002, 0, points._Q7711507TriggerPoint_.pos, points._Q7711507TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77115:OnSubFinish7711507(arg1)
    print("OnSubFinish7711507")
end

function Quest77115:OnSubStart7711511(arg1)
    print("OnSubStart7711511")
end

function Quest77115:OnSubFinish7711511(arg1)
    print("OnSubFinish7711511")
end

function Quest77115:OnSubStart7711512(arg1)
    print("OnSubStart7711512")
    actorMgr:CreateActorWithPos("Q7711512Trigger", "Actor/Gadget/Q7711512Trigger", 70900002, 0, points._Q7711512TriggerPoint_.pos, points._Q7711512TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77115:OnSubFinish7711512(arg1)
    print("OnSubFinish7711512")
end

function Quest77115:OnSubStart7711514(arg1)
    print("OnSubStart7711514")
    this:CreateQuestNpc(arg1, npcs.Npc22308.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22308.alias, 77115):DoFreeStyle(4121, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7711514Trigger", "Actor/Gadget/Q7711514Trigger", 70900002, 0, points._Q7711514TriggerPoint_.pos, points._Q7711514TriggerPoint_.rot, true, false, 3, nil, 0, 77115)
    this:GetQuestNpcActor(npcs.Npc22308.alias, 77115):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc22308.alias, 77115):PlayEmoSync("", "", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB04", 0, false, true, true)
end

function Quest77115:OnSubFinish7711514(arg1)
    print("OnSubFinish7711514")
    this:GetQuestNpcActor(npcs.Npc22308.alias, 77115):DisableInteeHeadCtrl(false)
end

function Quest77115:OnSubStart7711501(arg1)
    print("OnSubStart7711501")
    this:CreateQuestNpc(arg1, npcs.Npc22308.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22308.alias, 77115):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc22308.alias, "", true)
end

function Quest77115:OnSubFinish7711501(arg1)
    print("OnSubFinish7711501")
end

function Quest77115:OnSubStart7711515(arg1)
    print("OnSubStart7711515")
    this:CreateQuestNpc(arg1, npcs.Npc22308.id, 0, false, 0)
end

function Quest77115:OnSubFinish7711515(arg1)
    print("OnSubFinish7711515")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22308.alias)
end

function Quest77115:OnSubStart7711516(arg1)
    print("OnSubStart7711516")
    actorMgr:CreateActorWithPos("Q7711516Trigger", "Actor/Gadget/Q7711516Trigger", 70900002, 0, points._Q7711516TriggerPoint_.pos, points._Q7711516TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77115:OnSubFinish7711516(arg1)
    print("OnSubFinish7711516")
    this:SetNavigationByMainId(77116, true)
end

return Quest77115
