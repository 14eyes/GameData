require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40199 = class("Quest40199", QuestActorProxy)
Quest40199.defaultAlias = "Quest40199"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40199:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40199:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4019901"] = self.OnSubStart4019901,
        ["4019904"] = self.OnSubStart4019904,
        ["4019902"] = self.OnSubStart4019902,
        ["4019905"] = self.OnSubStart4019905,
        ["4019906"] = self.OnSubStart4019906,
        ["4019907"] = self.OnSubStart4019907,
        ["4019903"] = self.OnSubStart4019903,
        ["4019908"] = self.OnSubStart4019908,
        ["4019909"] = self.OnSubStart4019909
    }
end

function Quest40199:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4019901"] = self.OnSubFinish4019901,
        ["4019904"] = self.OnSubFinish4019904,
        ["4019902"] = self.OnSubFinish4019902,
        ["4019905"] = self.OnSubFinish4019905,
        ["4019906"] = self.OnSubFinish4019906,
        ["4019907"] = self.OnSubFinish4019907,
        ["4019903"] = self.OnSubFinish4019903,
        ["4019908"] = self.OnSubFinish4019908,
        ["4019909"] = self.OnSubFinish4019909
    }
end

function Quest40199:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40199:Start()
    print("Start")
end

function Quest40199:OnDestroy()
    print("OnDestroy")
end

function Quest40199:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40199:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40199:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30820.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30818.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30819.alias, 3)
    this:ActorDestroy("Q4019909Trigger")
    this:DestroyNpcTrigger("Q4019901N1048Trigger")
    this:DestroyNpcTrigger("Q4019904N1048Trigger")
    this:DestroyNpcTrigger("Q4019906N1048Trigger")
    this:DestroyNpcTrigger("Q4019907N1048Trigger")
end

function Quest40199:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4019909Trigger")
end

function Quest40199:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40199:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40199:OnSubStart4019901(arg1)
    print("OnSubStart4019901")
    this:CreateQuestNpc(arg1, npcs.Npc1048.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30820.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30818.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30819.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4019901Trigger", "Actor/Gadget/Q4019901Trigger", 70900002, 0, points._Q4019901TriggerPoint_.pos, points._Q4019901TriggerPoint_.rot, true, false, 3)
    if this:GetQuestVar(4019901, 2) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId4019901, function(arg1)
            this:SetQuestVarByMainId(2, 1)
        end)
    end

    this:GetQuestNpcActor(npcs.Npc1048.alias, 40199):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc30820.alias, 40199):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc30818.alias, 40199):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc30819.alias, 40199):SitOnChair(0, false)
end

function Quest40199:OnSubFinish4019901(arg1)
    print("OnSubFinish4019901")
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30820.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30818.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30819.alias, 3)
end

function Quest40199:OnSubStart4019904(arg1)
    print("OnSubStart4019904")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4019904, 0, 8, 1.5, npcs.Npc1048.id)
end

function Quest40199:OnSubFinish4019904(arg1)
    print("OnSubFinish4019904")
end

function Quest40199:OnSubStart4019902(arg1)
    print("OnSubStart4019902")
    this:CreateQuestNpc(arg1, npcs.Npc1048.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1048.alias, 40199):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40199:OnSubFinish4019902(arg1)
    print("OnSubFinish4019902")
    this:TransmitPlayerByQuestId(4019902, 1, nil, nil, nil)
end

function Quest40199:OnSubStart4019905(arg1)
    print("OnSubStart4019905")
    this:GetQuestNpcActor(npcs.Npc1048.alias, 40199):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest40199:OnSubFinish4019905(arg1)
    print("OnSubFinish4019905")
end

function Quest40199:OnSubStart4019906(arg1)
    print("OnSubStart4019906")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4019906, 0, 20, 1, npcs.Npc1048.id)
end

function Quest40199:OnSubFinish4019906(arg1)
    print("OnSubFinish4019906")
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
end

function Quest40199:OnSubStart4019907(arg1)
    print("OnSubStart4019907")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4019907, 0, 6, 1.5, npcs.Npc1048.id)
end

function Quest40199:OnSubFinish4019907(arg1)
    print("OnSubFinish4019907")
end

function Quest40199:OnSubStart4019903(arg1)
    print("OnSubStart4019903")
    this:GetQuestNpcActor(npcs.Npc1048.alias, 40199):DoFreeStyle(1220, true, nil, true, true, false, false)
end

function Quest40199:OnSubFinish4019903(arg1)
    print("OnSubFinish4019903")
    this:TransmitPlayerByQuestId(4019903, 1, nil, nil, nil)
end

function Quest40199:OnSubStart4019908(arg1)
    print("OnSubStart4019908")
    this:CreateQuestNpc(arg1, npcs.Npc1048.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1048.alias, 40199):DoFreeStyle(1220, true, nil, true, true, false, false)
end

function Quest40199:OnSubFinish4019908(arg1)
    print("OnSubFinish4019908")
end

function Quest40199:OnSubStart4019909(arg1)
    print("OnSubStart4019909")
    actorMgr:CreateActorWithPos("Q4019909Trigger", "Actor/Gadget/Q4019909Trigger", 70900002, 0, points._Q4019909TriggerPoint_.pos, points._Q4019909TriggerPoint_.rot, true, false, 3)
end

function Quest40199:OnSubFinish4019909(arg1)
    print("OnSubFinish4019909")
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
end

return Quest40199
