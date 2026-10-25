require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75240 = class("Quest75240", QuestActorProxy)
Quest75240.defaultAlias = "Quest75240"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75240:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75240:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7524008"] = self.OnSubStart7524008,
        ["7524010"] = self.OnSubStart7524010,
        ["7524012"] = self.OnSubStart7524012,
        ["7524013"] = self.OnSubStart7524013,
        ["7524014"] = self.OnSubStart7524014,
        ["7524001"] = self.OnSubStart7524001,
        ["7524002"] = self.OnSubStart7524002,
        ["7524003"] = self.OnSubStart7524003,
        ["7524004"] = self.OnSubStart7524004,
        ["7524005"] = self.OnSubStart7524005,
        ["7524006"] = self.OnSubStart7524006,
        ["7524007"] = self.OnSubStart7524007,
        ["7524015"] = self.OnSubStart7524015,
        ["7524009"] = self.OnSubStart7524009,
        ["7524011"] = self.OnSubStart7524011
    }
end

function Quest75240:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7524008"] = self.OnSubFinish7524008,
        ["7524010"] = self.OnSubFinish7524010,
        ["7524012"] = self.OnSubFinish7524012,
        ["7524013"] = self.OnSubFinish7524013,
        ["7524014"] = self.OnSubFinish7524014,
        ["7524001"] = self.OnSubFinish7524001,
        ["7524002"] = self.OnSubFinish7524002,
        ["7524003"] = self.OnSubFinish7524003,
        ["7524004"] = self.OnSubFinish7524004,
        ["7524005"] = self.OnSubFinish7524005,
        ["7524006"] = self.OnSubFinish7524006,
        ["7524007"] = self.OnSubFinish7524007,
        ["7524015"] = self.OnSubFinish7524015,
        ["7524009"] = self.OnSubFinish7524009,
        ["7524011"] = self.OnSubFinish7524011
    }
end

function Quest75240:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75240:Start()
    print("Start")
end

function Quest75240:OnDestroy()
    print("OnDestroy")
end

function Quest75240:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75240:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75240:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75240:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7524010Trigger")
    this:ActorDestroy("Q7524012Trigger")
    this:ActorDestroy("Q7524010Trigger_1")
end

