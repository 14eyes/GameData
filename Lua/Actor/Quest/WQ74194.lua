require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74194 = class("Quest74194", QuestActorProxy)
Quest74194.defaultAlias = "Quest74194"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74194:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74194:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7419401"] = self.OnSubStart7419401,
        ["7419402"] = self.OnSubStart7419402,
        ["7419403"] = self.OnSubStart7419403,
        ["7419404"] = self.OnSubStart7419404,
        ["7419412"] = self.OnSubStart7419412,
        ["7419405"] = self.OnSubStart7419405,
        ["7419406"] = self.OnSubStart7419406,
        ["7419421"] = self.OnSubStart7419421,
        ["7419407"] = self.OnSubStart7419407,
        ["7419422"] = self.OnSubStart7419422,
        ["7419413"] = self.OnSubStart7419413,
        ["7419408"] = self.OnSubStart7419408,
        ["7419409"] = self.OnSubStart7419409,
        ["7419418"] = self.OnSubStart7419418,
        ["7419419"] = self.OnSubStart7419419,
        ["7419414"] = self.OnSubStart7419414,
        ["7419415"] = self.OnSubStart7419415,
        ["7419416"] = self.OnSubStart7419416,
        ["7419417"] = self.OnSubStart7419417,
        ["7419410"] = self.OnSubStart7419410,
        ["7419411"] = self.OnSubStart7419411
    }
end

function Quest74194:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7419401"] = self.OnSubFinish7419401,
        ["7419402"] = self.OnSubFinish7419402,
        ["7419403"] = self.OnSubFinish7419403,
        ["7419404"] = self.OnSubFinish7419404,
        ["7419412"] = self.OnSubFinish7419412,
        ["7419405"] = self.OnSubFinish7419405,
        ["7419406"] = self.OnSubFinish7419406,
        ["7419421"] = self.OnSubFinish7419421,
        ["7419407"] = self.OnSubFinish7419407,
        ["7419422"] = self.OnSubFinish7419422,
        ["7419413"] = self.OnSubFinish7419413,
        ["7419408"] = self.OnSubFinish7419408,
        ["7419409"] = self.OnSubFinish7419409,
        ["7419418"] = self.OnSubFinish7419418,
        ["7419419"] = self.OnSubFinish7419419,
        ["7419414"] = self.OnSubFinish7419414,
        ["7419415"] = self.OnSubFinish7419415,
        ["7419416"] = self.OnSubFinish7419416,
        ["7419417"] = self.OnSubFinish7419417,
        ["7419410"] = self.OnSubFinish7419410,
        ["7419411"] = self.OnSubFinish7419411
    }
end

function Quest74194:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74194:Start()
    print("Start")
end

function Quest74194:OnDestroy()
    print("OnDestroy")
end

function Quest74194:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74194:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74194:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc21354Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21430Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1400Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21347Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21461Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21394Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21398Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21399Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21400Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21401Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21402Data.alias, 11)
    actorMgr:DestroyEntityActor("Q7419401Trigger", 11, false)
    actorMgr:DestroyEntityActor("Q7419403Trigger", 11, false)
    this:DestroyNpcTrigger("Q7419402N21354Trigger")
    this:DestroyNpcTrigger("Q7419405N21347Trigger")
    this:DestroyNpcTrigger("Q7419407N21461Trigger")
    this:DestroyNpcTrigger("Q7419408N21354Trigger")
    this:DestroyNpcTrigger("Q7419415N21354Trigger")
    this:DestroyNpcTrigger("Q7419417N21354Trigger")
    this:DestroyNpcTrigger("Q7419419N1400Trigger")
end

function Quest74194:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74194:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74194:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74194:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74194:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest74194:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74194:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:SetQuestVarByMainId(1, 2)
    elseif arg1 == 2 then
        this:SetQuestVarByMainId(2, 2)
    elseif arg1 == 3 then
        this:SetQuestVarByMainId(3, 2)
    elseif arg1 == 7419415 then
        actorUtils.FinishQuestID(false, 7419415)
    elseif arg1 == 7419419 then
        actorUtils.FinishQuestID(false, 7419419)
    elseif arg1 == 7419422 then
        actorUtils.FinishQuestID(false, 7419422)
    end
