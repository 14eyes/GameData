require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73219 = class("Quest73219", QuestActorProxy)
Quest73219.defaultAlias = "Quest73219"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73219:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73219:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7321901"] = self.OnSubStart7321901,
        ["7321902"] = self.OnSubStart7321902,
        ["7321903"] = self.OnSubStart7321903,
        ["7321904"] = self.OnSubStart7321904,
        ["7321905"] = self.OnSubStart7321905,
        ["7321948"] = self.OnSubStart7321948,
        ["7321906"] = self.OnSubStart7321906,
        ["7321907"] = self.OnSubStart7321907,
        ["7321908"] = self.OnSubStart7321908,
        ["7321966"] = self.OnSubStart7321966,
        ["7321941"] = self.OnSubStart7321941,
        ["7321909"] = self.OnSubStart7321909,
        ["7321910"] = self.OnSubStart7321910,
        ["7321962"] = self.OnSubStart7321962,
        ["7321911"] = self.OnSubStart7321911,
        ["7321963"] = self.OnSubStart7321963,
        ["7321912"] = self.OnSubStart7321912,
        ["7321961"] = self.OnSubStart7321961,
        ["7321913"] = self.OnSubStart7321913,
        ["7321914"] = self.OnSubStart7321914,
        ["7321915"] = self.OnSubStart7321915,
        ["7321967"] = self.OnSubStart7321967,
        ["7321916"] = self.OnSubStart7321916,
        ["7321917"] = self.OnSubStart7321917,
        ["7321918"] = self.OnSubStart7321918,
        ["7321919"] = self.OnSubStart7321919,
        ["7321949"] = self.OnSubStart7321949,
        ["7321947"] = self.OnSubStart7321947,
        ["7321920"] = self.OnSubStart7321920,
        ["7321921"] = self.OnSubStart7321921,
        ["7321922"] = self.OnSubStart7321922,
        ["7321968"] = self.OnSubStart7321968,
        ["7321923"] = self.OnSubStart7321923,
        ["7321924"] = self.OnSubStart7321924,
        ["7321925"] = self.OnSubStart7321925,
        ["7321926"] = self.OnSubStart7321926,
        ["7321927"] = self.OnSubStart7321927,
        ["7321928"] = self.OnSubStart7321928,
        ["7321929"] = self.OnSubStart7321929,
        ["7321930"] = self.OnSubStart7321930,
        ["7321950"] = self.OnSubStart7321950,
        ["7321931"] = self.OnSubStart7321931,
        ["7321932"] = self.OnSubStart7321932,
        ["7321933"] = self.OnSubStart7321933,
        ["7321934"] = self.OnSubStart7321934,
        ["7321964"] = self.OnSubStart7321964,
        ["7321935"] = self.OnSubStart7321935,
        ["7321942"] = self.OnSubStart7321942,
        ["7321943"] = self.OnSubStart7321943,
        ["7321936"] = self.OnSubStart7321936,
        ["7321937"] = self.OnSubStart7321937,
        ["7321938"] = self.OnSubStart7321938,
        ["7321939"] = self.OnSubStart7321939,
        ["7321965"] = self.OnSubStart7321965,
        ["7321944"] = self.OnSubStart7321944,
        ["7321945"] = self.OnSubStart7321945,
        ["7321951"] = self.OnSubStart7321951,
        ["7321952"] = self.OnSubStart7321952,
        ["7321953"] = self.OnSubStart7321953,
        ["7321954"] = self.OnSubStart7321954,
        ["7321955"] = self.OnSubStart7321955,
        ["7321956"] = self.OnSubStart7321956,
        ["7321957"] = self.OnSubStart7321957,
        ["7321958"] = self.OnSubStart7321958,
        ["7321959"] = self.OnSubStart7321959,
        ["7321960"] = self.OnSubStart7321960,
        ["7321940"] = self.OnSubStart7321940,
        ["7321969"] = self.OnSubStart7321969,
        ["7321946"] = self.OnSubStart7321946
    }
end

