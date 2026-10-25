require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12013 = class("Quest12013", QuestActorProxy)
Quest12013.defaultAlias = "Quest12013"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest12013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest12013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1201310"] = self.OnSubStart1201310,
        ["1201301"] = self.OnSubStart1201301,
        ["1201311"] = self.OnSubStart1201311,
        ["1201302"] = self.OnSubStart1201302,
        ["1201303"] = self.OnSubStart1201303,
        ["1201304"] = self.OnSubStart1201304,
        ["1201305"] = self.OnSubStart1201305,
        ["1201306"] = self.OnSubStart1201306,
        ["1201307"] = self.OnSubStart1201307,
        ["1201308"] = self.OnSubStart1201308,
        ["1201312"] = self.OnSubStart1201312,
        ["1201309"] = self.OnSubStart1201309
    }
end

function Quest12013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1201310"] = self.OnSubFinish1201310,
        ["1201301"] = self.OnSubFinish1201301,
        ["1201311"] = self.OnSubFinish1201311,
        ["1201302"] = self.OnSubFinish1201302,
        ["1201303"] = self.OnSubFinish1201303,
        ["1201304"] = self.OnSubFinish1201304,
        ["1201305"] = self.OnSubFinish1201305,
        ["1201306"] = self.OnSubFinish1201306,
        ["1201307"] = self.OnSubFinish1201307,
        ["1201308"] = self.OnSubFinish1201308,
        ["1201312"] = self.OnSubFinish1201312,
        ["1201309"] = self.OnSubFinish1201309
    }
end

function Quest12013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1201310"] = self.OnSubFailed1201310,
        ["1201301"] = self.OnSubFailed1201301,
        ["1201311"] = self.OnSubFailed1201311,
        ["1201302"] = self.OnSubFailed1201302,
        ["1201303"] = self.OnSubFailed1201303,
        ["1201304"] = self.OnSubFailed1201304,
        ["1201305"] = self.OnSubFailed1201305,
        ["1201306"] = self.OnSubFailed1201306,
        ["1201307"] = self.OnSubFailed1201307,
        ["1201308"] = self.OnSubFailed1201308,
        ["1201312"] = self.OnSubFailed1201312,
        ["1201309"] = self.OnSubFailed1201309
    }
end

function Quest12013:Start()
    print("Start")
end

function Quest12013:OnDestroy()
    print("OnDestroy")
end

function Quest12013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12013:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1201307 then
        print("in_1201307------------------")
        self:UnSpawn(gadgets.Gadget70710409Data.alias)
    elseif arg1 == 2 then
    end
end

function Quest12013:Narrator_1201301()
    print("Narrator_1201301")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201301)
end

function Quest12013:Narrator_1201302()
    print("Narrator_1201302")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201302)
end

function Quest12013:Narrator_1201303()
    print("Narrator_1201303")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1201303)
end

