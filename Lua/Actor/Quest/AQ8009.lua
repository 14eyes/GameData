require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8009 = class("Quest8009", QuestActorProxy)
Quest8009.defaultAlias = "Quest8009"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest8009:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest8009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["800901"] = self.OnSubStart800901,
        ["800902"] = self.OnSubStart800902,
        ["800903"] = self.OnSubStart800903,
        ["800904"] = self.OnSubStart800904,
        ["800907"] = self.OnSubStart800907,
        ["800910"] = self.OnSubStart800910,
        ["800911"] = self.OnSubStart800911,
        ["800912"] = self.OnSubStart800912,
        ["800913"] = self.OnSubStart800913,
        ["800914"] = self.OnSubStart800914,
        ["800915"] = self.OnSubStart800915,
        ["800920"] = self.OnSubStart800920,
        ["800916"] = self.OnSubStart800916,
        ["800921"] = self.OnSubStart800921,
        ["800917"] = self.OnSubStart800917,
        ["800922"] = self.OnSubStart800922,
        ["800918"] = self.OnSubStart800918,
        ["800905"] = self.OnSubStart800905,
        ["800919"] = self.OnSubStart800919,
        ["800906"] = self.OnSubStart800906,
        ["800909"] = self.OnSubStart800909,
        ["800908"] = self.OnSubStart800908
    }
end

function Quest8009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["800901"] = self.OnSubFinish800901,
        ["800902"] = self.OnSubFinish800902,
        ["800903"] = self.OnSubFinish800903,
        ["800904"] = self.OnSubFinish800904,
        ["800907"] = self.OnSubFinish800907,
        ["800910"] = self.OnSubFinish800910,
        ["800911"] = self.OnSubFinish800911,
        ["800912"] = self.OnSubFinish800912,
        ["800913"] = self.OnSubFinish800913,
        ["800914"] = self.OnSubFinish800914,
        ["800915"] = self.OnSubFinish800915,
        ["800920"] = self.OnSubFinish800920,
        ["800916"] = self.OnSubFinish800916,
        ["800921"] = self.OnSubFinish800921,
        ["800917"] = self.OnSubFinish800917,
        ["800922"] = self.OnSubFinish800922,
        ["800918"] = self.OnSubFinish800918,
        ["800905"] = self.OnSubFinish800905,
        ["800919"] = self.OnSubFinish800919,
        ["800906"] = self.OnSubFinish800906,
        ["800909"] = self.OnSubFinish800909,
        ["800908"] = self.OnSubFinish800908
    }
end

function Quest8009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["800908"] = self.OnSubFailed800908}
end

function Quest8009:Start()
    print("Start")
end

function Quest8009:OnDestroy()
    print("OnDestroy")
end

function Quest8009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8009:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 800906)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 800907)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 800920)
    end
end

function Quest8009:OnSubStart800901(arg1)
    print("OnSubStart800901")
    this:CreateQuestNpc(arg1, npcs.Npc4108Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc4108Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q8009Trigger8", "Actor/Gadget/Q8009Trigger8", 70900002, 0, sceneData:GetDummyPoint(3, "Q800901_N4108").pos, sceneData:GetDummyPoint(3, "Q800901_N4108").rot, true, false, 3)
end

function Quest8009:OnSubFinish800901(arg1)
    print("OnSubFinish800901")
end

function Quest8009:OnSubStart800902(arg1)
    print("OnSubStart800902")
end

function Quest8009:OnSubFinish800902(arg1)
    print("OnSubFinish800902")
    this:NarratorOnlyTaskByData(datas.Narrator_800901, nil, 8009)
end

function Quest8009:OnSubStart800903(arg1)
    print("OnSubStart800903")
    this:CreateQuestNpc(arg1, npcs.GaiaData.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc4124Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.GaiaData.alias)
    questNpcActor:SitOnChair(8011)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4124Data.alias):DisableInteeHeadCtrl(true)
    this:CreateLocalGadget(70710956, "", {x = -2034.897, y = 205.22, z = 2589.821}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, 0, false)
    actorMgr:CreateActorWithPos("Q8009Trigger9", "Actor/Gadget/Q8009Trigger9", 70900002, 0, sceneData:GetDummyPoint(3, "Q800903_N1004").pos, sceneData:GetDummyPoint(3, "Q800903_N1004").rot, true, false, 3)