function Quest73219:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7321901"] = self.OnSubFinish7321901,
        ["7321902"] = self.OnSubFinish7321902,
        ["7321903"] = self.OnSubFinish7321903,
        ["7321904"] = self.OnSubFinish7321904,
        ["7321905"] = self.OnSubFinish7321905,
        ["7321948"] = self.OnSubFinish7321948,
        ["7321906"] = self.OnSubFinish7321906,
        ["7321907"] = self.OnSubFinish7321907,
        ["7321908"] = self.OnSubFinish7321908,
        ["7321966"] = self.OnSubFinish7321966,
        ["7321941"] = self.OnSubFinish7321941,
        ["7321909"] = self.OnSubFinish7321909,
        ["7321910"] = self.OnSubFinish7321910,
        ["7321962"] = self.OnSubFinish7321962,
        ["7321911"] = self.OnSubFinish7321911,
        ["7321963"] = self.OnSubFinish7321963,
        ["7321912"] = self.OnSubFinish7321912,
        ["7321961"] = self.OnSubFinish7321961,
        ["7321913"] = self.OnSubFinish7321913,
        ["7321914"] = self.OnSubFinish7321914,
        ["7321915"] = self.OnSubFinish7321915,
        ["7321967"] = self.OnSubFinish7321967,
        ["7321916"] = self.OnSubFinish7321916,
        ["7321917"] = self.OnSubFinish7321917,
        ["7321918"] = self.OnSubFinish7321918,
        ["7321919"] = self.OnSubFinish7321919,
        ["7321949"] = self.OnSubFinish7321949,
        ["7321947"] = self.OnSubFinish7321947,
        ["7321920"] = self.OnSubFinish7321920,
        ["7321921"] = self.OnSubFinish7321921,
        ["7321922"] = self.OnSubFinish7321922,
        ["7321968"] = self.OnSubFinish7321968,
        ["7321923"] = self.OnSubFinish7321923,
        ["7321924"] = self.OnSubFinish7321924,
        ["7321925"] = self.OnSubFinish7321925,
        ["7321926"] = self.OnSubFinish7321926,
        ["7321927"] = self.OnSubFinish7321927,
        ["7321928"] = self.OnSubFinish7321928,
        ["7321929"] = self.OnSubFinish7321929,
        ["7321930"] = self.OnSubFinish7321930,
        ["7321950"] = self.OnSubFinish7321950,
        ["7321931"] = self.OnSubFinish7321931,
        ["7321932"] = self.OnSubFinish7321932,
        ["7321933"] = self.OnSubFinish7321933,
        ["7321934"] = self.OnSubFinish7321934,
        ["7321964"] = self.OnSubFinish7321964,
        ["7321935"] = self.OnSubFinish7321935,
        ["7321942"] = self.OnSubFinish7321942,
        ["7321943"] = self.OnSubFinish7321943,
        ["7321936"] = self.OnSubFinish7321936,
        ["7321937"] = self.OnSubFinish7321937,
        ["7321938"] = self.OnSubFinish7321938,
        ["7321939"] = self.OnSubFinish7321939,
        ["7321965"] = self.OnSubFinish7321965,
        ["7321944"] = self.OnSubFinish7321944,
        ["7321945"] = self.OnSubFinish7321945,
        ["7321951"] = self.OnSubFinish7321951,
        ["7321952"] = self.OnSubFinish7321952,
        ["7321953"] = self.OnSubFinish7321953,
        ["7321954"] = self.OnSubFinish7321954,
        ["7321955"] = self.OnSubFinish7321955,
        ["7321956"] = self.OnSubFinish7321956,
        ["7321957"] = self.OnSubFinish7321957,
        ["7321958"] = self.OnSubFinish7321958,
        ["7321959"] = self.OnSubFinish7321959,
        ["7321960"] = self.OnSubFinish7321960,
        ["7321940"] = self.OnSubFinish7321940,
        ["7321969"] = self.OnSubFinish7321969,
        ["7321946"] = self.OnSubFinish7321946
    }
end

function Quest73219:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73219:Start()
    print("Start")
end

function Quest73219:OnDestroy()
    print("OnDestroy")
end