function Quest12013:OnSubStart1201310(arg1)
    print("OnSubStart1201310")
    self:CreateQuestNpc(arg1, npcs.Npc12027Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12028Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12029Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc3035Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12052Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12030Data.id, 10)
    self:CreateQuestNpc(arg1, npcs.Npc3094Data.id, 11)
    actorMgr:CreateActorWithPos("Q12013Trigger_Children", "Actor/Gadget/Q12013Trigger_Children", 70900002, 0, sceneData:GetDummyPoint(3, "Q12013_Yoimiya_Childrens_Pos").pos, sceneData:GetDummyPoint(3, "Q12013_Yoimiya_Childrens_Pos").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
end

function Quest12013:OnSubFinish1201310(arg1)
    print("OnSubFinish1201310")
    self:ActionSafeCall(self.Narrator_1201301)
end

function Quest12013:OnSubFailed1201310(arg1)
    print("OnSubFailed1201310")
end

function Quest12013:OnSubStart1201301(arg1)
    print("OnSubStart1201301")
    self:NotifyTo(npcs.Npc3036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
end

function Quest12013:OnSubFinish1201301(arg1)
    print("OnSubFinish1201301")
    self:SafeDestroyQuestNpc(npcs.Npc12027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12028Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12029Data.alias, 3)
    self:ActionSafeCall(self.Narrator_1201302)
end

function Quest12013:OnSubFailed1201301(arg1)
    print("OnSubFailed1201301")
end

function Quest12013:OnSubStart1201311(arg1)
    print("OnSubStart1201311")
    self:CreateQuestNpc(arg1, npcs.Npc12031Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12032Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12033Data.id, 4)
    actorMgr:CreateActorWithPos("Q12013Trigger_Battle", "Actor/Gadget/Q12013Trigger_Battle", 70900002, 0, sceneData:GetDummyPoint(3, "Q12013_Battle1_Pos").pos, sceneData:GetDummyPoint(3, "Q12013_Battle1_Pos").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
end

function Quest12013:OnSubFinish1201311(arg1)
    print("OnSubFinish1201311")
    self:ActionSafeCall(self.Narrator_1201303)
end

function Quest12013:OnSubFailed1201311(arg1)
    print("OnSubFailed1201311")
end

function Quest12013:OnSubStart1201302(arg1)
    print("OnSubStart1201302")
    self:NotifyTo(npcs.Npc3036Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
end

function Quest12013:OnSubFinish1201302(arg1)
    print("OnSubFinish1201302")
    self:SafeDestroyQuestNpc(npcs.Npc12031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3035Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12052Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12033Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3036Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3037Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3066Data.alias, 0, true)
end

function Quest12013:OnSubFailed1201302(arg1)
    print("OnSubFailed1201302")
end

function Quest12013:OnSubStart1201303(arg1)
    print("OnSubStart1201303")
    actorMgr:CreateActorWithPos("Q12013Trigger_Battle_Out", "Actor/Gadget/Q12013Trigger_Battle_Out", 70900002, 0, sceneData:GetDummyPoint(3, "Q12013_Battle1_Pos").pos, sceneData:GetDummyPoint(3, "Q12013_Battle1_Pos").rot, true, false, 3)
    print("1201303 Start: Trigger Create")
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, "Q12013_Battle1_Pos").pos
    if 80 < M.Dist(pos, avatarPos) then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(true, nil)
        end
    end
end

function Quest12013:OnSubFinish1201303(arg1)
    print("OnSubFinish1201303")
    actorMgr:DestroyEntityActor(datas.Q12013Trigger_Battle_Out.alias, 3, false)
end

function Quest12013:OnSubFailed1201303(arg1)
    print("OnSubFailed1201303")
    actorMgr:DestroyEntityActor(datas.Q12013Trigger_Battle_Out.alias, 3, false)
end

function Quest12013:OnSubStart1201304(arg1)
    print("OnSubStart1201304")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.3, 0.4, 0.3, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12031Data.id, 1)
            arg1_2:RequestInteraction(npcs.Npc12031Data.alias)
        end, nil, nil, "")
    end)
end

function Quest12013:OnSubFinish1201304(arg1)
    print("OnSubFinish1201304")
    self:SafeDestroyQuestNpc(npcs.Npc12031Data.alias, 3)
end

function Quest12013:OnSubFailed1201304(arg1)
    print("OnSubFailed1201304")
end

