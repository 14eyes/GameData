require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72276 = class("Quest72276", QuestActorProxy)
Quest72276.defaultAlias = "Quest72276"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72276:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72276:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7227601"] = self.OnSubStart7227601,
        ["7227602"] = self.OnSubStart7227602,
        ["7227617"] = self.OnSubStart7227617,
        ["7227618"] = self.OnSubStart7227618,
        ["7227619"] = self.OnSubStart7227619,
        ["7227603"] = self.OnSubStart7227603,
        ["7227626"] = self.OnSubStart7227626,
        ["7227620"] = self.OnSubStart7227620,
        ["7227604"] = self.OnSubStart7227604,
        ["7227614"] = self.OnSubStart7227614,
        ["7227615"] = self.OnSubStart7227615,
        ["7227616"] = self.OnSubStart7227616,
        ["7227605"] = self.OnSubStart7227605,
        ["7227621"] = self.OnSubStart7227621,
        ["7227622"] = self.OnSubStart7227622,
        ["7227623"] = self.OnSubStart7227623,
        ["7227606"] = self.OnSubStart7227606,
        ["7227607"] = self.OnSubStart7227607,
        ["7227628"] = self.OnSubStart7227628,
        ["7227627"] = self.OnSubStart7227627,
        ["7227608"] = self.OnSubStart7227608,
        ["7227624"] = self.OnSubStart7227624,
        ["7227609"] = self.OnSubStart7227609,
        ["7227625"] = self.OnSubStart7227625,
        ["7227610"] = self.OnSubStart7227610,
        ["7227613"] = self.OnSubStart7227613,
        ["7227611"] = self.OnSubStart7227611,
        ["7227612"] = self.OnSubStart7227612
    }
end

function Quest72276:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7227601"] = self.OnSubFinish7227601,
        ["7227602"] = self.OnSubFinish7227602,
        ["7227617"] = self.OnSubFinish7227617,
        ["7227618"] = self.OnSubFinish7227618,
        ["7227619"] = self.OnSubFinish7227619,
        ["7227603"] = self.OnSubFinish7227603,
        ["7227626"] = self.OnSubFinish7227626,
        ["7227620"] = self.OnSubFinish7227620,
        ["7227604"] = self.OnSubFinish7227604,
        ["7227614"] = self.OnSubFinish7227614,
        ["7227615"] = self.OnSubFinish7227615,
        ["7227616"] = self.OnSubFinish7227616,
        ["7227605"] = self.OnSubFinish7227605,
        ["7227621"] = self.OnSubFinish7227621,
        ["7227622"] = self.OnSubFinish7227622,
        ["7227623"] = self.OnSubFinish7227623,
        ["7227606"] = self.OnSubFinish7227606,
        ["7227607"] = self.OnSubFinish7227607,
        ["7227628"] = self.OnSubFinish7227628,
        ["7227627"] = self.OnSubFinish7227627,
        ["7227608"] = self.OnSubFinish7227608,
        ["7227624"] = self.OnSubFinish7227624,
        ["7227609"] = self.OnSubFinish7227609,
        ["7227625"] = self.OnSubFinish7227625,
        ["7227610"] = self.OnSubFinish7227610,
        ["7227613"] = self.OnSubFinish7227613,
        ["7227611"] = self.OnSubFinish7227611,
        ["7227612"] = self.OnSubFinish7227612
    }
end

function Quest72276:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7227607"] = self.OnSubFailed7227607,
        ["7227628"] = self.OnSubFailed7227628,
        ["7227627"] = self.OnSubFailed7227627,
        ["7227608"] = self.OnSubFailed7227608,
        ["7227613"] = self.OnSubFailed7227613,
        ["7227611"] = self.OnSubFailed7227611
    }
end

function Quest72276:Start()
    print("Start")
end

function Quest72276:OnDestroy()
    print("OnDestroy")
end

function Quest72276:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72276:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72276:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30108Data.alias, 7)
    self:SafeDestroyQuestNpc(npcs.Npc20548Data.alias, 7)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 7)
    actorMgr:DestroyEntityActor("Q72276Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q72276Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q72276Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q72276Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q7227603_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7227618_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7227623_Trigger", 3, false)
end

function Quest72276:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72276:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest72276:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72276:OnSubStart7227601(arg1)
    print("OnSubStart7227601")
    self:CreateQuestNpc(arg1, npcs.Npc30108Data.id, 1)
end

function Quest72276:OnSubFinish7227601(arg1)
    print("OnSubFinish7227601")
    self:NpcDestroyWithBlackscreen(7, npcs.Npc30108Data.alias)
end