function Quest73219:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73219:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73219:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73219:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73219:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest73219:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73219:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73219:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:SetQuestVarByMainId(1, 1)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7321946)
    elseif arg1 == 3 then
        this:GetQuestNpcActor(npcs.Npc20845Data.alias):DoFreeStyle(4100, true, nil, true, true, false, true)
    end
end

function Quest73219:OnSubStart7321901(arg1)
    print("OnSubStart7321901")
end

function Quest73219:OnSubFinish7321901(arg1)
    print("OnSubFinish7321901")
end

function Quest73219:OnSubStart7321902(arg1)
    print("OnSubStart7321902")
end

function Quest73219:OnSubFinish7321902(arg1)
    print("OnSubFinish7321902")
end

function Quest73219:OnSubStart7321903(arg1)
    print("OnSubStart7321903")
end

function Quest73219:OnSubFinish7321903(arg1)
    print("OnSubFinish7321903")
end

function Quest73219:OnSubStart7321904(arg1)
    print("OnSubStart7321904")
    this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 1)
end

function Quest73219:OnSubFinish7321904(arg1)
    print("OnSubFinish7321904")
    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
end

function Quest73219:OnSubStart7321905(arg1)
    print("OnSubStart7321905")
    actorMgr:CreateActorWithPos("Q7321905Trigger", "Actor/Gadget/Q7321905Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321905_guide").pos, sceneData:GetDummyPoint(3, "Q7321905_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321905(arg1)
    print("OnSubFinish7321905")
end

function Quest73219:OnSubStart7321948(arg1)
    print("OnSubStart7321948")
    this:PlayCutsceneIndex(7321948, function(arg1)
        actorUtils.FinishQuestID(false, 7321948)
    end, nil, nil, false)
end

function Quest73219:OnSubFinish7321948(arg1)
    print("OnSubFinish7321948")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7321936)
    end)
end

function Quest73219:OnSubStart7321906(arg1)
    print("OnSubStart7321906")
    this:CreateQuestNpc(arg1, npcs.Npc20845Data.id, 1)
    actorMgr:CreateActorWithPos("Q7321906Trigger", "Actor/Gadget/Q7321906Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321906_guide").pos, sceneData:GetDummyPoint(3, "Q7321906_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321906(arg1)
    print("OnSubFinish7321906")
    this:NarratorOnlyTaskByData(datas.Narrator_7321902)
end

function Quest73219:OnSubStart7321907(arg1)
    print("OnSubStart7321907")
end

function Quest73219:OnSubFinish7321907(arg1)
    print("OnSubFinish7321907")
end

function Quest73219:OnSubStart7321908(arg1)
    print("OnSubStart7321908")
end

function Quest73219:OnSubFinish7321908(arg1)
    print("OnSubFinish7321908")
end

function Quest73219:OnSubStart7321966(arg1)
    print("OnSubStart7321966")
end

function Quest73219:OnSubFinish7321966(arg1)
    print("OnSubFinish7321966")
    this:NpcDestroyWithDither(npcs.Npc20845Data.alias, 3)
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7321903)
    end)
end

