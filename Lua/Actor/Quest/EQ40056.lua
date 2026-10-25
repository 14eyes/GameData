require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40056 = class("Quest40056", QuestActorProxy)
Quest40056.defaultAlias = "Quest40056"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40056:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40056:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4005601"] = self.OnSubStart4005601,
        ["4005602"] = self.OnSubStart4005602,
        ["4005603"] = self.OnSubStart4005603,
        ["4005604"] = self.OnSubStart4005604,
        ["4005605"] = self.OnSubStart4005605,
        ["4005612"] = self.OnSubStart4005612,
        ["4005613"] = self.OnSubStart4005613,
        ["4005614"] = self.OnSubStart4005614,
        ["4005615"] = self.OnSubStart4005615,
        ["4005616"] = self.OnSubStart4005616,
        ["4005617"] = self.OnSubStart4005617,
        ["4005618"] = self.OnSubStart4005618,
        ["4005606"] = self.OnSubStart4005606,
        ["4005607"] = self.OnSubStart4005607,
        ["4005608"] = self.OnSubStart4005608,
        ["4005619"] = self.OnSubStart4005619,
        ["4005620"] = self.OnSubStart4005620,
        ["4005609"] = self.OnSubStart4005609,
        ["4005621"] = self.OnSubStart4005621,
        ["4005610"] = self.OnSubStart4005610,
        ["4005622"] = self.OnSubStart4005622
    }
end

function Quest40056:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4005601"] = self.OnSubFinish4005601,
        ["4005602"] = self.OnSubFinish4005602,
        ["4005603"] = self.OnSubFinish4005603,
        ["4005604"] = self.OnSubFinish4005604,
        ["4005605"] = self.OnSubFinish4005605,
        ["4005612"] = self.OnSubFinish4005612,
        ["4005613"] = self.OnSubFinish4005613,
        ["4005614"] = self.OnSubFinish4005614,
        ["4005615"] = self.OnSubFinish4005615,
        ["4005616"] = self.OnSubFinish4005616,
        ["4005617"] = self.OnSubFinish4005617,
        ["4005618"] = self.OnSubFinish4005618,
        ["4005606"] = self.OnSubFinish4005606,
        ["4005607"] = self.OnSubFinish4005607,
        ["4005608"] = self.OnSubFinish4005608,
        ["4005619"] = self.OnSubFinish4005619,
        ["4005620"] = self.OnSubFinish4005620,
        ["4005609"] = self.OnSubFinish4005609,
        ["4005621"] = self.OnSubFinish4005621,
        ["4005610"] = self.OnSubFinish4005610,
        ["4005622"] = self.OnSubFinish4005622
    }
end

function Quest40056:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40056:Start()
    print("Start")
end

function Quest40056:OnDestroy()
    print("OnDestroy")
end

function Quest40056:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40056:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40056:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc30139Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3000Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30140Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1627Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30154Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30155Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3007Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30156Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc30157Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc30141Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30142Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3190Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30186Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4005602Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005605Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005607Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005608Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005610Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005613Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005619Trigger", 3, false)
end

function Quest40056:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest40056:OnSubStart4005601(arg1)
    print("OnSubStart4005601")
end

function Quest40056:OnSubFinish4005601(arg1)
    print("OnSubFinish4005601")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4005601)
end

function Quest40056:OnSubStart4005602(arg1)
    print("OnSubStart4005602")
    actorMgr:CreateActorWithPos("Q4005602Trigger", "Actor/Gadget/Q4005602Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005501_MaTou").pos, sceneData:GetDummyPoint(3, "Q4005501_MaTou").rot, true, false, 3)
end

function Quest40056:OnSubFinish4005602(arg1)
    print("OnSubFinish4005602")
end

function Quest40056:OnSubStart4005603(arg1)
    print("OnSubStart4005603")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1627Data.id, 2, npcs.Npc1627Data.alias)
end

function Quest40056:OnSubFinish4005603(arg1)
    print("OnSubFinish4005603")
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1627Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30154Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30155Data.alias, 3)
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest40056:OnSubStart4005604(arg1)
    print("OnSubStart4005604")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1018Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest40056:OnSubFinish4005604(arg1)
    print("OnSubFinish4005604")
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1627Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30154Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30155Data.alias, 3)
end

function Quest40056:OnSubStart4005605(arg1)
    print("OnSubStart4005605")
    actorMgr:CreateActorWithPos("Q4005605Trigger", "Actor/Gadget/Q4005605Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005707_OutSideWuYouTing").pos, sceneData:GetDummyPoint(3, "Q4005707_OutSideWuYouTing").rot, true, false, 3)
end

function Quest40056:OnSubFinish4005605(arg1)
    print("OnSubFinish4005605")
end

function Quest40056:OnSubStart4005612(arg1)
    print("OnSubStart4005612")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1018Data.id, 2, npcs.Npc1018Data.alias)
end

function Quest40056:OnSubFinish4005612(arg1)
    print("OnSubFinish4005612")
end

function Quest40056:OnSubStart4005613(arg1)
    print("OnSubStart4005613")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc30156Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc30157Data.id, 4)
    actorMgr:CreateActorWithPos("Q4005613Trigger", "Actor/Gadget/Q4005613Trigger", 70900002, 0, sceneData:GetDummyPoint(1066, "Q4005605_guide").pos, sceneData:GetDummyPoint(1066, "Q4005605_guide").rot, true, false, 1066)
    self:GetQuestNpcActor(npcs.Npc30156Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc30157Data.alias):SitOnChair(0)