function Quest72276:OnSubStart7227602(arg1)
    print("OnSubStart7227602")
    actorMgr:CreateActorWithPos("Q72276Trigger", "Actor/Gadget/Q72276Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "guide_Q7227602").pos, sceneData:GetDummyPoint(7, "guide_Q7227602").rot, true, false, 7)
end

function Quest72276:OnSubFinish7227602(arg1)
    print("OnSubFinish7227602")
    self:NarratorOnlyTask(datas.Narrator_7227602, nil, "")
end

function Quest72276:OnSubStart7227617(arg1)
    print("OnSubStart7227617")
end

function Quest72276:OnSubFinish7227617(arg1)
    print("OnSubFinish7227617")
end

function Quest72276:OnSubStart7227618(arg1)
    print("OnSubStart7227618")
    actorMgr:CreateActorWithPos("Q7227618_Trigger", "Actor/Gadget/Q7227618_Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q7227618_guide").pos, sceneData:GetDummyPoint(7, "Q7227618_guide").rot, true, false, 7)
end

function Quest72276:OnSubFinish7227618(arg1)
    print("OnSubFinish7227618")
end

function Quest72276:OnSubStart7227619(arg1)
    print("OnSubStart7227619")
end

function Quest72276:OnSubFinish7227619(arg1)
    print("OnSubFinish7227619")
    self:NarratorOnlyTask(datas.Narrator_7227619, nil, "")
end

function Quest72276:OnSubStart7227603(arg1)
    print("OnSubStart7227603")
    actorMgr:CreateActorWithPos("Q7227603_Trigger", "Actor/Gadget/Q7227603_Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q7227604_N12404").pos, sceneData:GetDummyPoint(7, "Q7227604_N12404").rot, true, false, 7)
end

function Quest72276:OnSubFinish7227603(arg1)
    print("OnSubFinish7227603")
end

function Quest72276:OnSubStart7227626(arg1)
    print("OnSubStart7227626")
end

function Quest72276:OnSubFinish7227626(arg1)
    print("OnSubFinish7227626")
end

function Quest72276:OnSubStart7227620(arg1)
    print("OnSubStart7227620")
    self:CreateQuestNpc(arg1, npcs.Npc30108Data.id, 1)
end

function Quest72276:OnSubFinish7227620(arg1)
    print("OnSubFinish7227620")
    self:NpcDestroyWithBlackscreen(7, npcs.Npc30108Data.alias)
end

function Quest72276:OnSubStart7227604(arg1)
    print("OnSubStart7227604")
end

function Quest72276:OnSubFinish7227604(arg1)
    print("OnSubFinish7227604")
end

function Quest72276:OnSubStart7227614(arg1)
    print("OnSubStart7227614")
end

function Quest72276:OnSubFinish7227614(arg1)
    print("OnSubFinish7227614")
end

function Quest72276:OnSubStart7227615(arg1)
    print("OnSubStart7227615")
end

function Quest72276:OnSubFinish7227615(arg1)
    print("OnSubFinish7227615")
end

function Quest72276:OnSubStart7227616(arg1)
    print("OnSubStart7227616")
end

function Quest72276:OnSubFinish7227616(arg1)
    print("OnSubFinish7227616")
    self:NarratorOnlyTask(datas.Narrator_7227616, nil, "")
end

function Quest72276:OnSubStart7227605(arg1)
    print("OnSubStart7227605")
end

function Quest72276:OnSubFinish7227605(arg1)
    print("OnSubFinish7227605")
    self:NarratorOnlyTask(datas.Narrator_7227605, nil, "")
end

function Quest72276:OnSubStart7227621(arg1)
    print("OnSubStart7227621")
end

function Quest72276:OnSubFinish7227621(arg1)
    print("OnSubFinish7227621")
    self:NarratorOnlyTask(datas.Narrator_7227621, nil, "")
end

function Quest72276:OnSubStart7227622(arg1)
    print("OnSubStart7227622")
end

function Quest72276:OnSubFinish7227622(arg1)
    print("OnSubFinish7227622")
end

function Quest72276:OnSubStart7227623(arg1)
    print("OnSubStart7227623")
    actorMgr:CreateActorWithPos("Q7227623_Trigger", "Actor/Gadget/Q7227623_Trigger", 70900002, 0, {x = 239.0155, y = 325.561, z = 284.096}, {x = 0, y = 0, z = 0}, true, false, 7)
end

function Quest72276:OnSubFinish7227623(arg1)
    print("OnSubFinish7227623")
end

function Quest72276:OnSubStart7227606(arg1)
    print("OnSubStart7227606")
end

function Quest72276:OnSubFinish7227606(arg1)
    print("OnSubFinish7227606")