function Quest73219:OnSubStart7321941(arg1)
    print("OnSubStart7321941")
    actorMgr:CreateActorWithPos("Q7321941Trigger", "Actor/Gadget/Q7321941Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321941_guide").pos, sceneData:GetDummyPoint(3, "Q7321941_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321941(arg1)
    print("OnSubFinish7321941")
    this:TransmitPlayerWithTextById(arg1, 1, nil, 0)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest73219:OnSubStart7321909(arg1)
    print("OnSubStart7321909")
    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
    this:RequestInteraction(npcs.Npc20845Data.alias)
end

function Quest73219:OnSubFinish7321909(arg1)
    print("OnSubFinish7321909")
end

function Quest73219:OnSubStart7321910(arg1)
    print("OnSubStart7321910")
end

function Quest73219:OnSubFinish7321910(arg1)
    print("OnSubFinish7321910")
end

function Quest73219:OnSubStart7321962(arg1)
    print("OnSubStart7321962")
    this:PlayCutsceneIndex(133307012, function(arg1)
        actorUtils.FinishQuestID(false, 7321962)
    end, nil, nil, false)
end

function Quest73219:OnSubFinish7321962(arg1)
    print("OnSubFinish7321962")
end

function Quest73219:OnSubStart7321911(arg1)
    print("OnSubStart7321911")
    this:CreateQuestNpc(arg1, npcs.Npc20845Data.id, 1)
    this:RequestInteraction(npcs.Npc20845Data.alias)
end

function Quest73219:OnSubFinish7321911(arg1)
    print("OnSubFinish7321911")
end

function Quest73219:OnSubStart7321963(arg1)
    print("OnSubStart7321963")
end

function Quest73219:OnSubFinish7321963(arg1)
    print("OnSubFinish7321963")
end

function Quest73219:OnSubStart7321912(arg1)
    print("OnSubStart7321912")
    this:CreateQuestNpc(arg1, npcs.Npc20845Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 2)
end

function Quest73219:OnSubFinish7321912(arg1)
    print("OnSubFinish7321912")
end

function Quest73219:OnSubStart7321961(arg1)
    print("OnSubStart7321961")
end

function Quest73219:OnSubFinish7321961(arg1)
    print("OnSubFinish7321961")
end

function Quest73219:OnSubStart7321913(arg1)
    print("OnSubStart7321913")
    this:RequestInteraction(npcs.Npc20845Data.alias)
end

function Quest73219:OnSubFinish7321913(arg1)
    print("OnSubFinish7321913")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7321937)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc20845Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73219:OnSubStart7321914(arg1)
    print("OnSubStart7321914")
end

function Quest73219:OnSubFinish7321914(arg1)
    print("OnSubFinish7321914")
end

function Quest73219:OnSubStart7321915(arg1)
    print("OnSubStart7321915")
    actorMgr:CreateActorWithPos("Q7321915sTrigger", "Actor/Gadget/Q7321915sTrigger", 70900002, 0, {x = -1742.776, y = 23.292, z = 5590.785}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7321915s1Trigger", "Actor/Gadget/Q7321915s1Trigger", 70900002, 0, {x = -1765.697, y = 35.292, z = 5532.164}, {x = 0.0, y = 33.603, z = 0.0}, true, false, 3)
end

function Quest73219:OnSubFinish7321915(arg1)
    print("OnSubFinish7321915")
    this:ActorDestroy("Q7321915s1Trigger")
    this:ActorDestroy("Q7321915sTrigger")
end

function Quest73219:OnSubStart7321967(arg1)
    print("OnSubStart7321967")
    this:PlayCutsceneIndex(133307017, function(arg1)
        actorUtils.FinishQuestID(false, 7321967)
    end, nil, nil, false)
end

function Quest73219:OnSubFinish7321967(arg1)
    print("OnSubFinish7321967")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7321907)
    end)
end

function Quest73219:OnSubStart7321916(arg1)
    print("OnSubStart7321916")
end

function Quest73219:OnSubFinish7321916(arg1)
    print("OnSubFinish7321916")
end

function Quest73219:OnSubStart7321917(arg1)
    print("OnSubStart7321917")
    actorMgr:CreateActorWithPos("Q7321917Trigger", "Actor/Gadget/Q7321917Trigger", 70900002, 0, {x = -1857.704, y = -37.567, z = 5520.882}, {x = 0.0, y = 315.17, z = 0.0}, true, false, 3)
end

function Quest73219:OnSubFinish7321917(arg1)
    print("OnSubFinish7321917")
end

