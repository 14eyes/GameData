require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19143 = class("Quest19143", QuestActorProxy)
Quest19143.defaultAlias = "Quest19143"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19143:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19143:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1914303"] = self.OnSubStart1914303,
        ["1914301"] = self.OnSubStart1914301,
        ["1914302"] = self.OnSubStart1914302,
        ["1914306"] = self.OnSubStart1914306,
        ["1914304"] = self.OnSubStart1914304,
        ["1914305"] = self.OnSubStart1914305,
        ["1914307"] = self.OnSubStart1914307,
        ["1914309"] = self.OnSubStart1914309,
        ["1914308"] = self.OnSubStart1914308
    }
end

function Quest19143:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1914303"] = self.OnSubFinish1914303,
        ["1914301"] = self.OnSubFinish1914301,
        ["1914302"] = self.OnSubFinish1914302,
        ["1914306"] = self.OnSubFinish1914306,
        ["1914304"] = self.OnSubFinish1914304,
        ["1914305"] = self.OnSubFinish1914305,
        ["1914307"] = self.OnSubFinish1914307,
        ["1914309"] = self.OnSubFinish1914309,
        ["1914308"] = self.OnSubFinish1914308
    }
end

function Quest19143:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19143:Start()
    print("Start")
end

function Quest19143:OnDestroy()
    print("OnDestroy")
end

function Quest19143:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19143:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19143:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3038Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12509Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12510Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12511Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12539Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12540Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3018Data.alias, 3)
    actorMgr:DestroyEntityActor("Q1914301Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1914306Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1914307Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1914309Trigger", 3, false)
end

function Quest19143:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19143:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("stopvoice=============1")
        self:ClearSpeechBubbleTask()
        self:CallDelay(5, function(arg1)
            arg1:ClearSpeechBubbleTask()
        end)
    end
end

function Quest19143:OnSubStart1914303(arg1)
    print("OnSubStart1914303")
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914302)
end

function Quest19143:OnSubFinish1914303(arg1)
    print("OnSubFinish1914303")
end

function Quest19143:OnSubStart1914301(arg1)
    print("OnSubStart1914301")
    self:CreateQuestNpc(arg1, npcs.Npc3038Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc3038Data.alias):DoFreeStyle(1090, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12540Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12540Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc3018Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12278Data.alias):EnableHeadCtrl(false)
    actorMgr:CreateActorWithPos("Q1914301Trigger", "Actor/Gadget/Q1914301Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914301_C1914301_N3038").pos, sceneData:GetDummyPoint(3, "Q1914301_C1914301_N3038").rot, true, false, 3)
end

function Quest19143:OnSubFinish1914301(arg1)
    print("OnSubFinish1914301")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:ActorDestroy("Q1914301Trigger")
end

function Quest19143:OnSubStart1914302(arg1)
    print("OnSubStart1914302")
    self:CreateQuestNpc(arg1, npcs.Npc3038Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc3038Data.alias):DoFreeStyle(1090, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12540Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest19143:OnSubFinish1914302(arg1)
    print("OnSubFinish1914302")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12540Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3038Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 19143)
    end)
end

function Quest19143:OnSubStart1914306(arg1)
    print("OnSubStart1914306")
    self:CreateQuestNpc(arg1, npcs.Npc12509Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12510Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12511Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12539Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12539Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914305)
    self:GetQuestNpcActor(npcs.Npc12509Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12510Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12511Data.alias):EnableHeadCtrl(false)
    actorMgr:CreateActorWithPos("Q1914306Trigger", "Actor/Gadget/Q1914306Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914304_C1914304_N12510").pos, sceneData:GetDummyPoint(3, "Q1914304_C1914304_N12510").rot, true, false, 3)
end

function Quest19143:OnSubFinish1914306(arg1)
    print("OnSubFinish1914306")
    self:SafeDestroyQuestNpc(npcs.Npc12509Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12510Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12511Data.alias, 3)
    self:ActorDestroy("Q1914307Trigger")
end

function Quest19143:OnSubStart1914304(arg1)
    print("OnSubStart1914304")
end

function Quest19143:OnSubFinish1914304(arg1)
    print("OnSubFinish1914304")
end

function Quest19143:OnSubStart1914305(arg1)
    print("OnSubStart1914305")
    self:GetQuestNpcActor(npcs.Npc12539Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest19143:OnSubFinish1914305(arg1)
    print("OnSubFinish1914305")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12539Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 19145)
    end)
end

function Quest19143:OnSubStart1914307(arg1)
    print("OnSubStart1914307")
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914307)
    actorMgr:CreateActorWithPos("Q1914307Trigger", "Actor/Gadget/Q1914307Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914307_guide").pos, sceneData:GetDummyPoint(3, "Q1914307_guide").rot, true, false, 3)
end

function Quest19143:OnSubFinish1914307(arg1)
    print("OnSubFinish1914307")
end

function Quest19143:OnSubStart1914309(arg1)
    print("OnSubStart1914309")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_ShinobuData.alias)
    questNpcActor:DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 2)
    local v = self:GetQuestNpcActor(npcs.Npc12277Data.alias)
    v:DoFreeStyle(1160, true, nil, true, true, false)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12278Data.alias)
    questNpcActor2:DoFreeStyle(1160, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914309)
    questNpcActor:EnableHeadCtrl(false)
    v:EnableHeadCtrl(false)
    questNpcActor2:EnableHeadCtrl(false)
    actorMgr:CreateActorWithPos("Q1914309Trigger", "Actor/Gadget/Q1914309Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914309_C1914309_N12276").pos, sceneData:GetDummyPoint(3, "Q1914309_C1914309_N12276").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):EnableHeadCtrl(false)
end

function Quest19143:OnSubFinish1914309(arg1)
    print("OnSubFinish1914309")
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
end

function Quest19143:OnSubStart1914308(arg1)
    print("OnSubStart1914308")
end

function Quest19143:OnSubFinish1914308(arg1)
    print("OnSubFinish1914308")
end

return Quest19143