end

function Quest74194:OnSubStart7419401(arg1)
    print("OnSubStart7419401")
    actorMgr:CreateActorWithPos("Q7419401Trigger", "Actor/Gadget/Q7419401Trigger", 70900002, 0, points.TPos_Q7419401Trigger.pos, points.TPos_Q7419401Trigger.rot, true, false, 11)
end

function Quest74194:OnSubFinish7419401(arg1)
    print("OnSubFinish7419401")
end

function Quest74194:OnSubStart7419402(arg1)
    print("OnSubStart7419402")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21354Data.id, 7419402, 0, 55, 3)
end

function Quest74194:OnSubFinish7419402(arg1)
    print("OnSubFinish7419402")
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21354Data.alias)
end

function Quest74194:OnSubStart7419403(arg1)
    print("OnSubStart7419403")
    this:CreateQuestNpc(arg1, npcs.Npc21394Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21398Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21399Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21400Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21401Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21402Data.id, 0)
    actorMgr:CreateActorWithPos("Q7419403Trigger", "Actor/Gadget/Q7419403Trigger", 70900002, 0, points.TPos_Q7419403Trigger.pos, points.TPos_Q7419403Trigger.rot, true, false, 11)
    actorUtils.SetQuestPostEffect("PostEffect_Quest_Remus_FirstPerson_02", false, 20215, false)
    actorUtils.SimpleUIShowForLua(true, "General", "ART/Effect/UI/UI/Eff_UI_Remus_FirstPerson_02")
end

function Quest74194:OnSubFinish7419403(arg1)
    print("OnSubFinish7419403")
end

function Quest74194:OnSubStart7419404(arg1)
    print("OnSubStart7419404")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21347Data.id, 0, npcs.Npc21347Data.alias)
end

function Quest74194:OnSubFinish7419404(arg1)
    print("OnSubFinish7419404")
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21347Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21394Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21398Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21399Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21400Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21401Data.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc21402Data.alias, 11)
end

function Quest74194:OnSubStart7419412(arg1)
    print("OnSubStart7419412")
    this:ActionSafeCall(function(arg1)
        this:PlayerEnterDungeonWithData(20, 1201, 7419412, 1, datas.PlayerEnterDungeonData_12, nil, nil)
    end)
end

function Quest74194:OnSubFinish7419412(arg1)
    print("OnSubFinish7419412")
end

function Quest74194:OnSubStart7419405(arg1)
    print("OnSubStart7419405")
    this:NpcCreateWithNpcTrigger(npcs.Npc21347Data.id, 7419405, 0, 80)
    actorUtils.SetQuestPostEffect("PostEffect_Quest_Remus_FirstPerson_02", true, 20215, false)
    actorUtils.SimpleUIShowForLua(false, "General", "ART/Effect/UI/UI/Eff_UI_Remus_FirstPerson_02")
    this:ActorDestroy("Q7419407N21461Trigger")
end

function Quest74194:OnSubFinish7419405(arg1)
    print("OnSubFinish7419405")
    this:NpcDestroyWithBlackscreen(20215, npcs.Npc21347Data.alias)
end

function Quest74194:OnSubStart7419406(arg1)
    print("OnSubStart7419406")
    actorUtils.SetQuestPostEffect("PostEffect_Quest_Remus_FirstPerson_02", true, 20215, false)
    actorUtils.SimpleUIShowForLua(false, "General", "ART/Effect/UI/UI/Eff_UI_Remus_FirstPerson_02")
end

function Quest74194:OnSubFinish7419406(arg1)
    print("OnSubFinish7419406")
end

function Quest74194:OnSubStart7419421(arg1)
    print("OnSubStart7419421")
    actorUtils.SetQuestPostEffect("PostEffect_Quest_Remus_FirstPerson_02", true, 20215, false)
    actorUtils.SimpleUIShowForLua(false, "General", "ART/Effect/UI/UI/Eff_UI_Remus_FirstPerson_02")
end

function Quest74194:OnSubFinish7419421(arg1)
    print("OnSubFinish7419421")
