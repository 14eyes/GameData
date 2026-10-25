require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73036 = class("Quest73036", QuestActorProxy)
Quest73036.defaultAlias = "Quest73036"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73036:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7303601"] = self.OnSubStart7303601,
        ["7303602"] = self.OnSubStart7303602,
        ["7303621"] = self.OnSubStart7303621,
        ["7303603"] = self.OnSubStart7303603,
        ["7303633"] = self.OnSubStart7303633,
        ["7303604"] = self.OnSubStart7303604,
        ["7303634"] = self.OnSubStart7303634,
        ["7303605"] = self.OnSubStart7303605,
        ["7303635"] = self.OnSubStart7303635,
        ["7303606"] = self.OnSubStart7303606,
        ["7303636"] = self.OnSubStart7303636,
        ["7303607"] = self.OnSubStart7303607,
        ["7303609"] = self.OnSubStart7303609,
        ["7303610"] = self.OnSubStart7303610,
        ["7303612"] = self.OnSubStart7303612,
        ["7303640"] = self.OnSubStart7303640,
        ["7303641"] = self.OnSubStart7303641,
        ["7303642"] = self.OnSubStart7303642,
        ["7303643"] = self.OnSubStart7303643,
        ["7303644"] = self.OnSubStart7303644,
        ["7303645"] = self.OnSubStart7303645,
        ["7303647"] = self.OnSubStart7303647,
        ["7303648"] = self.OnSubStart7303648,
        ["7303613"] = self.OnSubStart7303613,
        ["7303614"] = self.OnSubStart7303614,
        ["7303615"] = self.OnSubStart7303615,
        ["7303616"] = self.OnSubStart7303616,
        ["7303646"] = self.OnSubStart7303646,
        ["7303639"] = self.OnSubStart7303639,
        ["7303617"] = self.OnSubStart7303617,
        ["7303637"] = self.OnSubStart7303637,
        ["7303618"] = self.OnSubStart7303618,
        ["7303622"] = self.OnSubStart7303622,
        ["7303623"] = self.OnSubStart7303623,
        ["7303624"] = self.OnSubStart7303624,
        ["7303625"] = self.OnSubStart7303625,
        ["7303626"] = self.OnSubStart7303626,
        ["7303627"] = self.OnSubStart7303627,
        ["7303628"] = self.OnSubStart7303628,
        ["7303629"] = self.OnSubStart7303629,
        ["7303630"] = self.OnSubStart7303630,
        ["7303631"] = self.OnSubStart7303631,
        ["7303632"] = self.OnSubStart7303632,
        ["7303619"] = self.OnSubStart7303619,
        ["7303620"] = self.OnSubStart7303620,
        ["7303638"] = self.OnSubStart7303638,
        ["7303608"] = self.OnSubStart7303608,
        ["7303611"] = self.OnSubStart7303611
    }
end

function Quest73036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7303601"] = self.OnSubFinish7303601,
        ["7303602"] = self.OnSubFinish7303602,
        ["7303621"] = self.OnSubFinish7303621,
        ["7303603"] = self.OnSubFinish7303603,
        ["7303633"] = self.OnSubFinish7303633,
        ["7303604"] = self.OnSubFinish7303604,
        ["7303634"] = self.OnSubFinish7303634,
        ["7303605"] = self.OnSubFinish7303605,
        ["7303635"] = self.OnSubFinish7303635,
        ["7303606"] = self.OnSubFinish7303606,
        ["7303636"] = self.OnSubFinish7303636,
        ["7303607"] = self.OnSubFinish7303607,
        ["7303609"] = self.OnSubFinish7303609,
        ["7303610"] = self.OnSubFinish7303610,
        ["7303612"] = self.OnSubFinish7303612,
        ["7303640"] = self.OnSubFinish7303640,
        ["7303641"] = self.OnSubFinish7303641,
        ["7303642"] = self.OnSubFinish7303642,
        ["7303643"] = self.OnSubFinish7303643,
        ["7303644"] = self.OnSubFinish7303644,
        ["7303645"] = self.OnSubFinish7303645,
        ["7303647"] = self.OnSubFinish7303647,
        ["7303648"] = self.OnSubFinish7303648,
        ["7303613"] = self.OnSubFinish7303613,
        ["7303614"] = self.OnSubFinish7303614,
        ["7303615"] = self.OnSubFinish7303615,
        ["7303616"] = self.OnSubFinish7303616,
        ["7303646"] = self.OnSubFinish7303646,
        ["7303639"] = self.OnSubFinish7303639,
        ["7303617"] = self.OnSubFinish7303617,
        ["7303637"] = self.OnSubFinish7303637,
        ["7303618"] = self.OnSubFinish7303618,
        ["7303622"] = self.OnSubFinish7303622,
        ["7303623"] = self.OnSubFinish7303623,
        ["7303624"] = self.OnSubFinish7303624,
        ["7303625"] = self.OnSubFinish7303625,
        ["7303626"] = self.OnSubFinish7303626,
        ["7303627"] = self.OnSubFinish7303627,
        ["7303628"] = self.OnSubFinish7303628,
        ["7303629"] = self.OnSubFinish7303629,
        ["7303630"] = self.OnSubFinish7303630,
        ["7303631"] = self.OnSubFinish7303631,
        ["7303632"] = self.OnSubFinish7303632,
        ["7303619"] = self.OnSubFinish7303619,
        ["7303620"] = self.OnSubFinish7303620,
        ["7303638"] = self.OnSubFinish7303638,
        ["7303608"] = self.OnSubFinish7303608,
        ["7303611"] = self.OnSubFinish7303611
    }
