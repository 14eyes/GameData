require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7019 = class("Quest7019", QuestActorProxy)
Quest7019.defaultAlias = "Quest7019"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7019:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["701911"] = self.OnSubStart701911,
        ["701901"] = self.OnSubStart701901,
        ["701909"] = self.OnSubStart701909,
        ["701919"] = self.OnSubStart701919,
        ["701912"] = self.OnSubStart701912,
        ["701902"] = self.OnSubStart701902,
        ["701903"] = self.OnSubStart701903,
        ["701913"] = self.OnSubStart701913,
        ["701914"] = self.OnSubStart701914,
        ["701915"] = self.OnSubStart701915,
        ["701916"] = self.OnSubStart701916,
        ["701917"] = self.OnSubStart701917,
        ["701918"] = self.OnSubStart701918,
        ["701910"] = self.OnSubStart701910,
        ["701904"] = self.OnSubStart701904,
        ["701905"] = self.OnSubStart701905,
        ["701906"] = self.OnSubStart701906,
        ["701907"] = self.OnSubStart701907,
        ["701908"] = self.OnSubStart701908
    }
end

function Quest7019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["701911"] = self.OnSubFinish701911,
        ["701901"] = self.OnSubFinish701901,
        ["701909"] = self.OnSubFinish701909,
        ["701919"] = self.OnSubFinish701919,
        ["701912"] = self.OnSubFinish701912,
        ["701902"] = self.OnSubFinish701902,
        ["701903"] = self.OnSubFinish701903,
        ["701913"] = self.OnSubFinish701913,
        ["701914"] = self.OnSubFinish701914,
        ["701915"] = self.OnSubFinish701915,
        ["701916"] = self.OnSubFinish701916,
        ["701917"] = self.OnSubFinish701917,
        ["701918"] = self.OnSubFinish701918,
        ["701910"] = self.OnSubFinish701910,
        ["701904"] = self.OnSubFinish701904,
        ["701905"] = self.OnSubFinish701905,
        ["701906"] = self.OnSubFinish701906,
        ["701907"] = self.OnSubFinish701907,
        ["701908"] = self.OnSubFinish701908
    }
end

function Quest7019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest7019:Start()
    print("Start")
end

function Quest7019:OnDestroy()
    print("OnDestroy")
end

function Quest7019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7019:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q701911Trigger", 7019)
    this:ActorDestroy("Q701912Trigger", 7019)
    this:ActorDestroy("Q701912Trigger_1", 7019)
end

function Quest7019:ActorDestroy(arg1, arg2)
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

function Quest7019:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7019:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7019:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest7019:OnSubStart701911(arg1)
    print("OnSubStart701911")
    if this:GetQuestVar(701911, 0) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_701901, function(arg1)
            this:SetQuestVarByMainId(0, 1)
        end)
    end

    actorMgr:CreateActorWithPos("Q701911Trigger", "Actor/Gadget/Q701911Trigger", 70900002, 0, points._Q701911TriggerPoint_.pos, points._Q701911TriggerPoint_.rot, true, false, 20367, nil, 0, 7019)
end

function Quest7019:OnSubFinish701911(arg1)
    print("OnSubFinish701911")
    this:ActorDestroy("Q701911Trigger", 7019)
end

function Quest7019:OnSubStart701901(arg1)
    print("OnSubStart701901")
    this:NpcCreateWithNpcTrigger(npcs.Npc1330.id, 0, 10, 701901)
end

function Quest7019:OnSubFinish701901(arg1)
    print("OnSubFinish701901")
end

function Quest7019:OnSubStart701909(arg1)
    print("OnSubStart701909")
    this:CreateQuestNpc(arg1, npcs.Npc16999.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1330.id, arg1)
end

function Quest7019:OnSubFinish701909(arg1)
    print("OnSubFinish701909")
    this:NpcDestroyImmediately(20367, npcs.Npc16999.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc1330.alias)
end

function Quest7019:OnSubStart701919(arg1)
    print("OnSubStart701919")
end

function Quest7019:OnSubFinish701919(arg1)
    print("OnSubFinish701919")
end

function Quest7019:OnSubStart701912(arg1)
    print("OnSubStart701912")
    actorMgr:CreateActorWithPos("Q701912Trigger", "Actor/Gadget/Q701912Trigger", 70900002, 0, points._Q701912TriggerPoint_.pos, points._Q701912TriggerPoint_.rot, true, false, 20367, nil, 0, 7019)
    actorMgr:CreateActorWithPos("Q701912Trigger_1", "Actor/Gadget/Q701912Trigger_1", 70900002, 0, points._Q701912Trigger_1Point_.pos, points._Q701912Trigger_1Point_.rot, true, false, 20367, nil, 0, 7019)
end