function Quest73219:OnSubStart7321918(arg1)
    print("OnSubStart7321918")
    actorMgr:CreateActorWithPos("Q7321918Trigger", "Actor/Gadget/Q7321918Trigger", 70900002, 0, {x = -1716.344, y = 9.802, z = 5555.11}, {x = 0.0, y = 13.5, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7321918finTrigger", "Actor/Gadget/Q7321918finTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321918_guide").pos, sceneData:GetDummyPoint(3, "Q7321918_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321918(arg1)
    print("OnSubFinish7321918")
end

function Quest73219:OnSubStart7321919(arg1)
    print("OnSubStart7321919")
    actorMgr:CreateActorWithPos("Q7321919Trigger", "Actor/Gadget/Q7321919Trigger", 70900002, 0, {x = -1667.099, y = 12.802, z = 5636.11}, {x = 0.0, y = 15.213, z = 0.0}, true, false, 3)
end

function Quest73219:OnSubFinish7321919(arg1)
    print("OnSubFinish7321919")
    this:NarratorOnlyTaskByData(datas.Narrator_7321911)
end

function Quest73219:OnSubStart7321949(arg1)
    print("OnSubStart7321949")
    actorMgr:CreateActorWithPos("Q7321949Trigger", "Actor/Gadget/Q7321949Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321920_guide").pos, sceneData:GetDummyPoint(3, "Q7321920_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321949(arg1)
    print("OnSubFinish7321949")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest73219:OnSubStart7321947(arg1)
    print("OnSubStart7321947")
    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
    this:RequestInteraction(npcs.Npc20845Data.alias)
end

function Quest73219:OnSubFinish7321947(arg1)
    print("OnSubFinish7321947")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7321938)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc20845Data.alias, 3)
end

function Quest73219:OnSubStart7321920(arg1)
    print("OnSubStart7321920")
end

function Quest73219:OnSubFinish7321920(arg1)
    print("OnSubFinish7321920")
    this:NarratorOnlyTaskByData(datas.Narrator_7321912)
end

function Quest73219:OnSubStart7321921(arg1)
    print("OnSubStart7321921")
end

function Quest73219:OnSubFinish7321921(arg1)
    print("OnSubFinish7321921")
end

function Quest73219:OnSubStart7321922(arg1)
    print("OnSubStart7321922")
    actorMgr:CreateActorWithPos("Q7321922sTrigger", "Actor/Gadget/Q7321922sTrigger", 70900002, 0, {x = -1685.675, y = 23.262, z = 5757.853}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7321922s1Trigger", "Actor/Gadget/Q7321922s1Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321922_guide").pos, sceneData:GetDummyPoint(3, "Q7321922_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321922(arg1)
    print("OnSubFinish7321922")
    this:ActorDestroy("Q7321922s1Trigger")
    this:ActorDestroy("Q7321922sTrigger")
end

function Quest73219:OnSubStart7321968(arg1)
    print("OnSubStart7321968")
    this:PlayCutsceneIndex(133307021, function(arg1)
        actorUtils.FinishQuestID(false, 7321968)
    end, nil, nil, false)
end

function Quest73219:OnSubFinish7321968(arg1)
    print("OnSubFinish7321968")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7321929)
    end)
end

