require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75179 = class("Quest75179", QuestActorProxy)
Quest75179.defaultAlias = "Quest75179"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75179:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75179:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7517915"] = self.OnSubStart7517915,
        ["7517916"] = self.OnSubStart7517916,
        ["7517903"] = self.OnSubStart7517903,
        ["7517901"] = self.OnSubStart7517901,
        ["7517902"] = self.OnSubStart7517902,
        ["7517912"] = self.OnSubStart7517912,
        ["7517914"] = self.OnSubStart7517914,
        ["7517908"] = self.OnSubStart7517908,
        ["7517909"] = self.OnSubStart7517909,
        ["7517911"] = self.OnSubStart7517911,
        ["7517904"] = self.OnSubStart7517904,
        ["7517905"] = self.OnSubStart7517905,
        ["7517906"] = self.OnSubStart7517906,
        ["7517907"] = self.OnSubStart7517907,
        ["7517913"] = self.OnSubStart7517913,
        ["7517910"] = self.OnSubStart7517910
    }
end

function Quest75179:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7517915"] = self.OnSubFinish7517915,
        ["7517916"] = self.OnSubFinish7517916,
        ["7517903"] = self.OnSubFinish7517903,
        ["7517901"] = self.OnSubFinish7517901,
        ["7517902"] = self.OnSubFinish7517902,
        ["7517912"] = self.OnSubFinish7517912,
        ["7517914"] = self.OnSubFinish7517914,
        ["7517908"] = self.OnSubFinish7517908,
        ["7517909"] = self.OnSubFinish7517909,
        ["7517911"] = self.OnSubFinish7517911,
        ["7517904"] = self.OnSubFinish7517904,
        ["7517905"] = self.OnSubFinish7517905,
        ["7517906"] = self.OnSubFinish7517906,
        ["7517907"] = self.OnSubFinish7517907,
        ["7517913"] = self.OnSubFinish7517913,
        ["7517910"] = self.OnSubFinish7517910
    }
end

function Quest75179:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7517908"] = self.OnSubFailed7517908, ["7517909"] = self.OnSubFailed7517909}
end

function Quest75179:Start()
    print("Start")
end

function Quest75179:OnDestroy()
    print("OnDestroy")
end

function Quest75179:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75179:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75179:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75179:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7517901Trigger")
    this:ActorDestroy("Q7517908Trigger")
end

function Quest75179:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75179:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75179:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest75179:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest75179:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75179:OnSubStart7517915(arg1)
    print("OnSubStart7517915")
    this:CreateQuestNpc(arg1, npcs.Npc6438.id, 0, false, 0)
end

function Quest75179:OnSubFinish7517915(arg1)
    print("OnSubFinish7517915")
end

function Quest75179:OnSubStart7517916(arg1)
    print("OnSubStart7517916")
    this:CreateQuestNpc(arg1, npcs.Npc6466.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6466.alias, 75179):DoFreeStyle(8, true, nil, true, true, false, false)
end

function Quest75179:OnSubFinish7517916(arg1)
    print("OnSubFinish7517916")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6466.alias)
end

function Quest75179:OnSubStart7517903(arg1)
    print("OnSubStart7517903")
    this:CreateQuestNpc(arg1, npcs.Npc6437.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6437.alias, 75179):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75179:OnSubFinish7517903(arg1)
    print("OnSubFinish7517903")
end