function Quest7019:OnSubFinish701912(arg1)
    print("OnSubFinish701912")
    this:ActorDestroy("Q701912Trigger", 7019)
    this:ActorDestroy("Q701912Trigger_1", 7019)
end

function Quest7019:OnSubStart701902(arg1)
    print("OnSubStart701902")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 18, 701902)
end

function Quest7019:OnSubFinish701902(arg1)
    print("OnSubFinish701902")
    this:NpcDestroyImmediately(20367, npcs.Npc16999.alias)
end

function Quest7019:OnSubStart701903(arg1)
    print("OnSubStart701903")
end

function Quest7019:OnSubFinish701903(arg1)
    print("OnSubFinish701903")
end

function Quest7019:OnSubStart701913(arg1)
    print("OnSubStart701913")
end

function Quest7019:OnSubFinish701913(arg1)
    print("OnSubFinish701913")
end

function Quest7019:OnSubStart701914(arg1)
    print("OnSubStart701914")
end

function Quest7019:OnSubFinish701914(arg1)
    print("OnSubFinish701914")
end

function Quest7019:OnSubStart701915(arg1)
    print("OnSubStart701915")
end

function Quest7019:OnSubFinish701915(arg1)
    print("OnSubFinish701915")
end

function Quest7019:OnSubStart701916(arg1)
    print("OnSubStart701916")
end

function Quest7019:OnSubFinish701916(arg1)
    print("OnSubFinish701916")
end

function Quest7019:OnSubStart701917(arg1)
    print("OnSubStart701917")
end

function Quest7019:OnSubFinish701917(arg1)
    print("OnSubFinish701917")
end

function Quest7019:OnSubStart701918(arg1)
    print("OnSubStart701918")
    this:DeployRangeStoryByQuest(110701900, 20367, {x = 465.733, y = 52.195, z = 584.519}, 80, 120)
end

function Quest7019:OnSubFinish701918(arg1)
    print("OnSubFinish701918")
end

function Quest7019:OnSubStart701910(arg1)
    print("OnSubStart701910")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 20, 701910)
end

function Quest7019:OnSubFinish701910(arg1)
    print("OnSubFinish701910")
    this:NpcDestroyImmediately(20367, npcs.Npc16999.alias)
    this:CancelRangeStoryByQuest(110701900)
end

function Quest7019:OnSubStart701904(arg1)
    print("OnSubStart701904")
    this:CreateQuestNpc(arg1, npcs.Npc1080.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1330.id, 0, 10, 701904)
    this:CreateQuestNpc(arg1, npcs.Npc1336.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10200.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16569.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16639.id, 0, false, 0)
end

function Quest7019:OnSubFinish701904(arg1)
    print("OnSubFinish701904")
end

function Quest7019:OnSubStart701905(arg1)
    print("OnSubStart701905")
    this:CreateLocalGadget(74045030, "1", points.Q701905_Gadget74045030_1_Point.pos, points.Q701905_Gadget74045030_1_Point.rot, 20367, nil, nil, false, 0, true, nil)
    this:DeployRangeStoryByQuest(110701901, 20367, {x = 465.481, y = 170.713, z = 448.99}, 500, 600)
end

function Quest7019:OnSubFinish701905(arg1)
    print("OnSubFinish701905")
end

function Quest7019:OnSubStart701906(arg1)
    print("OnSubStart701906")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 15, 701906)
    this:CreateLocalGadget(74045030, "1", points.Q701905_Gadget74045030_1_Point.pos, points.Q701905_Gadget74045030_1_Point.rot, 20367, nil, nil, false, 0, true, nil)
end

function Quest7019:OnSubFinish701906(arg1)
    print("OnSubFinish701906")
    this:NpcDestroyImmediately(20367, npcs.Npc1080.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc1330.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc1336.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc10200.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc16569.alias)
    this:NpcDestroyImmediately(20367, npcs.Npc16639.alias)
    this:RemoveLocalGadget(74045030, "1")
    this:CancelAllStory()
end

function Quest7019:OnSubStart701907(arg1)
    print("OnSubStart701907")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 10, 701907)
end

function Quest7019:OnSubFinish701907(arg1)
    print("OnSubFinish701907")
end

function Quest7019:OnSubStart701908(arg1)
    print("OnSubStart701908")
    this:NpcCreateWithNpcTrigger(npcs.Npc16999.id, 0, 10, 701908)
    this:CreateLocalGadget(74045030, "1", points.Q701905_Gadget74045030_1_Point.pos, points.Q701905_Gadget74045030_1_Point.rot, 20367, nil, nil, false, 0, true, nil)
end

function Quest7019:OnSubFinish701908(arg1)
    print("OnSubFinish701908")
    this:NpcDestroyImmediately(20367, npcs.Npc16999.alias)
    this:RemoveLocalGadget(74045030, "1")
end

return Quest7019