end

function Quest72276:OnSubStart7227607(arg1)
    print("OnSubStart7227607")
    self:CreateQuestNpc(arg1, npcs.Npc20548Data.id, 1)
end

function Quest72276:OnSubFinish7227607(arg1)
    print("OnSubFinish7227607")
end

function Quest72276:OnSubFailed7227607(arg1)
    print("OnSubFailed7227607")
    self:ShowBlackScreen(0.3, 0.5, 0.3, nil, nil, nil, "", false, true)
end

function Quest72276:OnSubStart7227628(arg1)
    print("OnSubStart7227628")
    actorMgr:CreateActorWithPos("Q7227628_Trigger", "Actor/Gadget/Q7227628_Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "guide_Q7227608").pos, sceneData:GetDummyPoint(7, "guide_Q7227608").rot, true, false, 7)
end

function Quest72276:OnSubFinish7227628(arg1)
    print("OnSubFinish7227628")
end

function Quest72276:OnSubFailed7227628(arg1)
    print("OnSubFailed7227628")
    self:ShowBlackScreen(0.3, 0.5, 0.3, nil, nil, nil, "", false, true)
end

function Quest72276:OnSubStart7227627(arg1)
    print("OnSubStart7227627")
end

function Quest72276:OnSubFinish7227627(arg1)
    print("OnSubFinish7227627")
end

function Quest72276:OnSubFailed7227627(arg1)
    print("OnSubFailed7227627")
    self:ShowBlackScreen(0.3, 0.5, 0.3, nil, nil, nil, "", false, true)
end

function Quest72276:OnSubStart7227608(arg1)
    print("OnSubStart7227608")
end

function Quest72276:OnSubFinish7227608(arg1)
    print("OnSubFinish7227608")
end

function Quest72276:OnSubFailed7227608(arg1)
    print("OnSubFailed7227608")
    self:ShowBlackScreen(0.3, 0.5, 0.3, nil, nil, nil, "", false, true)
end

function Quest72276:OnSubStart7227624(arg1)
    print("OnSubStart7227624")
end

function Quest72276:OnSubFinish7227624(arg1)
    print("OnSubFinish7227624")
    self:NpcDestroyWithDither(npcs.Npc20548Data.alias, 7)
    self:PlayCutsceneIndex("7227624", nil, nil, nil, false)
end

function Quest72276:OnSubStart7227609(arg1)
    print("OnSubStart7227609")
end

function Quest72276:OnSubFinish7227609(arg1)
    print("OnSubFinish7227609")
end

function Quest72276:OnSubStart7227625(arg1)
    print("OnSubStart7227625")
end

function Quest72276:OnSubFinish7227625(arg1)
    print("OnSubFinish7227625")
    self:PlayCutsceneIndex("7227625", function(arg1)
        arg1:NarratorOnlyTask(datas.Narrator_7227625, nil, "")
    end, nil, nil, false)
end

function Quest72276:OnSubStart7227610(arg1)
    print("OnSubStart7227610")
    actorMgr:CreateActorWithPos("Q72276Trigger3", "Actor/Gadget/Q72276Trigger3", 70900002, 0, sceneData:GetDummyPoint(7, "guide_Q7227610").pos, sceneData:GetDummyPoint(7, "guide_Q7227610").rot, true, false, 7)
end

function Quest72276:OnSubFinish7227610(arg1)
    print("OnSubFinish7227610")
end

function Quest72276:OnSubStart7227613(arg1)
    print("OnSubStart7227613")
end

function Quest72276:OnSubFinish7227613(arg1)
    print("OnSubFinish7227613")
end

function Quest72276:OnSubFailed7227613(arg1)
    print("OnSubFailed7227613")
    self:ShowBlackScreen(0.3, 0.5, 0.3, nil, nil, nil, "", false, true)
end

function Quest72276:OnSubStart7227611(arg1)
    print("OnSubStart7227611")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20548Data.id, 1)
end

function Quest72276:OnSubFinish7227611(arg1)
    print("OnSubFinish7227611")
end

function Quest72276:OnSubFailed7227611(arg1)
    print("OnSubFailed7227611")
    self:ShowBlackScreen(0.3, 0.5, 0.3, nil, nil, nil, "", false, true)
end

function Quest72276:OnSubStart7227612(arg1)
    print("OnSubStart7227612")
    self:CreateQuestNpc(arg1, npcs.Npc30108Data.id, 1)
end

function Quest72276:OnSubFinish7227612(arg1)
    print("OnSubFinish7227612")
    self:NpcDestroyWithBlackscreen(7, npcs.Npc30108Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20548Data.alias, 7)
end

return Quest72276