end

function Quest74194:OnSubStart7419407(arg1)
    print("OnSubStart7419407")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc21461Data.id, 7419407, 0, 80, 2)
end

function Quest74194:OnSubFinish7419407(arg1)
    print("OnSubFinish7419407")
    this:NpcDestroyWithBlackscreen(20215, npcs.Npc21461Data.alias)
end

function Quest74194:OnSubStart7419422(arg1)
    print("OnSubStart7419422")
    this:CallDelayByQuest("delay22", 3, function(arg1)
        actorUtils.FinishQuestID(false, 7419422)
    end)
end

function Quest74194:OnSubFinish7419422(arg1)
    print("OnSubFinish7419422")
end

function Quest74194:OnSubStart7419413(arg1)
    print("OnSubStart7419413")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerWithTextById(arg1, 2, nil, 2)
    end)

    actorUtils.FinishQuestID(false, 7419413)
end

function Quest74194:OnSubFinish7419413(arg1)
    print("OnSubFinish7419413")
end

function Quest74194:OnSubStart7419408(arg1)
    print("OnSubStart7419408")
    this:NpcCreateWithNpcTrigger(npcs.Npc21354Data.id, 7419408, 0, 30)
end

function Quest74194:OnSubFinish7419408(arg1)
    print("OnSubFinish7419408")
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21354Data.alias)
end

function Quest74194:OnSubStart7419409(arg1)
    print("OnSubStart7419409")
end

function Quest74194:OnSubFinish7419409(arg1)
    print("OnSubFinish7419409")
end

function Quest74194:OnSubStart7419418(arg1)
    print("OnSubStart7419418")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerWithTextById(arg1, 5, datas.TextmapId_04, 2)
    end)

    actorUtils.FinishQuestID(false, 7419418)
end

function Quest74194:OnSubFinish7419418(arg1)
    print("OnSubFinish7419418")
end

function Quest74194:OnSubStart7419419(arg1)
    print("OnSubStart7419419")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1400Data.id, 7419419, 0, 20, 1)
end

function Quest74194:OnSubFinish7419419(arg1)
    print("OnSubFinish7419419")
end

function Quest74194:OnSubStart7419414(arg1)
    print("OnSubStart7419414")
    this:PlayerEnterDungeonWithData(22, 1202, 7419414, 3, datas.PlayerEnterDungeonData_14, nil, nil)
end

function Quest74194:OnSubFinish7419414(arg1)
    print("OnSubFinish7419414")
end

function Quest74194:OnSubStart7419415(arg1)
    print("OnSubStart7419415")
    actorMgr:CreateActorWithPos("Q7419415Trigger", "Actor/Gadget/Q7419415Trigger", 70900002, 0, {x = 1447.408, y = -404.542, z = 3566.497}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20216)
end

function Quest74194:OnSubFinish7419415(arg1)
    print("OnSubFinish7419415")
end

function Quest74194:OnSubStart7419416(arg1)
    print("OnSubStart7419416")
    this:TransmitPlayerByData(arg1, 4, datas.TransmitData_16)
end

function Quest74194:OnSubFinish7419416(arg1)
    print("OnSubFinish7419416")
end

function Quest74194:OnSubStart7419417(arg1)
    print("OnSubStart7419417")
    actorMgr:CreateActorWithPos("Q7419417Trigger", "Actor/Gadget/Q7419417Trigger", 70900002, 0, points.TPos_Q7419417Trigger.pos, points.TPos_Q7419417Trigger.rot, true, false, 11)
end

function Quest74194:OnSubFinish7419417(arg1)
    print("OnSubFinish7419417")
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21354Data.alias)
end

function Quest74194:OnSubStart7419410(arg1)
    print("OnSubStart7419410")
end

function Quest74194:OnSubFinish7419410(arg1)
    print("OnSubFinish7419410")
end

function Quest74194:OnSubStart7419411(arg1)
    print("OnSubStart7419411")
end

function Quest74194:OnSubFinish7419411(arg1)
    print("OnSubFinish7419411")
end

return Quest74194