end

function Quest73036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73036:Start()
    print("Start")
end

function Quest73036:OnDestroy()
    print("OnDestroy")
end

function Quest73036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73036:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73036:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73036:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73036:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73036:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73036:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73036:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7303602)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(true, 7303602)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7303602)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(true, 7303602)
    elseif arg1 == 5 then
        actorUtils.FinishQuestID(false, 7303621)
    else
        actorUtils.FinishQuestID(false, 7303611)
    end
end

function Quest73036:OnSubStart7303601(arg1)
    print("OnSubStart7303601")
    actorMgr:CreateActorWithPos("Q73036Trigger1_finish7303601", "Actor/Gadget/Q73036Trigger1_finish7303601", 70900002, 0, {x = -610.086, y = 142.873, z = 3691.006}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73036Trigger1_7303601kaiche", "Actor/Gadget/Q73036Trigger1_7303601kaiche", 70900002, 0, {x = -617.154, y = 129.54, z = 3640.424}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73036:OnSubFinish7303601(arg1)
    print("OnSubFinish7303601")
end

function Quest73036:OnSubStart7303602(arg1)
    print("OnSubStart7303602")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73036:OnSubFinish7303602(arg1)
    print("OnSubFinish7303602")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73036:OnSubStart7303621(arg1)
    print("OnSubStart7303621")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20646Data.id, 1)
end