end

function Quest8009:OnSubFinish800903(arg1)
    print("OnSubFinish800903")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc4108Data.alias, 3)
        this:GetQuestNpcActor(npcs.GaiaData.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc4124Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.GaiaData.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc4124Data.alias, 3)
        this:RemoveLocalGadget(70710956, "")
        this:ClearNarratorTask()
        this:StopNarrator()
    end)
end

function Quest8009:OnSubStart800904(arg1)
    print("OnSubStart800904")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q8009Trigger", "Actor/Gadget/Q8009Trigger", 70900002, 0, {x = -719.233, y = 225.0, z = 2243.088}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.GaiaData.id, 0)
        this:GetQuestNpcActor(npcs.GaiaData.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    end)
end

function Quest8009:OnSubFinish800904(arg1)
    print("OnSubFinish800904")
    this:DestroyQuestNpcActor(npcs.GaiaData.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1022Data.alias, 3)
end

function Quest8009:OnSubStart800907(arg1)
    print("OnSubStart800907")
end

function Quest8009:OnSubFinish800907(arg1)
    print("OnSubFinish800907")
end

function Quest8009:OnSubStart800910(arg1)
    print("OnSubStart800910")
    actorMgr:CreateActorWithPos("Q8009Trigger1", "Actor/Gadget/Q8009Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q800910_N1022").pos, sceneData:GetDummyPoint(3, "Q800910_N1022").rot, true, false, 3)
end

function Quest8009:OnSubFinish800910(arg1)
    print("OnSubFinish800910")
end

function Quest8009:OnSubStart800911(arg1)
    print("OnSubStart800911")
end

function Quest8009:OnSubFinish800911(arg1)
    print("OnSubFinish800911")
    this:ClearNarratorTask()
    this:StopNarrator()
end

function Quest8009:OnSubStart800912(arg1)
    print("OnSubStart800912")
end

function Quest8009:OnSubFinish800912(arg1)
    print("OnSubFinish800912")
    this:ClearNarratorTask()
    this:StopNarrator()
end

function Quest8009:OnSubStart800913(arg1)
    print("OnSubStart800913")
end

function Quest8009:OnSubFinish800913(arg1)
    print("OnSubFinish800913")
    this:ClearNarratorTask()
    this:StopNarrator()
end

function Quest8009:OnSubStart800914(arg1)
    print("OnSubStart800914")
end

function Quest8009:OnSubFinish800914(arg1)
    print("OnSubFinish800914")
end

function Quest8009:OnSubStart800915(arg1)
    print("OnSubStart800915")
end

function Quest8009:OnSubFinish800915(arg1)
    print("OnSubFinish800915")
end

function Quest8009:OnSubStart800920(arg1)
    print("OnSubStart800920")
end

function Quest8009:OnSubFinish800920(arg1)
    print("OnSubFinish800920")
end

function Quest8009:OnSubStart800916(arg1)
    print("OnSubStart800916")
    actorMgr:CreateActorWithPos("Q8009Trigger5", "Actor/Gadget/Q8009Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q800910_N1022").pos, sceneData:GetDummyPoint(3, "Q800910_N1022").rot, true, false, 3)
end

function Quest8009:OnSubFinish800916(arg1)
    print("OnSubFinish800916")
    this:DestroyQuestNpcActor(npcs.Npc1022Data.alias, 3)
end

