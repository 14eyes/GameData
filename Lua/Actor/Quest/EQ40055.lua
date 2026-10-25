require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40055 = class("Quest40055", QuestActorProxy)
Quest40055.defaultAlias = "Quest40055"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40055:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40055:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4005510"] = self.OnSubStart4005510,
        ["4005501"] = self.OnSubStart4005501,
        ["4005502"] = self.OnSubStart4005502,
        ["4005503"] = self.OnSubStart4005503,
        ["4005504"] = self.OnSubStart4005504,
        ["4005505"] = self.OnSubStart4005505,
        ["4005506"] = self.OnSubStart4005506,
        ["4005507"] = self.OnSubStart4005507,
        ["4005508"] = self.OnSubStart4005508,
        ["4005509"] = self.OnSubStart4005509,
        ["4005511"] = self.OnSubStart4005511,
        ["4005512"] = self.OnSubStart4005512,
        ["4005513"] = self.OnSubStart4005513
    }
end

function Quest40055:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4005510"] = self.OnSubFinish4005510,
        ["4005501"] = self.OnSubFinish4005501,
        ["4005502"] = self.OnSubFinish4005502,
        ["4005503"] = self.OnSubFinish4005503,
        ["4005504"] = self.OnSubFinish4005504,
        ["4005505"] = self.OnSubFinish4005505,
        ["4005506"] = self.OnSubFinish4005506,
        ["4005507"] = self.OnSubFinish4005507,
        ["4005508"] = self.OnSubFinish4005508,
        ["4005509"] = self.OnSubFinish4005509,
        ["4005511"] = self.OnSubFinish4005511,
        ["4005512"] = self.OnSubFinish4005512,
        ["4005513"] = self.OnSubFinish4005513
    }
end

function Quest40055:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40055:Start()
    print("Start")
end

function Quest40055:OnDestroy()
    print("OnDestroy")
end

function Quest40055:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40055:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40055:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3190Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30141Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30142Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3205Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3206Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3207Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3030Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3084Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3097Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3000Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3091Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3084Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3097Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3091Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4005501Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005503Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005505Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005507Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005508Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005513Trigger", 3, false)
end

function Quest40055:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest40055:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40055:OnSubStart4005510(arg1)
    print("OnSubStart4005510")
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
end

function Quest40055:OnSubFinish4005510(arg1)
    print("OnSubFinish4005510")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4005510)
end

function Quest40055:OnSubStart4005501(arg1)
    print("OnSubStart4005501")
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4005501Trigger", "Actor/Gadget/Q4005501Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005501_MaTou").pos, sceneData:GetDummyPoint(3, "Q4005501_MaTou").rot, true, false, 3)
end

function Quest40055:OnSubFinish4005501(arg1)
    print("OnSubFinish4005501")
end

function Quest40055:OnSubStart4005502(arg1)
    print("OnSubStart4005502")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc3205Data.id, 3, npcs.Npc3205Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
end

function Quest40055:OnSubFinish4005502(arg1)
    print("OnSubFinish4005502")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3205Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3206Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3207Data.alias, 3)
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest40055:OnSubStart4005503(arg1)
    print("OnSubStart4005503")
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4005503Trigger", "Actor/Gadget/Q4005503Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005503_guide").pos, sceneData:GetDummyPoint(3, "Q4005503_guide").rot, true, false, 3)
end

function Quest40055:OnSubFinish4005503(arg1)
    print("OnSubFinish4005503")
end

function Quest40055:OnSubStart4005504(arg1)
    print("OnSubStart4005504")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1018Data.id, 1, npcs.Npc1018Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
end

function Quest40055:OnSubFinish4005504(arg1)
    print("OnSubFinish4005504")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3205Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3206Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3207Data.alias, 3)
end

function Quest40055:OnSubStart4005505(arg1)
    print("OnSubStart4005505")
    self:CreateQuestNpc(arg1, npcs.Npc3190Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc3190Data.alias):DoFreeStyle(1171, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc3030Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc3030Data.alias):DoFreeStyle(1172, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc3029Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc3029Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4005505Trigger", "Actor/Gadget/Q4005505Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005505_guide_YuanGuoJianSi").pos, sceneData:GetDummyPoint(3, "Q4005505_guide_YuanGuoJianSi").rot, true, false, 3)
end

function Quest40055:OnSubFinish4005505(arg1)
    print("OnSubFinish4005505")
end

function Quest40055:OnSubStart4005506(arg1)
    print("OnSubStart4005506")
    self:LightNotifyTo(npcs.Npc3084Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3097Data.alias, 0, true)
    self:RequestInteraction(npcs.Npc3190Data.alias)
end

function Quest40055:OnSubFinish4005506(arg1)
    print("OnSubFinish4005506")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3030Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3029Data.alias, 3)
end

function Quest40055:OnSubStart4005507(arg1)
    print("OnSubStart4005507")
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 2)
    self:GetQuestNpcActor(npcs.WendyData.alias):DoFreeStyle(1240, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1038Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc30141Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc30142Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc3000Data.id, 6)
    actorMgr:CreateActorWithPos("Q4005507Trigger", "Actor/Gadget/Q4005507Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005507_guide").pos, sceneData:GetDummyPoint(3, "Q4005507_guide").rot, true, false, 3)
end

function Quest40055:OnSubFinish4005507(arg1)
    print("OnSubFinish4005507")
end

function Quest40055:OnSubStart4005508(arg1)
    print("OnSubStart4005508")
    actorMgr:CreateActorWithPos("Q4005508Trigger", "Actor/Gadget/Q4005508Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005507_guide").pos, sceneData:GetDummyPoint(3, "Q4005507_guide").rot, true, false, 3)
end

function Quest40055:OnSubFinish4005508(arg1)
    print("OnSubFinish4005508")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30141Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30142Data.alias, 3)
end

function Quest40055:OnSubStart4005509(arg1)
    print("OnSubStart4005509")
    self:RequestInteraction(npcs.Npc3000Data.alias)
end

function Quest40055:OnSubFinish4005509(arg1)
    print("OnSubFinish4005509")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3000Data.alias, 3)
end

function Quest40055:OnSubStart4005511(arg1)
    print("OnSubStart4005511")
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 2)
    self:GetQuestNpcActor(npcs.WendyData.alias):DoFreeStyle(1280, true, nil, true, true, false)
end

function Quest40055:OnSubFinish4005511(arg1)
    print("OnSubFinish4005511")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3190Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
end

function Quest40055:OnSubStart4005512(arg1)
    print("OnSubStart4005512")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(400551201, function(arg1)
            actorUtils.FinishQuestID(false, 4005512)
        end, nil, nil, false)
    end)
end

function Quest40055:OnSubFinish4005512(arg1)
    print("OnSubFinish4005512")
    self:TransmitPlayerById(arg1, 4005512)
end

function Quest40055:OnSubStart4005513(arg1)
    print("OnSubStart4005513")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3091Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4005513Trigger", "Actor/Gadget/Q4005513Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005513_N1018").pos, sceneData:GetDummyPoint(3, "Q4005513_N1018").rot, true, false, 3)
end

function Quest40055:OnSubFinish4005513(arg1)
    print("OnSubFinish4005513")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:CallDelay(5, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("IrodoriMainPage", 4005513)
        end)
    end)

    self:LightNotifyTo(npcs.Npc3091Data.alias, 0, true)
end

return Quest40055