function Quest75240:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75240:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75240:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest75240:OnSubStart7524008(arg1)
    print("OnSubStart7524008")
    this:NpcCreateWithNpcTrigger(npcs.Npc21961.id, 0, 0, 7524008)
    this:CreateQuestNpc(arg1, npcs.Npc21962.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7524010Trigger", "Actor/Gadget/Q7524010Trigger", 70900002, 0, points._Q7524010TriggerPoint_.pos, points._Q7524010TriggerPoint_.rot, true, false, 3)
end

function Quest75240:OnSubFinish7524008(arg1)
    print("OnSubFinish7524008")
    this:ActorDestroy("Q7524010Trigger")
end

function Quest75240:OnSubStart7524010(arg1)
    print("OnSubStart7524010")
    actorMgr:CreateActorWithPos("Q7524010Trigger", "Actor/Gadget/Q7524010Trigger", 70900002, 0, points._Q7524010TriggerPoint_.pos, points._Q7524010TriggerPoint_.rot, true, false, 3)
end

function Quest75240:OnSubFinish7524010(arg1)
    print("OnSubFinish7524010")
    this:ActorDestroy("Q7524010Trigger")
end

function Quest75240:OnSubStart7524012(arg1)
    print("OnSubStart7524012")
    actorMgr:CreateActorWithPos("Q7524012Trigger", "Actor/Gadget/Q7524012Trigger", 70900002, 0, points.Q7524012Trigger.pos, points.Q7524012Trigger.rot, true, false, 3)
end

function Quest75240:OnSubFinish7524012(arg1)
    print("OnSubFinish7524012")
    this:ActorDestroy("Q7524012Trigger")
end

function Quest75240:OnSubStart7524013(arg1)
    print("OnSubStart7524013")
    this:NpcCreateWithNpcTrigger(npcs.Npc21961.id, 0, 15, 7524013)
end

function Quest75240:OnSubFinish7524013(arg1)
    print("OnSubFinish7524013")
    this:NpcDestroyWithDither(3, npcs.Npc21961.alias)
    this:ClearNpcTriggerByQuestId(7524013)
    this:ClearNpcTriggerByQuestId(7524014)
end

function Quest75240:OnSubStart7524014(arg1)
    print("OnSubStart7524014")
    this:NpcCreateWithNpcTrigger(npcs.Npc21962.id, 0, 15, 7524014)
end

function Quest75240:OnSubFinish7524014(arg1)
    print("OnSubFinish7524014")
    this:NpcDestroyWithDither(3, npcs.Npc21962.alias)
    this:ClearNpcTriggerByQuestId(7524013)
    this:ClearNpcTriggerByQuestId(7524014)
end

function Quest75240:OnSubStart7524001(arg1)
    print("OnSubStart7524001")
    this:CreateQuestNpc(arg1, npcs.Npc6514.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6515.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6516.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6518.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6517.id, 0, false, 0)
    this:CreateSpeechBubbleTask(npcs.Npc6515.id, 752400103, 10, true, 10, 20, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc6516.id, 752400104, 10, true, 10, 20, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc6517.id, 752400105, 10, true, 10, 20, true, false)
    this:CreateSpeechBubbleTask(npcs.Npc6518.id, 752400106, 10, true, 10, 20, true, false)
end

function Quest75240:OnSubFinish7524001(arg1)
    print("OnSubFinish7524001")
end

function Quest75240:OnSubStart7524002(arg1)
    print("OnSubStart7524002")
    this:CreateQuestNpc(arg1, npcs.Npc6515.id, 0, false, 0)
end

function Quest75240:OnSubFinish7524002(arg1)
    print("OnSubFinish7524002")
    this:SafeDestroyQuestNpc(npcs.Npc6515.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6514.alias, 3)
end

function Quest75240:OnSubStart7524003(arg1)
    print("OnSubStart7524003")
    this:TransmitPlayerWithQuestIdByData(7524003, 3, datas.TransmitData_2, nil, nil, nil)
end

function Quest75240:OnSubFinish7524003(arg1)
    print("OnSubFinish7524003")
    this:SafeDestroyQuestNpc(npcs.Npc6515.alias, 3)
end

function Quest75240:OnSubStart7524004(arg1)
    print("OnSubStart7524004")
    this:CreateQuestNpc(arg1, npcs.Npc6516.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6517.id, 0, false, 0)
end

function Quest75240:OnSubFinish7524004(arg1)
    print("OnSubFinish7524004")
    this:SafeDestroyQuestNpc(npcs.Npc6516.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6517.alias, 3)
end

function Quest75240:OnSubStart7524005(arg1)
    print("OnSubStart7524005")
    this:TransmitPlayerWithQuestIdByData(7524005, 3, datas.TransmitData_2, nil, nil, nil)
end

function Quest75240:OnSubFinish7524005(arg1)
    print("OnSubFinish7524005")
    this:SafeDestroyQuestNpc(npcs.Npc6516.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6517.alias, 3)
end

function Quest75240:OnSubStart7524006(arg1)
    print("OnSubStart7524006")
    this:CreateQuestNpc(arg1, npcs.Npc6518.id, 0, false, 0)
end

function Quest75240:OnSubFinish7524006(arg1)
    print("OnSubFinish7524006")
    this:SafeDestroyQuestNpc(npcs.Npc6518.alias, 3)
end

function Quest75240:OnSubStart7524007(arg1)
    print("OnSubStart7524007")
    this:TransmitPlayerWithQuestIdByData(7524007, 3, datas.TransmitData_2, nil, nil, nil)
end

function Quest75240:OnSubFinish7524007(arg1)
    print("OnSubFinish7524007")
    this:SafeDestroyQuestNpc(npcs.Npc6518.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21961.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21962.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6517.alias, 3)
end

function Quest75240:OnSubStart7524015(arg1)
    print("OnSubStart7524015")
    actorUtils.FinishQuestID(false, 7524015)
end

function Quest75240:OnSubFinish7524015(arg1)
    print("OnSubFinish7524015")
end

function Quest75240:OnSubStart7524009(arg1)
    print("OnSubStart7524009")
end

function Quest75240:OnSubFinish7524009(arg1)
    print("OnSubFinish7524009")
end

function Quest75240:OnSubStart7524011(arg1)
    print("OnSubStart7524011")
end

function Quest75240:OnSubFinish7524011(arg1)
    print("OnSubFinish7524011")
end

return Quest75240