end

function Quest40056:OnSubFinish4005613(arg1)
    print("OnSubFinish4005613")
end

function Quest40056:OnSubStart4005614(arg1)
    print("OnSubStart4005614")
end

function Quest40056:OnSubFinish4005614(arg1)
    print("OnSubFinish4005614")
end

function Quest40056:OnSubStart4005615(arg1)
    print("OnSubStart4005615")
end

function Quest40056:OnSubFinish4005615(arg1)
    print("OnSubFinish4005615")
end

function Quest40056:OnSubStart4005616(arg1)
    print("OnSubStart4005616")
end

function Quest40056:OnSubFinish4005616(arg1)
    print("OnSubFinish4005616")
end

function Quest40056:OnSubStart4005617(arg1)
    print("OnSubStart4005617")
end

function Quest40056:OnSubFinish4005617(arg1)
    print("OnSubFinish4005617")
end

function Quest40056:OnSubStart4005618(arg1)
    print("OnSubStart4005618")
    self:GetQuestNpcActor(npcs.Npc30156Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc30157Data.alias):SitOnChair(0)
end

function Quest40056:OnSubFinish4005618(arg1)
    print("OnSubFinish4005618")
    self:SafeDestroyQuestNpc(npcs.Npc30156Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc30157Data.alias, 1066)
    self:ShowBlackScreen(0.5, 2, 0, nil, nil, nil, "", false, true)
end

function Quest40056:OnSubStart4005606(arg1)
    print("OnSubStart4005606")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc10045Data.id, 1, npcs.Npc10045Data.alias)
end

function Quest40056:OnSubFinish4005606(arg1)
    print("OnSubFinish4005606")
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3007Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1066)
end

function Quest40056:OnSubStart4005607(arg1)
    print("OnSubStart4005607")
    self:CreateQuestNpc(arg1, npcs.Npc30139Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc30141Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc30142Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc3029Data.id, 8)
    actorMgr:CreateActorWithPos("Q4005607Trigger", "Actor/Gadget/Q4005607Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005607_TingFengXing").pos, sceneData:GetDummyPoint(3, "Q4005607_TingFengXing").rot, true, false, 3)
end

function Quest40056:OnSubFinish4005607(arg1)
    print("OnSubFinish4005607")
end

function Quest40056:OnSubStart4005608(arg1)
    print("OnSubStart4005608")
    actorMgr:CreateActorWithPos("Q4005608Trigger", "Actor/Gadget/Q4005608Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005607_N1038").pos, sceneData:GetDummyPoint(3, "Q4005607_N1038").rot, true, false, 3)
end

function Quest40056:OnSubFinish4005608(arg1)
    print("OnSubFinish4005608")
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30139Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30141Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30142Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc3029Data.alias, 3)
end

function Quest40056:OnSubStart4005619(arg1)
    print("OnSubStart4005619")
    self:CreateQuestNpc(arg1, npcs.Npc3000Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc3190Data.id, 5)
    actorMgr:CreateActorWithPos("Q4005619Trigger", "Actor/Gadget/Q4005619Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005505_guide_YuanGuoJianSi").pos, sceneData:GetDummyPoint(3, "Q4005505_guide_YuanGuoJianSi").rot, true, false, 3)
end

function Quest40056:OnSubFinish4005619(arg1)
    print("OnSubFinish4005619")
end

function Quest40056:OnSubStart4005620(arg1)
    print("OnSubStart4005620")
    self:RequestInteraction(npcs.Npc3000Data.alias)
end

function Quest40056:OnSubFinish4005620(arg1)
    print("OnSubFinish4005620")
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30139Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3000Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3190Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1066)
end

function Quest40056:OnSubStart4005609(arg1)
    print("OnSubStart4005609")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(400560901, function(arg1)
            actorUtils.FinishQuestID(false, 4005609)
        end, nil, nil, false)
    end)
end

function Quest40056:OnSubFinish4005609(arg1)
    print("OnSubFinish4005609")
end

function Quest40056:OnSubStart4005621(arg1)
    print("OnSubStart4005621")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:LevelLoadFinishSafeCall(function(arg1_2)
            arg1_2:TransmitPlayerById(arg1, 4005621)
            actorMgr:CreateActorWithPos("Q4005621Trigger", "Actor/Gadget/Q4005621Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005610_guide").pos, sceneData:GetDummyPoint(3, "Q4005610_guide").rot, true, false, 3)
        end)
    end, nil, nil, "", false, true)
end

function Quest40056:OnSubFinish4005621(arg1)
    print("OnSubFinish4005621")
end

function Quest40056:OnSubStart4005610(arg1)
    print("OnSubStart4005610")
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
    actorMgr:CreateActorWithPos("Q4005610Trigger", "Actor/Gadget/Q4005610Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005611_N1005").pos, sceneData:GetDummyPoint(3, "Q4005611_N1005").rot, true, false, 3)
end

function Quest40056:OnSubFinish4005610(arg1)
    print("OnSubFinish4005610")
    self:SafeDestroyQuestNpc(npcs.Npc30140Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30186Data.alias, 3)
    self:CallDelay(5, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("IrodoriMainPage", 4005610)
        end)
    end)

    self:GetQuestNpcActor(npcs.Npc10045Data.alias):DestroyWithDisappear(false)
end

function Quest40056:OnSubStart4005622(arg1)
    print("OnSubStart4005622")
end

function Quest40056:OnSubFinish4005622(arg1)
    print("OnSubFinish4005622")
end

return Quest40056