function Quest73219:OnSubStart7321923(arg1)
    print("OnSubStart7321923")
    actorMgr:CreateActorWithPos("Q7321923Trigger", "Actor/Gadget/Q7321923Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321923_guide").pos, sceneData:GetDummyPoint(3, "Q7321923_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7321923s1Trigger", "Actor/Gadget/Q7321923s1Trigger", 70900002, 0, {x = -1714.473, y = 18.211, z = 5849.492}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7321923s2Trigger", "Actor/Gadget/Q7321923s2Trigger", 70900002, 0, {x = -1597.569, y = 2.252, z = 5776.948}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73219:OnSubFinish7321923(arg1)
    print("OnSubFinish7321923")
    this:NarratorOnlyTaskByData(datas.Narrator_7321930)
    this:ActorDestroy("Q7321923s1Trigger")
    this:ActorDestroy("Q7321923s2Trigger")
end

function Quest73219:OnSubStart7321924(arg1)
    print("OnSubStart7321924")
end

function Quest73219:OnSubFinish7321924(arg1)
    print("OnSubFinish7321924")
    this:NarratorOnlyTaskByData(datas.Narrator_7321931)
end

function Quest73219:OnSubStart7321925(arg1)
    print("OnSubStart7321925")
end

function Quest73219:OnSubFinish7321925(arg1)
    print("OnSubFinish7321925")
end

function Quest73219:OnSubStart7321926(arg1)
    print("OnSubStart7321926")
    actorMgr:CreateActorWithPos("Q7321926sTrigger", "Actor/Gadget/Q7321926sTrigger", 70900002, 0, {x = -1786.366, y = 23.262, z = 5668.36}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7321926sTrigger1", "Actor/Gadget/Q7321926sTrigger1", 70900002, 0, {x = -1831.219, y = 20.262, z = 5672.584}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73219:OnSubFinish7321926(arg1)
    print("OnSubFinish7321926")
    this:NarratorOnlyTaskByData(datas.Narrator_7321933)
    this:ActorDestroy("Q7321926sTrigger")
    this:ActorDestroy("Q7321926sTrigger1")
end

function Quest73219:OnSubStart7321927(arg1)
    print("OnSubStart7321927")
    actorMgr:CreateActorWithPos("Q7321927Trigger", "Actor/Gadget/Q7321927Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321927_guide").pos, sceneData:GetDummyPoint(3, "Q7321927_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7321927sTrigger", "Actor/Gadget/Q7321927sTrigger", 70900002, 0, {x = -1764.03, y = 22.35, z = 5750.007}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73219:OnSubFinish7321927(arg1)
    print("OnSubFinish7321927")
    this:NarratorOnlyTaskByData(datas.Narrator_7321934)
end

function Quest73219:OnSubStart7321928(arg1)
    print("OnSubStart7321928")
end

function Quest73219:OnSubFinish7321928(arg1)
    print("OnSubFinish7321928")
    this:NarratorOnlyTaskByData(datas.Narrator_7321935)
end

function Quest73219:OnSubStart7321929(arg1)
    print("OnSubStart7321929")
end

function Quest73219:OnSubFinish7321929(arg1)
    print("OnSubFinish7321929")
end

function Quest73219:OnSubStart7321930(arg1)
    print("OnSubStart7321930")
    this:PlayCutsceneIndex(7321930, function(arg1)
        actorUtils.FinishQuestID(false, 7321930)
    end, nil, nil, false)
end

function Quest73219:OnSubFinish7321930(arg1)
    print("OnSubFinish7321930")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest73219:OnSubStart7321950(arg1)
    print("OnSubStart7321950")
    this:CreateQuestNpc(arg1, npcs.Npc20845Data.id, 1)
    this:RequestInteraction(npcs.Npc20845Data.alias)
end

function Quest73219:OnSubFinish7321950(arg1)
    print("OnSubFinish7321950")
    this:SafeDestroyQuestNpc(npcs.Npc20845Data.alias, 3)
end

function Quest73219:OnSubStart7321931(arg1)
    print("OnSubStart7321931")
    actorMgr:CreateActorWithPos("Q7321931Trigger", "Actor/Gadget/Q7321931Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321931_guide_2625").pos, sceneData:GetDummyPoint(3, "Q7321931_guide_2625").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321931(arg1)
    print("OnSubFinish7321931")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest73219:OnSubStart7321932(arg1)
    print("OnSubStart7321932")
end

function Quest73219:OnSubFinish7321932(arg1)
    print("OnSubFinish7321932")
end

function Quest73219:OnSubStart7321933(arg1)
    print("OnSubStart7321933")
    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
    this:RequestInteraction(npcs.Npc20845Data.alias)
end

function Quest73219:OnSubFinish7321933(arg1)
    print("OnSubFinish7321933")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7321920)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc20845Data.alias)
end

function Quest73219:OnSubStart7321934(arg1)
    print("OnSubStart7321934")
    this:CreateQuestNpc(arg1, npcs.Npc20967Data.id, 1)
    actorMgr:CreateActorWithPos("Q7321934Trigger", "Actor/Gadget/Q7321934Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321934_guide").pos, sceneData:GetDummyPoint(3, "Q7321934_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321934(arg1)
    print("OnSubFinish7321934")
end

function Quest73219:OnSubStart7321964(arg1)
    print("OnSubStart7321964")
end

function Quest73219:OnSubFinish7321964(arg1)
    print("OnSubFinish7321964")
end

function Quest73219:OnSubStart7321935(arg1)
    print("OnSubStart7321935")
    actorMgr:CreateActorWithPos("Q7321935Trigger", "Actor/Gadget/Q7321935Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321935_guide").pos, sceneData:GetDummyPoint(3, "Q7321935_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7321934sTrigger", "Actor/Gadget/Q7321934sTrigger", 70900002, 0, {x = -1331.721, y = -25.428, z = 5576.575}, {x = 0.0, y = 16.537, z = 0.0}, true, false, 3)
end

function Quest73219:OnSubFinish7321935(arg1)
    print("OnSubFinish7321935")
    this:NarratorOnlyTaskByData(datas.Narrator_7321922)
    this:ActorDestroy("Q7321934sTrigger")
end

function Quest73219:OnSubStart7321942(arg1)
    print("OnSubStart7321942")
    actorMgr:CreateActorWithPos("Q7321942Trigger", "Actor/Gadget/Q7321942Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321943_guide").pos, sceneData:GetDummyPoint(3, "Q7321943_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321942(arg1)
    print("OnSubFinish7321942")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest73219:OnSubStart7321943(arg1)
    print("OnSubStart7321943")
    this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 1)
    this:RequestInteraction(npcs.Npc4296Data.alias)
end

function Quest73219:OnSubFinish7321943(arg1)
    print("OnSubFinish7321943")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7321923)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
end

function Quest73219:OnSubStart7321936(arg1)
    print("OnSubStart7321936")
end

function Quest73219:OnSubFinish7321936(arg1)
    print("OnSubFinish7321936")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7321924)
    end)