function Quest12013:OnSubStart1201305(arg1)
    print("OnSubStart1201305")
    self:CreateQuestNpc(arg1, npcs.Npc12025Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12025Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12026Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12026Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:UnSpawn(gadgets.Gadget70710409Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710409Data.id, 1, 0)
    actorMgr:CreateActorWithPos("Q12013Trigger_Battle2", "Actor/Gadget/Q12013Trigger_Battle2", 70900002, 0, sceneData:GetDummyPoint(3, "Q12013_Keisuke_Pos").pos, sceneData:GetDummyPoint(3, "Q12013_Keisuke_Pos").rot, true, false, 3)
end

function Quest12013:OnSubFinish1201305(arg1)
    print("OnSubFinish1201305")
    self:SafeDestroyQuestNpc(npcs.Npc12025Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12026Data.alias, 3)
end

function Quest12013:OnSubFailed1201305(arg1)
    print("OnSubFailed1201305")
end

function Quest12013:OnSubStart1201306(arg1)
    print("OnSubStart1201306")
    actorMgr:CreateActorWithPos("Q12013Trigger_Battle2_Out", "Actor/Gadget/Q12013Trigger_Battle2_Out", 70900002, 0, sceneData:GetDummyPoint(3, "Q12013_Keisuke_Pos").pos, sceneData:GetDummyPoint(3, "Q12013_Keisuke_Pos").rot, true, false, 3)
    print("1201306 Start: Trigger Create")
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, "Q12013_Keisuke_Pos").pos
    if 80 < M.Dist(pos, avatarPos) then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(true, nil)
        end
    end
end

function Quest12013:OnSubFinish1201306(arg1)
    print("OnSubFinish1201306")
    actorMgr:DestroyEntityActor(datas.Q12013Trigger_Battle2_Out.alias, 3, false)
end

function Quest12013:OnSubFailed1201306(arg1)
    print("OnSubFailed1201306")
    actorMgr:DestroyEntityActor(datas.Q12013Trigger_Battle2_Out.alias, 3, false)
end

function Quest12013:OnSubStart1201307(arg1)
    print("OnSubStart1201307")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.3, 0.4, 0.3, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12026Data.id, 3)
            arg1_2:RequestInteraction(npcs.Npc12026Data.alias)
        end, nil, nil, "")
    end)
end

function Quest12013:OnSubFinish1201307(arg1)
    print("OnSubFinish1201307")
    self:SafeDestroyQuestNpc(npcs.Npc12025Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12026Data.alias, 3)
end

function Quest12013:OnSubFailed1201307(arg1)
    print("OnSubFailed1201307")
end

function Quest12013:OnSubStart1201308(arg1)
    print("OnSubStart1201308")
    globalActor:LeaveWeather()
    actorMgr:CreateActorWithPos("Q12013Trigger_Final", "Actor/Gadget/Q12013Trigger_Final", 70900002, 0, sceneData:GetDummyPoint(3, "Q12013_Finial_Pos").pos, sceneData:GetDummyPoint(3, "Q12013_Finial_Pos").rot, true, false, 3)
end

function Quest12013:OnSubFinish1201308(arg1)
    print("OnSubFinish1201308")
end

function Quest12013:OnSubFailed1201308(arg1)
    print("OnSubFailed1201308")
end

function Quest12013:OnSubStart1201312(arg1)
    print("OnSubStart1201312")
    self:PlayCutsceneIndex("1201308", function(arg1)
        globalActor:LeaveWeather()
        arg1:FinishQuestID(false, 1201312)
    end, function(arg1)
        globalActor:ChangeWeather("BigWorld/Weather_Dq_Overcast_General")
    end, function(arg1)
        globalActor:LeaveWeather()
    end, false)
end

function Quest12013:OnSubFinish1201312(arg1)
    print("OnSubFinish1201312")
end

function Quest12013:OnSubFailed1201312(arg1)
    print("OnSubFailed1201312")
end

function Quest12013:OnSubStart1201309(arg1)
    print("OnSubStart1201309")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc1035Data.alias)
    end, nil, nil, "")
end

function Quest12013:OnSubFinish1201309(arg1)
    print("OnSubFinish1201309")
    self:SafeDestroyQuestNpc(npcs.Npc12030Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3094Data.alias, 3)
end

function Quest12013:OnSubFailed1201309(arg1)
    print("OnSubFailed1201309")
end

return Quest12013