function Quest8009:OnSubStart800921(arg1)
    print("OnSubStart800921")
    actorMgr:CreateActorWithPos("Q8009Trigger4", "Actor/Gadget/Q8009Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q800918_N1022").pos, sceneData:GetDummyPoint(3, "Q800918_N1022").rot, true, false, 3)
end

function Quest8009:OnSubFinish800921(arg1)
    print("OnSubFinish800921")
end

function Quest8009:OnSubStart800917(arg1)
    print("OnSubStart800917")
end

function Quest8009:OnSubFinish800917(arg1)
    print("OnSubFinish800917")
end

function Quest8009:OnSubStart800922(arg1)
    print("OnSubStart800922")
end

function Quest8009:OnSubFinish800922(arg1)
    print("OnSubFinish800922")
end

function Quest8009:OnSubStart800918(arg1)
    print("OnSubStart800918")
    actorMgr:DestroyEntityActor("Q8009Trigger4", 3, false)
    this:ClearNarratorTask()
    this:StopNarrator()
    this:CallDelay(2, function(arg1)
        actorMgr:CreateActorWithPos("Q8009Trigger2", "Actor/Gadget/Q8009Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q800918_N1022").pos, sceneData:GetDummyPoint(3, "Q800918_N1022").rot, true, false, 3)
    end)
end

function Quest8009:OnSubFinish800918(arg1)
    print("OnSubFinish800918")
    this:DestroyQuestNpcActor(npcs.Npc1022Data.alias, 3)
end

function Quest8009:OnSubStart800905(arg1)
    print("OnSubStart800905")
end

function Quest8009:OnSubFinish800905(arg1)
    print("OnSubFinish800905")
end

function Quest8009:OnSubStart800919(arg1)
    print("OnSubStart800919")
    if sceneData.currSceneID == 20180 then
        actorUtils.FinishQuestID(false, 800919)
    else
        actorMgr:CreateActorWithPos("Q8009Trigger3", "Actor/Gadget/Q8009Trigger3", 70900002, 0, {x = -717.888, y = 240.562, z = 2240.625}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end
end

function Quest8009:OnSubFinish800919(arg1)
    print("OnSubFinish800919")
    if sceneData.currSceneID ~= 20180 then
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            this:PlayerEnterDungeonPointWithDialogs(776, 1177, 800919, 1, datas.DialogsId, 10, nil, nil)
            actorMgr:DestroyEntityActor("Q8009Trigger3", 3, false)
            this:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
        end, nil, nil, 0, false, true)
    else
        actorMgr:DestroyEntityActor("Q8009Trigger3", 3, false)
        this:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
    end
end

function Quest8009:OnSubStart800906(arg1)
    print("OnSubStart800906")
end

function Quest8009:OnSubFinish800906(arg1)
    print("OnSubFinish800906")
end

function Quest8009:OnSubStart800909(arg1)
    print("OnSubStart800909")
    actorMgr:CreateActorWithPos("Q8009Trigger7", "Actor/Gadget/Q8009Trigger7", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801001_N1022").pos, sceneData:GetDummyPoint(20180, "Q801001_N1022").rot, true, false, 20180)
end

function Quest8009:OnSubFinish800909(arg1)
    print("OnSubFinish800909")
end

function Quest8009:OnSubStart800908(arg1)
    print("OnSubStart800908")
    actorMgr:CreateActorWithPos("Q8009Trigger6", "Actor/Gadget/Q8009Trigger6", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801001_N1022").pos, sceneData:GetDummyPoint(20180, "Q801001_N1022").rot, true, false, 20180)
end

function Quest8009:OnSubFinish800908(arg1)
    print("OnSubFinish800908")
    this:DestroyQuestNpcActor(npcs.Npc1022Data.alias, 20180)
end

function Quest8009:OnSubFailed800908(arg1)
    print("OnSubFailed800908")
    this:DestroyQuestNpcActor(npcs.Npc1022Data.alias, 20180)
end

return Quest8009