function Quest73036:OnSubFinish7303621(arg1)
    print("OnSubFinish7303621")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73036:OnSubStart7303603(arg1)
    print("OnSubStart7303603")
    actorMgr:CreateActorWithPos("Q73036Trigger8_finish7303603", "Actor/Gadget/Q73036Trigger8_finish7303603", 70900002, 0, {x = -582.58, y = 126.404, z = 3720.993}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73036:OnSubFinish7303603(arg1)
    print("OnSubFinish7303603")
    this:NarratorOnlyTask(datas.NarratorTable_Arama3, nil, "")
end

function Quest73036:OnSubStart7303633(arg1)
    print("OnSubStart7303633")
    this:CreateQuestNpc(arg1, npcs.Npc20783Data.id, 1)
end

function Quest73036:OnSubFinish7303633(arg1)
    print("OnSubFinish7303633")
    this:SafeDestroyQuestNpc(npcs.Npc20783Data.alias, 3)
    this:NarratorOnlyTask(datas.NarratorTable_Arama4, nil, "")
end

function Quest73036:OnSubStart7303604(arg1)
    print("OnSubStart7303604")
    actorMgr:CreateActorWithPos("Q73036Trigger9_finish7303604", "Actor/Gadget/Q73036Trigger9_finish7303604", 70900002, 0, {x = -724.324, y = 113.631, z = 3827.402}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7303604Trigger_NarrtorAramaCommon1", "Actor/Gadget/Q7303604Trigger_NarrtorAramaCommon1", 70900002, 0, {x = -592.722, y = 140.171, z = 3757.262}, {x = 0.0, y = 285.106, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7303604Trigger_NarrtorAramaCommon2", "Actor/Gadget/Q7303604Trigger_NarrtorAramaCommon2", 70900002, 0, {x = -630.262, y = 124.327, z = 3819.596}, {x = 0.0, y = 1.475, z = 0.0}, true, false, 3)
end

function Quest73036:OnSubFinish7303604(arg1)
    print("OnSubFinish7303604")
    this:NarratorOnlyTask(datas.NarratorTable_Arama5, nil, "")
end

function Quest73036:OnSubStart7303634(arg1)
    print("OnSubStart7303634")
    this:CreateQuestNpc(arg1, npcs.Npc20784Data.id, 1)
end

function Quest73036:OnSubFinish7303634(arg1)
    print("OnSubFinish7303634")
    this:SafeDestroyQuestNpc(npcs.Npc20784Data.alias, 3)
    this:NarratorOnlyTask(datas.NarratorTable_Arama6, nil, "")
end

function Quest73036:OnSubStart7303605(arg1)
    print("OnSubStart7303605")
    actorMgr:CreateActorWithPos("Q73036Trigger10_finish7303605", "Actor/Gadget/Q73036Trigger10_finish7303605", 70900002, 0, {x = -576.527, y = 134.94, z = 3949.991}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7303605Trigger_NarrtorAramaCommon3", "Actor/Gadget/Q7303605Trigger_NarrtorAramaCommon3", 70900002, 0, {x = -692.526, y = 134.712, z = 3848.74}, {x = 0.0, y = 337.549, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7303605Trigger_NarrtorAramaCommon4", "Actor/Gadget/Q7303605Trigger_NarrtorAramaCommon4", 70900002, 0, {x = -635.793, y = 124.069, z = 3887.492}, {x = 0.0, y = 308.681, z = 0.0}, true, false)
end

function Quest73036:OnSubFinish7303605(arg1)
    print("OnSubFinish7303605")
    this:NarratorOnlyTask(datas.NarratorTable_Arama7, nil, "")
end

function Quest73036:OnSubStart7303635(arg1)
    print("OnSubStart7303635")
    this:CreateQuestNpc(arg1, npcs.Npc20785Data.id, 1)
end

function Quest73036:OnSubFinish7303635(arg1)
    print("OnSubFinish7303635")
    this:SafeDestroyQuestNpc(npcs.Npc20785Data.alias, 3)
    this:NarratorOnlyTask(datas.NarratorTable_Arama8, nil, "")
end

function Quest73036:OnSubStart7303606(arg1)
    print("OnSubStart7303606")
    actorMgr:CreateActorWithPos("Q73036Trigger2_finish7303606", "Actor/Gadget/Q73036Trigger2_finish7303606", 70900002, 0, {x = -606.249, y = 122.663, z = 3948.323}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73036Trigger11_7303606treeHolenarrator", "Actor/Gadget/Q73036Trigger11_7303606treeHolenarrator", 70900002, 0, {x = -601.232, y = 138.688, z = 3953.298}, {x = 0.0, y = 288.413, z = 0.0}, true, false)
end

function Quest73036:OnSubFinish7303606(arg1)
    print("OnSubFinish7303606")
end

function Quest73036:OnSubStart7303636(arg1)
    print("OnSubStart7303636")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73036:OnSubFinish7303636(arg1)
    print("OnSubFinish7303636")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
    this:NarratorOnlyTask(datas.NarratorTable_Arama10, nil, "")
end

function Quest73036:OnSubStart7303607(arg1)
    print("OnSubStart7303607")
    actorMgr:CreateActorWithPos("Q73036Trigger14_finish7303607_holestar", "Actor/Gadget/Q73036Trigger14_finish7303607_holestar", 70900002, 0, {x = -618.131, y = 50.788, z = 3950.986}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73036Trigger3_finish7303607", "Actor/Gadget/Q73036Trigger3_finish7303607", 70900002, 0, {x = -574.146, y = 38.686, z = 3844.484}, {x = 0.0, y = 272.638, z = 0.0}, true, false)
end

function Quest73036:OnSubFinish7303607(arg1)
    print("OnSubFinish7303607")
end

function Quest73036:OnSubStart7303609(arg1)
    print("OnSubStart7303609")
    actorMgr:CreateActorWithPos("Q73036Trigger13_09hint1", "Actor/Gadget/Q73036Trigger13_09hint1", 70900002, 0, {x = -593.668, y = 33.263, z = 3807.402}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73036:OnSubFinish7303609(arg1)
    print("OnSubFinish7303609")
end

function Quest73036:OnSubStart7303610(arg1)
    print("OnSubStart7303610")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73036:OnSubFinish7303610(arg1)
    print("OnSubFinish7303610")
end

function Quest73036:OnSubStart7303612(arg1)
    print("OnSubStart7303612")
    this:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
end

function Quest73036:OnSubFinish7303612(arg1)
    print("OnSubFinish7303612")
    this:NarratorOnlyTask(datas.NarratorTable_Arama17, nil, "")
end

function Quest73036:OnSubStart7303640(arg1)
    print("OnSubStart7303640")
end

function Quest73036:OnSubFinish7303640(arg1)
    print("OnSubFinish7303640")
end

function Quest73036:OnSubStart7303641(arg1)
    print("OnSubStart7303641")
end

function Quest73036:OnSubFinish7303641(arg1)
    print("OnSubFinish7303641")
end

function Quest73036:OnSubStart7303642(arg1)
    print("OnSubStart7303642")
end

function Quest73036:OnSubFinish7303642(arg1)
    print("OnSubFinish7303642")
end

function Quest73036:OnSubStart7303643(arg1)
    print("OnSubStart7303643")
end

function Quest73036:OnSubFinish7303643(arg1)
    print("OnSubFinish7303643")
end

function Quest73036:OnSubStart7303644(arg1)
    print("OnSubStart7303644")
end

function Quest73036:OnSubFinish7303644(arg1)
    print("OnSubFinish7303644")
end

function Quest73036:OnSubStart7303645(arg1)
    print("OnSubStart7303645")
end

function Quest73036:OnSubFinish7303645(arg1)
    print("OnSubFinish7303645")
end

function Quest73036:OnSubStart7303647(arg1)
    print("OnSubStart7303647")
end

function Quest73036:OnSubFinish7303647(arg1)
    print("OnSubFinish7303647")
end

function Quest73036:OnSubStart7303648(arg1)
    print("OnSubStart7303648")
end

function Quest73036:OnSubFinish7303648(arg1)
    print("OnSubFinish7303648")
end

function Quest73036:OnSubStart7303613(arg1)
    print("OnSubStart7303613")
    this:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
end

function Quest73036:OnSubFinish7303613(arg1)
    print("OnSubFinish7303613")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73036:OnSubStart7303614(arg1)
    print("OnSubStart7303614")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7303614, function(arg1)
            actorUtils.FinishQuestID(false, 7303614)
        end, nil, nil, false)
    end)
end

function Quest73036:OnSubFinish7303614(arg1)
    print("OnSubFinish7303614")
    this:TransmitPlayerByQuestId(7303614, 1)
end

function Quest73036:OnSubStart7303615(arg1)
    print("OnSubStart7303615")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73036:OnSubFinish7303615(arg1)
    print("OnSubFinish7303615")
end

function Quest73036:OnSubStart7303616(arg1)
    print("OnSubStart7303616")
end

function Quest73036:OnSubFinish7303616(arg1)
    print("OnSubFinish7303616")
end

function Quest73036:OnSubStart7303646(arg1)
    print("OnSubStart7303646")
end

function Quest73036:OnSubFinish7303646(arg1)
    print("OnSubFinish7303646")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73036:OnSubStart7303639(arg1)
    print("OnSubStart7303639")
end

function Quest73036:OnSubFinish7303639(arg1)
    print("OnSubFinish7303639")
end

function Quest73036:OnSubStart7303617(arg1)
    print("OnSubStart7303617")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73036:OnSubFinish7303617(arg1)
    print("OnSubFinish7303617")
    this:TransmitPlayerByQuestId(7303617, 1, function(arg1)
        this:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7303618_N20646").pos, 0, 2, true, false)
    end)
end

function Quest73036:OnSubStart7303637(arg1)
    print("OnSubStart7303637")
    actorMgr:CreateActorWithPos("Q73036Trigger5_finish7303637", "Actor/Gadget/Q73036Trigger5_finish7303637", 70900002, 0, {x = -616.71, y = -136.91, z = 3808.621}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73036:OnSubFinish7303637(arg1)
    print("OnSubFinish7303637")
end

function Quest73036:OnSubStart7303618(arg1)
    print("OnSubStart7303618")
    this:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
    this:ActorDestroy("Q73036Trigger5_finish7303637")
end

function Quest73036:OnSubFinish7303618(arg1)
    print("OnSubFinish7303618")
end

function Quest73036:OnSubStart7303622(arg1)
    print("OnSubStart7303622")
    this:CreateQuestNpc(arg1, npcs.Npc20788Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20787Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc20795Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc20796Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc20797Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc20789Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc20790Data.id, 7)
    this:CreateQuestNpc(arg1, npcs.Npc20792Data.id, 8)
    this:CreateQuestNpc(arg1, npcs.Npc20793Data.id, 9)
    this:CreateQuestNpc(arg1, npcs.Npc20794Data.id, 10)
end

function Quest73036:OnSubFinish7303622(arg1)
    print("OnSubFinish7303622")
    this:NarratorOnlyTask(datas.NarratorTable_Arama19, nil, "")
end

function Quest73036:OnSubStart7303623(arg1)
    print("OnSubStart7303623")
end

function Quest73036:OnSubFinish7303623(arg1)
    print("OnSubFinish7303623")
end

function Quest73036:OnSubStart7303624(arg1)
    print("OnSubStart7303624")
end

function Quest73036:OnSubFinish7303624(arg1)
    print("OnSubFinish7303624")
end

function Quest73036:OnSubStart7303625(arg1)
    print("OnSubStart7303625")
end

function Quest73036:OnSubFinish7303625(arg1)
    print("OnSubFinish7303625")
end

function Quest73036:OnSubStart7303626(arg1)
    print("OnSubStart7303626")
end

function Quest73036:OnSubFinish7303626(arg1)
    print("OnSubFinish7303626")
end

function Quest73036:OnSubStart7303627(arg1)
    print("OnSubStart7303627")
end

function Quest73036:OnSubFinish7303627(arg1)
    print("OnSubFinish7303627")
end

function Quest73036:OnSubStart7303628(arg1)
    print("OnSubStart7303628")
end

function Quest73036:OnSubFinish7303628(arg1)
    print("OnSubFinish7303628")
end

function Quest73036:OnSubStart7303629(arg1)
    print("OnSubStart7303629")
end

function Quest73036:OnSubFinish7303629(arg1)
    print("OnSubFinish7303629")
end

function Quest73036:OnSubStart7303630(arg1)
    print("OnSubStart7303630")
end

function Quest73036:OnSubFinish7303630(arg1)
    print("OnSubFinish7303630")
end

function Quest73036:OnSubStart7303631(arg1)
    print("OnSubStart7303631")
end

function Quest73036:OnSubFinish7303631(arg1)
    print("OnSubFinish7303631")
end

function Quest73036:OnSubStart7303632(arg1)
    print("OnSubStart7303632")
end

function Quest73036:OnSubFinish7303632(arg1)
    print("OnSubFinish7303632")
end

function Quest73036:OnSubStart7303619(arg1)
    print("OnSubStart7303619")
    this:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
end

function Quest73036:OnSubFinish7303619(arg1)
    print("OnSubFinish7303619")
    this:NarratorOnlyTask(datas.NarratorTable_Arama20, nil, "")
    this:EnterSceneLookCamera({x = -648.13, y = -120.17, z = 3783.05}, 0.5, 3, false, false)
    this:SafeDestroyQuestNpc(npcs.Npc20796Data.alias, 3)
end

function Quest73036:OnSubStart7303620(arg1)
    print("OnSubStart7303620")
    this:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20711Data.id, 2)
    actorMgr:CreateActorWithPos("Q73036Trigger6_finish7303620", "Actor/Gadget/Q73036Trigger6_finish7303620", 70900002, 0, {x = -651.91, y = -123.039, z = 3781.298}, {x = 0.0, y = 332.832, z = 0.0}, true, false, 3)
end

function Quest73036:OnSubFinish7303620(arg1)
    print("OnSubFinish7303620")
    this:SafeDestroyQuestNpc(npcs.Npc20795Data.alias, 3)
end

function Quest73036:OnSubStart7303638(arg1)
    print("OnSubStart7303638")
    actorMgr:CreateActorWithPos("Q73036Trigger7_finish7303638", "Actor/Gadget/Q73036Trigger7_finish7303638", 70900002, 0, {x = -730.602, y = -136.949, z = 3813.323}, {x = 0.0, y = 84.384, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73036Trigger15_7303638narrtor", "Actor/Gadget/Q73036Trigger15_7303638narrtor", 70900002, 0, {x = -679.793, y = -134.358, z = 3765.895}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73036Trigger_7303638fail", "Actor/Gadget/Q73036Trigger_7303638fail", 70900002, 0, {x = -654.362, y = -122.794, z = 3794.006}, {x = 0.0, y = 63.082, z = 0.0}, true, false, 3)
end

function Quest73036:OnSubFinish7303638(arg1)
    print("OnSubFinish7303638")
    this:SafeDestroyQuestNpc(npcs.Npc20646Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20711Data.alias, 3)
end

function Quest73036:OnSubStart7303608(arg1)
    print("OnSubStart7303608")
end

function Quest73036:OnSubFinish7303608(arg1)
    print("OnSubFinish7303608")
end

function Quest73036:OnSubStart7303611(arg1)
    print("OnSubStart7303611")
end

function Quest73036:OnSubFinish7303611(arg1)
    print("OnSubFinish7303611")
end

return Quest73036