end

function Quest73219:OnSubStart7321937(arg1)
    print("OnSubStart7321937")
end

function Quest73219:OnSubFinish7321937(arg1)
    print("OnSubFinish7321937")
    this:SafeDestroyQuestNpc(npcs.Npc20967Data.alias, 3)
end

function Quest73219:OnSubStart7321938(arg1)
    print("OnSubStart7321938")
    this:PlayCutsceneIndex(7321938, function(arg1)
        actorUtils.FinishQuestID(false, 7321938)
    end, nil, nil, false)
end

function Quest73219:OnSubFinish7321938(arg1)
    print("OnSubFinish7321938")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest73219:OnSubStart7321939(arg1)
    print("OnSubStart7321939")
    this:NpcCreate(arg1, npcs.Npc20846Data.id, 1)
    this:RequestInteraction(npcs.Npc20846Data.alias)
end

function Quest73219:OnSubFinish7321939(arg1)
    print("OnSubFinish7321939")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20846Data.alias)
end

function Quest73219:OnSubStart7321965(arg1)
    print("OnSubStart7321965")
    actorMgr:CreateActorWithPos("Q7321965Trigger", "Actor/Gadget/Q7321965Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321965_guide").pos, sceneData:GetDummyPoint(3, "Q7321965_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321965(arg1)
    print("OnSubFinish7321965")
end

function Quest73219:OnSubStart7321944(arg1)
    print("OnSubStart7321944")
    actorMgr:CreateActorWithPos("Q7321944Trigger", "Actor/Gadget/Q7321944Trigger", 70900002, 0, {x = -1066.985, y = -39.824, z = 5613.263}, {x = 0.0, y = 295.036, z = 0.0}, true, false, 3)
end

function Quest73219:OnSubFinish7321944(arg1)
    print("OnSubFinish7321944")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest73219:OnSubStart7321945(arg1)
    print("OnSubStart7321945")
    this:NpcCreate(arg1, npcs.Npc20860Data.id, 1)
    this:RequestInteraction(npcs.Npc20860Data.alias)
end

function Quest73219:OnSubFinish7321945(arg1)
    print("OnSubFinish7321945")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7321925)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc20860Data.alias)
end

function Quest73219:OnSubStart7321951(arg1)
    print("OnSubStart7321951")
    actorMgr:CreateActorWithPos("Q7321951Trigger", "Actor/Gadget/Q7321951Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321951_guide").pos, sceneData:GetDummyPoint(3, "Q7321951_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321951(arg1)
    print("OnSubFinish7321951")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest73219:OnSubStart7321952(arg1)
    print("OnSubStart7321952")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20846Data.id, 1)
        this:RequestInteraction(npcs.Npc20846Data.alias)
    end)
