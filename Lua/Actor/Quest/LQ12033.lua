require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12033 = class("Quest12033", QuestActorProxy)
Quest12033.defaultAlias = "Quest12033"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12033:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1203301"] = self.OnSubStart1203301,
        ["1203302"] = self.OnSubStart1203302,
        ["1203303"] = self.OnSubStart1203303,
        ["1203304"] = self.OnSubStart1203304,
        ["1203305"] = self.OnSubStart1203305,
        ["1203306"] = self.OnSubStart1203306,
        ["1203307"] = self.OnSubStart1203307,
        ["1203312"] = self.OnSubStart1203312,
        ["1203308"] = self.OnSubStart1203308,
        ["1203309"] = self.OnSubStart1203309,
        ["1203310"] = self.OnSubStart1203310,
        ["1203311"] = self.OnSubStart1203311,
        ["1203313"] = self.OnSubStart1203313
    }
end

function Quest12033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1203301"] = self.OnSubFinish1203301,
        ["1203302"] = self.OnSubFinish1203302,
        ["1203303"] = self.OnSubFinish1203303,
        ["1203304"] = self.OnSubFinish1203304,
        ["1203305"] = self.OnSubFinish1203305,
        ["1203306"] = self.OnSubFinish1203306,
        ["1203307"] = self.OnSubFinish1203307,
        ["1203312"] = self.OnSubFinish1203312,
        ["1203308"] = self.OnSubFinish1203308,
        ["1203309"] = self.OnSubFinish1203309,
        ["1203310"] = self.OnSubFinish1203310,
        ["1203311"] = self.OnSubFinish1203311,
        ["1203313"] = self.OnSubFinish1203313
    }
end

function Quest12033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12033:Start()
    print("Start")
end

function Quest12033:OnDestroy()
    print("OnDestroy")
end

function Quest12033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12033:CheckDistance()
    print("CheckDistance")
    if self:GetSubQuestState(1203307) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc3054Data.alias)
        local pos = questNpcActor:GetPos()
        local dist = M.Dist(pos, avatarPos)
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        if dist < 10 then
            questNpcActor:TurnTo(tbl)
            questNpcActor:DoFreeStyle(1200)
        else
            self:CallDelay(1, self.NormalCheck)
        end
    end
end

function Quest12033:NormalCheck()
    print("NormalCheck")
    self:CheckDistance()
end

function Quest12033:OnSubStart1203301(arg1)
    print("OnSubStart1203301")
    actorMgr:CreateActorWithPos("Q12033Trigger", "Actor/Gadget/Q12033Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203301_N12077").pos, sceneData:GetDummyPoint(3, "Q1203301_N12077").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12077Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc12077Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12485Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3173Data.id, 0)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
end

function Quest12033:OnSubFinish1203301(arg1)
    print("OnSubFinish1203301")
end

function Quest12033:OnSubStart1203302(arg1)
    print("OnSubStart1203302")
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12077Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q12033Trigger6", "Actor/Gadget/Q12033Trigger6", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203301_N12077").pos, sceneData:GetDummyPoint(3, "Q1203301_N12077").rot, true, false, 3)
end

function Quest12033:OnSubFinish1203302(arg1)
    print("OnSubFinish1203302")
    self:DestroyQuestNpcActor(npcs.Npc12077Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12485Data.alias, 3)
end

function Quest12033:OnSubStart1203303(arg1)
    print("OnSubStart1203303")
    actorMgr:CreateActorWithPos("Q12033Trigger1", "Actor/Gadget/Q12033Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203303_guide").pos, sceneData:GetDummyPoint(3, "Q1203303_guide").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3099Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
end

function Quest12033:OnSubFinish1203303(arg1)
    print("OnSubFinish1203303")
end

function Quest12033:OnSubStart1203304(arg1)
    print("OnSubStart1203304")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1047Data.id, 0)
        arg1_2:NotifyTo(npcs.Npc3099Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc3016Data.alias, 1, true)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12077Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc12485Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest12033:OnSubFinish1203304(arg1)
    print("OnSubFinish1203304")
end

function Quest12033:OnSubStart1203305(arg1)
    print("OnSubStart1203305")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:NotifyTo(npcs.Npc3099Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc3016Data.alias, 1, true)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12077Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc12485Data.alias):DisableInteeHeadCtrl(true)
        if sceneData.currSceneID == 1061 then
            arg1_2:PlayCutsceneIndex(120330501, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, npcs.Npc1047Data.id, 0)
                arg1_2:RequestInteraction(npcs.Npc1047Data.alias)
            end, function(arg1)
                globalActor:ChangeDay24Time(20, false)
            end, nil, true)
        end
    end)
end

function Quest12033:OnSubFinish1203305(arg1)
    print("OnSubFinish1203305")
    self:DestroyQuestNpcActor(npcs.Npc1047Data.alias, 3)
end

function Quest12033:OnSubStart1203306(arg1)
    print("OnSubStart1203306")
    self:NotifyTo(npcs.Npc3099Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12077Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12485Data.alias):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q12033Trigger9", "Actor/Gadget/Q12033Trigger9", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203303_N12077").pos, sceneData:GetDummyPoint(3, "Q1203303_N12077").rot, true, false, 3)
