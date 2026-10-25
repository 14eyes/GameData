require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71110 = class("Quest71110", QuestActorProxy)
Quest71110.defaultAlias = "Quest71110"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71110:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71110:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7111001"] = self.OnSubStart7111001,
        ["7111003"] = self.OnSubStart7111003,
        ["7111013"] = self.OnSubStart7111013,
        ["7111004"] = self.OnSubStart7111004,
        ["7111005"] = self.OnSubStart7111005,
        ["7111011"] = self.OnSubStart7111011,
        ["7111012"] = self.OnSubStart7111012,
        ["7111006"] = self.OnSubStart7111006,
        ["7111002"] = self.OnSubStart7111002,
        ["7111014"] = self.OnSubStart7111014,
        ["7111007"] = self.OnSubStart7111007,
        ["7111008"] = self.OnSubStart7111008,
        ["7111009"] = self.OnSubStart7111009,
        ["7111010"] = self.OnSubStart7111010
    }
end

function Quest71110:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7111001"] = self.OnSubFinish7111001,
        ["7111003"] = self.OnSubFinish7111003,
        ["7111013"] = self.OnSubFinish7111013,
        ["7111004"] = self.OnSubFinish7111004,
        ["7111005"] = self.OnSubFinish7111005,
        ["7111011"] = self.OnSubFinish7111011,
        ["7111012"] = self.OnSubFinish7111012,
        ["7111006"] = self.OnSubFinish7111006,
        ["7111002"] = self.OnSubFinish7111002,
        ["7111014"] = self.OnSubFinish7111014,
        ["7111007"] = self.OnSubFinish7111007,
        ["7111008"] = self.OnSubFinish7111008,
        ["7111009"] = self.OnSubFinish7111009,
        ["7111010"] = self.OnSubFinish7111010
    }
end

function Quest71110:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7111010"] = self.OnSubFailed7111010}
end

function Quest71110:Start()
    print("Start")
end

function Quest71110:OnDestroy()
    print("OnDestroy")
end

function Quest71110:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71110:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71110:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71110:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71110:CheckSubQuestState(arg1, arg2, arg3)
    local subQuestState = self:GetSubQuestState(arg1)
    local v
    if arg3 then
        v = subQuestState ~= arg2
    else
        v = subQuestState == arg2
    end

    return v
end

function Quest71110:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest71110:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest71110:OnSubStart7111001(arg1)
    print("OnSubStart7111001")
    this:CreateQuestNpc(arg1, npcs.Npc2472Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21223Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21224Data.id, 0)
end

function Quest71110:OnSubFinish7111001(arg1)
    print("OnSubFinish7111001")
end

function Quest71110:OnSubStart7111003(arg1)
    print("OnSubStart7111003")
end

function Quest71110:OnSubFinish7111003(arg1)
    print("OnSubFinish7111003")
end

function Quest71110:OnSubStart7111013(arg1)
    print("OnSubStart7111013")
end

function Quest71110:OnSubFinish7111013(arg1)
    print("OnSubFinish7111013")
    this:NpcDestroyWithDither(npcs.Npc21406Data.alias, 3)
    this:NpcDestroyWithDither(npcs.Npc21407Data.alias, 3)
end

function Quest71110:OnSubStart7111004(arg1)
    print("OnSubStart7111004")
end

function Quest71110:OnSubFinish7111004(arg1)
    print("OnSubFinish7111004")
end

function Quest71110:OnSubStart7111005(arg1)
    print("OnSubStart7111005")
end

function Quest71110:OnSubFinish7111005(arg1)
    print("OnSubFinish7111005")
end

function Quest71110:OnSubStart7111011(arg1)
    print("OnSubStart7111011")
    actorMgr:CreateActorWithPos("Q7111006Trigger", "Actor/Gadget/Q7111006Trigger", 70900002, 0, points.TPos_Q7111006Trigger.pos, points.TPos_Q7111006Trigger.rot, true, false, 3)
end

function Quest71110:OnSubFinish7111011(arg1)
    print("OnSubFinish7111011")
end

function Quest71110:OnSubStart7111012(arg1)
    print("OnSubStart7111012")
    actorMgr:CreateActorWithPos("Q71110Trigger", "Actor/Gadget/Q71110Trigger", 70900002, 0, points.TPos_Q7111006Trigger.pos, points.TPos_Q7111006Trigger.rot, true, false, 3)