function Quest75179:OnSubStart7517901(arg1)
    print("OnSubStart7517901")
    this:CreateQuestNpc(arg1, npcs.Npc6343.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6333.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6336.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6336.alias, 75179):DoFreeStyle(4190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7517901Trigger", "Actor/Gadget/Q7517901Trigger", 70900002, 0, points._Q7517901TriggerPoint_.pos, points._Q7517901TriggerPoint_.rot, true, false, 3)
    this:CreateSpeechBubbleTask(npcs.Npc6336.id, 1016633600, 10, true, 3, 5, true, false)
end

function Quest75179:OnSubFinish7517901(arg1)
    print("OnSubFinish7517901")
end

function Quest75179:OnSubStart7517902(arg1)
    print("OnSubStart7517902")
    this:CreateQuestNpc(arg1, npcs.Npc6336.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6336.alias, 75179):DoFreeStyle(4190, false, nil, true, true, false, false)
end

function Quest75179:OnSubFinish7517902(arg1)
    print("OnSubFinish7517902")
    this:RequestInteraction(npcs.Npc6343.alias, "", true)
    this:ActorDestroy("Q7517908Trigger")
end

function Quest75179:OnSubStart7517912(arg1)
    print("OnSubStart7517912")
    this:CreateQuestNpc(arg1, npcs.Npc6336.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6336.alias, 75179):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest75179:OnSubFinish7517912(arg1)
    print("OnSubFinish7517912")
end

function Quest75179:OnSubStart7517914(arg1)
    print("OnSubStart7517914")
    this:CreateQuestNpc(arg1, npcs.Npc6336.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6336.alias, 75179):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest75179:OnSubFinish7517914(arg1)
    print("OnSubFinish7517914")
end

function Quest75179:OnSubStart7517908(arg1)
    print("OnSubStart7517908")
    this:CreateQuestNpc(arg1, npcs.Npc6348.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6348.alias, 75179):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6336.alias, 75179):DoFreeStyle(4190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7517908Trigger", "Actor/Gadget/Q7517908Trigger", 70900002, 0, points.Q7517908Trigger.pos, points.Q7517908Trigger.rot, true, false, 3)
end

function Quest75179:OnSubFinish7517908(arg1)
    print("OnSubFinish7517908")
end

function Quest75179:OnSubFailed7517908(arg1)
    print("OnSubFailed7517908")
    this:GetQuestNpcActor(npcs.Npc6348.alias, 75179):DestroyWithDitherEx(0)
end

function Quest75179:OnSubStart7517909(arg1)
    print("OnSubStart7517909")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6348.id, arg1)
    this:GetQuestNpcActor(npcs.Npc6348.alias, 75179):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6336.alias, 75179):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest75179:OnSubFinish7517909(arg1)
    print("OnSubFinish7517909")
    this:NpcDestroyWithDither(3, npcs.Npc6348.alias)
end

function Quest75179:OnSubFailed7517909(arg1)
    print("OnSubFailed7517909")
    this:GetQuestNpcActor(npcs.Npc6348.alias, 75179):DestroyWithDitherEx(0)
end

function Quest75179:OnSubStart7517911(arg1)
    print("OnSubStart7517911")
    this:CreateQuestNpc(arg1, npcs.Npc6336.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6336.alias, 75179):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6346.id, 0, false, 0)
end

function Quest75179:OnSubFinish7517911(arg1)
    print("OnSubFinish7517911")
end

function Quest75179:OnSubStart7517904(arg1)
    print("OnSubStart7517904")
end

function Quest75179:OnSubFinish7517904(arg1)
    print("OnSubFinish7517904")
    this:ActorDestroy("Q7517908Trigger")
end

function Quest75179:OnSubStart7517905(arg1)
    print("OnSubStart7517905")
    this:CreateQuestNpc(arg1, npcs.Npc6346.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6336.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6346.alias, 75179):DoFreeStyle(4440, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6336.alias, 75179):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest75179:OnSubFinish7517905(arg1)
    print("OnSubFinish7517905")
    this:RequestInteractionForceAlias(npcs.Npc6346.alias, "", true)
end

function Quest75179:OnSubStart7517906(arg1)
    print("OnSubStart7517906")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc6346.id, 0, 7517906, 50, true)
    this:GetQuestNpcActor(npcs.Npc6346.alias, 75179):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6336.alias, 75179):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest75179:OnSubFinish7517906(arg1)
    print("OnSubFinish7517906")
end

function Quest75179:OnSubStart7517907(arg1)
    print("OnSubStart7517907")
    this:GetQuestNpcActor(npcs.Npc6336.alias, 75179):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6438.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc6438.alias, "", true)
end

function Quest75179:OnSubFinish7517907(arg1)
    print("OnSubFinish7517907")
end

function Quest75179:OnSubStart7517913(arg1)
    print("OnSubStart7517913")
    this:CreateQuestNpc(arg1, npcs.Npc6348.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6336.alias, 75179):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc6348.alias, "", true)
end

function Quest75179:OnSubFinish7517913(arg1)
    print("OnSubFinish7517913")
    this:RequestInteraction(npcs.Npc6346.alias, "", true)
end

function Quest75179:OnSubStart7517910(arg1)
    print("OnSubStart7517910")
    this:GetQuestNpcActor(npcs.Npc6336.alias, 75179):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc6346.alias, "", true)
end

function Quest75179:OnSubFinish7517910(arg1)
    print("OnSubFinish7517910")
    this:NpcDestroyWithDither(3, npcs.Npc6333.alias)
    this:SafeDestroyQuestNpc(npcs.Npc6336.alias, 3)
    this:NpcDestroyWithDither(3, npcs.Npc6343.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6346.alias)
    this:SafeDestroyQuestNpc(npcs.Npc6348.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6438.alias, 3)
end

return Quest75179