end

function Quest12033:OnSubFinish1203306(arg1)
    print("OnSubFinish1203306")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12077Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12485Data.alias):DisableInteeHeadCtrl(false)
    self:DestroyQuestNpcActor(npcs.Npc12077Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12485Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1033Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3099Data.alias, 0, true)
end

function Quest12033:OnSubStart1203307(arg1)
    print("OnSubStart1203307")
    self:CreateQuestNpc(arg1, npcs.Npc3054Data.id, 0)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3057Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc3054Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CheckDistance()
end

function Quest12033:OnSubFinish1203307(arg1)
    print("OnSubFinish1203307")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3)
        arg1_2:DestroyQuestNpcActor(npcs.Npc12077Data.alias, 3)
        arg1_2:LightNotifyTo(npcs.Npc3057Data.alias, 0, true)
    end)
end

function Quest12033:OnSubStart1203312(arg1)
    print("OnSubStart1203312")
    actorMgr:CreateActorWithPos("Q12033Trigger3", "Actor/Gadget/Q12033Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203312_N1047").pos, sceneData:GetDummyPoint(3, "Q1203312_N1047").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
end

function Quest12033:OnSubFinish1203312(arg1)
    print("OnSubFinish1203312")
    self:DestroyQuestNpcActor(npcs.Npc1047Data.alias, 3)
end

function Quest12033:OnSubStart1203308(arg1)
    print("OnSubStart1203308")
    self:CreateQuestNpc(arg1, npcs.Npc12445Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc12445Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12446Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12484Data.id, 0)
    actorMgr:CreateActorWithPos("Q12033Trigger2", "Actor/Gadget/Q12033Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203308_N12445").pos, sceneData:GetDummyPoint(3, "Q1203308_N12445").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3086Data.alias, 1, true)
end

function Quest12033:OnSubFinish1203308(arg1)
    print("OnSubFinish1203308")
    self:DestroyQuestNpcActor(npcs.Npc3054Data.alias, 3)
end

function Quest12033:OnSubStart1203309(arg1)
    print("OnSubStart1203309")
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3086Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12445Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q12033Trigger7", "Actor/Gadget/Q12033Trigger7", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203308_N12445").pos, sceneData:GetDummyPoint(3, "Q1203308_N12445").rot, true, false, 3)
end

function Quest12033:OnSubFinish1203309(arg1)
    print("OnSubFinish1203309")
    self:ActionSafeCall(function(arg1)
        local questVar = arg1:GetQuestVar(1203309, 0)
        if questVar == 0 then
            arg1:NarratorOnlyTaskByData(datas.Narrator1, 12033)
        elseif questVar == 1 then
            arg1:NarratorOnlyTaskByData(datas.Narrator2, 12033)
        end
    end)
end

function Quest12033:OnSubStart1203310(arg1)
    print("OnSubStart1203310")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3173Data.alias, 1, true)
        arg1:NotifyTo(npcs.Npc3086Data.alias, 1, true)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12445Data.alias)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc12484Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc12446Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc3173Data.alias):DoFreeStyle(4010, true, nil, true, true, false)
        actorMgr:CreateActorWithPos("Q12033Trigger8", "Actor/Gadget/Q12033Trigger8", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203310_N3173").pos, sceneData:GetDummyPoint(3, "Q1203310_N3173").rot, true, false, 3)
    end)
end

function Quest12033:OnSubFinish1203310(arg1)
    print("OnSubFinish1203310")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12445Data.alias)
        questNpcActor:DoFreeStateTrigger()
        arg1:GetQuestNpcActor(npcs.Npc3173Data.alias):DoFreeStateTrigger()
        questNpcActor:DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12484Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc12446Data.alias):DisableInteeHeadCtrl(false)
        arg1:DestroyQuestNpcActor(npcs.Npc12445Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12446Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12484Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3093Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc3086Data.alias, 0, true)
        arg1:ClearNarratorTask()
        arg1:StopNarrator()
    end)
end

function Quest12033:OnSubStart1203311(arg1)
    print("OnSubStart1203311")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3086Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc3086Data.alias):SitOnChair(0)
        arg1_2:NotifyTo(npcs.Npc3016Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc3093Data.alias, 1, true)
        actorMgr:CreateActorWithPos("Q12033Trigger5", "Actor/Gadget/Q12033Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203311_N3086").pos, sceneData:GetDummyPoint(3, "Q1203311_N3086").rot, true, false, 3)
    end)
end

function Quest12033:OnSubFinish1203311(arg1)
    print("OnSubFinish1203311")
    self:LightNotifyTo(npcs.Npc3093Data.alias, 0, true)
end

function Quest12033:OnSubStart1203313(arg1)
    print("OnSubStart1203313")
    actorMgr:CreateActorWithPos("Q12033Trigger4", "Actor/Gadget/Q12033Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203402_N1047").pos, sceneData:GetDummyPoint(3, "Q1203402_N1047").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
end

function Quest12033:OnSubFinish1203313(arg1)
    print("OnSubFinish1203313")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3086Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc1047Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3173Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc3016Data.alias, 0, true)
    end)
end

return Quest12033
