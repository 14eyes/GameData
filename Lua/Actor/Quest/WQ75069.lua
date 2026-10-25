require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75069 = class("Quest75069", QuestActorProxy)
Quest75069.defaultAlias = "Quest75069"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest75069:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75069:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7506901"] = self.OnSubStart7506901,
        ["7506902"] = self.OnSubStart7506902,
        ["7506903"] = self.OnSubStart7506903,
        ["7506904"] = self.OnSubStart7506904,
        ["7506906"] = self.OnSubStart7506906,
        ["7506907"] = self.OnSubStart7506907,
        ["7506908"] = self.OnSubStart7506908,
        ["7506905"] = self.OnSubStart7506905,
        ["7506909"] = self.OnSubStart7506909,
        ["7506910"] = self.OnSubStart7506910
    }
end

function Quest75069:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7506901"] = self.OnSubFinish7506901,
        ["7506902"] = self.OnSubFinish7506902,
        ["7506903"] = self.OnSubFinish7506903,
        ["7506904"] = self.OnSubFinish7506904,
        ["7506906"] = self.OnSubFinish7506906,
        ["7506907"] = self.OnSubFinish7506907,
        ["7506908"] = self.OnSubFinish7506908,
        ["7506905"] = self.OnSubFinish7506905,
        ["7506909"] = self.OnSubFinish7506909,
        ["7506910"] = self.OnSubFinish7506910
    }
end

function Quest75069:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75069:Start()
    print("Start")
end

function Quest75069:OnDestroy()
    print("OnDestroy")
end

function Quest75069:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75069:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75069:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75069:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest75069:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75069:OnSubStart7506901(arg1)
    print("OnSubStart7506901")
    actorMgr:CreateActorWithPos("Q7506901Trigger", "Actor/Gadget/Q7506901Trigger", 70900002, 0, points.TPos_Q7506901Trigger.pos, points.TPos_Q7506901Trigger.rot, true, false, 3)
end

function Quest75069:OnSubFinish7506901(arg1)
    print("OnSubFinish7506901")
end

function Quest75069:OnSubStart7506902(arg1)
    print("OnSubStart7506902")
    this:CreateQuestNpc(arg1, npcs.Npc21610Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21610Data.alias):DoFreeStyle(1001, true, nil, true, true, false, false)
end

function Quest75069:OnSubFinish7506902(arg1)
    print("OnSubFinish7506902")
    this:SafeDestroyQuestNpc(npcs.Npc21610Data.alias, 3)
end

function Quest75069:OnSubStart7506903(arg1)
    print("OnSubStart7506903")
    this:CreateQuestNpc(arg1, npcs.Npc21650Data.id, 0, false, 0)
end

function Quest75069:OnSubFinish7506903(arg1)
    print("OnSubFinish7506903")
    this:SafeDestroyQuestNpc(npcs.Npc21650Data.alias, 3)
end

function Quest75069:OnSubStart7506904(arg1)
    print("OnSubStart7506904")
    actorMgr:CreateActorWithPos("Q7506904Trigger", "Actor/Gadget/Q7506904Trigger", 70900002, 0, points.TPos_Q7506904Trigger.pos, points.TPos_Q7506904Trigger.rot, true, false, 3)
end

function Quest75069:OnSubFinish7506904(arg1)
    print("OnSubFinish7506904")
end

function Quest75069:OnSubStart7506906(arg1)
    print("OnSubStart7506906")
end

function Quest75069:OnSubFinish7506906(arg1)
    print("OnSubFinish7506906")
end

function Quest75069:OnSubStart7506907(arg1)
    print("OnSubStart7506907")
end

function Quest75069:OnSubFinish7506907(arg1)
    print("OnSubFinish7506907")
end

function Quest75069:OnSubStart7506908(arg1)
    print("OnSubStart7506908")
    this:CreateQuestNpc(arg1, npcs.Npc21652Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21652Data.alias, "", true)
end

function Quest75069:OnSubFinish7506908(arg1)
    print("OnSubFinish7506908")
    this:SafeDestroyQuestNpc(npcs.Npc21652Data.alias, 3)
end

function Quest75069:OnSubStart7506905(arg1)
    print("OnSubStart7506905")
    actorMgr:CreateActorWithPos("Q7506905Trigger", "Actor/Gadget/Q7506905Trigger", 70900002, 0, points.TPos_Q7506905Trigger.pos, points.TPos_Q7506905Trigger.rot, true, false, 3)
end

function Quest75069:OnSubFinish7506905(arg1)
    print("OnSubFinish7506905")
end

function Quest75069:OnSubStart7506909(arg1)
    print("OnSubStart7506909")
end

function Quest75069:OnSubFinish7506909(arg1)
    print("OnSubFinish7506909")
end

function Quest75069:OnSubStart7506910(arg1)
    print("OnSubStart7506910")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.PaimonData.id, 7506910, 0, 20, 1)
end

function Quest75069:OnSubFinish7506910(arg1)
    print("OnSubFinish7506910")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:NpcDestroyWithBlackscreen(3, npcs.PaimonData.alias)
end

return Quest75069