end

function Quest71110:OnSubFinish7111012(arg1)
    print("OnSubFinish7111012")
    this:NpcDestroyWithDither(npcs.Npc21222Data.alias, 3)
end

function Quest71110:OnSubStart7111006(arg1)
    print("OnSubStart7111006")
end

function Quest71110:OnSubFinish7111006(arg1)
    print("OnSubFinish7111006")
    if actorMgr:GetActor("Q7111006Trigger") ~= nil then
        this:ActorDestroy("Q7111006Trigger")
    end

    this:NpcDestroyWithDither(npcs.Npc21222Data.alias, 3)
end

function Quest71110:OnSubStart7111002(arg1)
    print("OnSubStart7111002")
end

function Quest71110:OnSubFinish7111002(arg1)
    print("OnSubFinish7111002")
    this:QuestNarratorTask(datas.Narrator_7111001)
end

function Quest71110:OnSubStart7111014(arg1)
    print("OnSubStart7111014")
    if this:GetSubQuestState(7111012) ~= 3 then
        this:CreateQuestNpc(arg1, npcs.Npc21222Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc21222Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
    end

    if this:CheckSubQuestState(7111013, 2, false) then
        this:CreateQuestNpcWithTrigger("q7111013N21406Trigger", 7111013, 21406, 0, 20, 2)
        this:CreateQuestNpc(arg1, npcs.Npc21407Data.id, 0)
    end

    if this:CheckSubQuestState(7111005, 2, false) then
        actorMgr:CreateActorWithPos("Q7111005Trigger", "Actor/Gadget/Q7111005Trigger", 70900002, 0, points.TPos_Q7111005Trigger.pos, points.TPos_Q7111005Trigger.rot, true, false, 3)
    end
end

function Quest71110:OnSubFinish7111014(arg1)
    print("OnSubFinish7111014")
    if actorMgr:GetActor("Q7111005Trigger") ~= nil then
        this:ActorDestroy("Q7111005Trigger")
        if actorMgr:GetActor("Q7111006Trigger") ~= nil then
            this:ActorDestroy("Q7111006Trigger")
        end
    end
end

function Quest71110:OnSubStart7111007(arg1)
    print("OnSubStart7111007")
end

function Quest71110:OnSubFinish7111007(arg1)
    print("OnSubFinish7111007")
end

function Quest71110:OnSubStart7111008(arg1)
    print("OnSubStart7111008")
    actorMgr:CreateActorWithPos("Q7111008Trigger", "Actor/Gadget/Q7111008Trigger", 70900002, 0, points.TPos_Q7111008Trigger.pos, points.TPos_Q7111008Trigger.rot, true, false, 3)
end

function Quest71110:OnSubFinish7111008(arg1)
    print("OnSubFinish7111008")
    this:NpcDestroyWithDither(npcs.Npc21223Data.alias, 3)
    this:NpcDestroyWithDither(npcs.Npc21224Data.alias, 3)
end

function Quest71110:OnSubStart7111009(arg1)
    print("OnSubStart7111009")
end

function Quest71110:OnSubFinish7111009(arg1)
    print("OnSubFinish7111009")
end

function Quest71110:OnSubStart7111010(arg1)
    print("OnSubStart7111010")
    this:NpcCreateWithNpcTrigger(npcs.Npc2472Data.id, 7111010, 0, 20)
    this:CreateQuestNpc(arg1, npcs.Npc21222Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21223Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21224Data.id, 0)
end

function Quest71110:OnSubFinish7111010(arg1)
    print("OnSubFinish7111010")
    this:NpcDestroyWithDither(npcs.Npc2472Data.alias, 3)
end

function Quest71110:OnSubFailed7111010(arg1)
    print("OnSubFailed7111010")
    this:DestroyNpcTrigger("Q7111010N2472Trigger")
    this:NpcDestroyWithDither(npcs.Npc21222Data.alias, 3)
    this:NpcDestroyWithDither(npcs.Npc21223Data.alias, 3)
    this:NpcDestroyWithDither(npcs.Npc21224Data.alias, 3)
    this:ActorDestroy("Q7111008Trigger")
end

return Quest71110