end

function Quest73219:OnSubFinish7321952(arg1)
    print("OnSubFinish7321952")
    this:SafeDestroyQuestNpc(npcs.Npc20846Data.alias, 3)
end

function Quest73219:OnSubStart7321953(arg1)
    print("OnSubStart7321953")
end

function Quest73219:OnSubFinish7321953(arg1)
    print("OnSubFinish7321953")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7321926)
    end)
end

function Quest73219:OnSubStart7321954(arg1)
    print("OnSubStart7321954")
    actorMgr:CreateActorWithPos("Q7321954Trigger", "Actor/Gadget/Q7321954Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321954_guide").pos, sceneData:GetDummyPoint(3, "Q7321954_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321954(arg1)
    print("OnSubFinish7321954")
    this:NarratorOnlyTaskByData(datas.Narrator_7321927)
end

function Quest73219:OnSubStart7321955(arg1)
    print("OnSubStart7321955")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
end

function Quest73219:OnSubFinish7321955(arg1)
    print("OnSubFinish7321955")
    this:SafeDestroyQuestNpc(npcs.Npc20932Data.alias, 3)
end

function Quest73219:OnSubStart7321956(arg1)
    print("OnSubStart7321956")
    actorMgr:CreateActorWithPos("Q7321956Trigger", "Actor/Gadget/Q7321956Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321956_guide").pos, sceneData:GetDummyPoint(3, "Q7321956_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321956(arg1)
    print("OnSubFinish7321956")
end

function Quest73219:OnSubStart7321957(arg1)
    print("OnSubStart7321957")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
end

function Quest73219:OnSubFinish7321957(arg1)
    print("OnSubFinish7321957")
    this:SafeDestroyQuestNpc(npcs.Npc20932Data.alias, 3)
end

function Quest73219:OnSubStart7321958(arg1)
    print("OnSubStart7321958")
    actorMgr:CreateActorWithPos("Q7321958Trigger", "Actor/Gadget/Q7321958Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321958_guide").pos, sceneData:GetDummyPoint(3, "Q7321958_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321958(arg1)
    print("OnSubFinish7321958")
end

function Quest73219:OnSubStart7321959(arg1)
    print("OnSubStart7321959")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
end

function Quest73219:OnSubFinish7321959(arg1)
    print("OnSubFinish7321959")
    this:SafeDestroyQuestNpc(npcs.Npc20932Data.alias, 3)
end

function Quest73219:OnSubStart7321960(arg1)
    print("OnSubStart7321960")
    actorMgr:CreateActorWithPos("Q7321960Trigger", "Actor/Gadget/Q7321960Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7321960_guide").pos, sceneData:GetDummyPoint(3, "Q7321960_guide").rot, true, false, 3)
end

function Quest73219:OnSubFinish7321960(arg1)
    print("OnSubFinish7321960")
    this:NarratorOnlyTaskByData(datas.Narrator_7321928)
end

function Quest73219:OnSubStart7321940(arg1)
    print("OnSubStart7321940")
end

function Quest73219:OnSubFinish7321940(arg1)
    print("OnSubFinish7321940")
end

function Quest73219:OnSubStart7321969(arg1)
    print("OnSubStart7321969")
end

function Quest73219:OnSubFinish7321969(arg1)
    print("OnSubFinish7321969")
end

function Quest73219:OnSubStart7321946(arg1)
    print("OnSubStart7321946")
    this:CreateQuestNpc(arg1, npcs.Npc20845Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4296Data.id, 2)
    if self:GetQuestVar(7321946, 1) == 1 then
        this:GetQuestNpcActor(npcs.Npc20845Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc4296Data.alias):SitOnChair(0)
    end
end

function Quest73219:OnSubFinish7321946(arg1)
    print("OnSubFinish7321946")
    this:SafeDestroyQuestNpc(npcs.Npc20845Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
end

return Quest73219
