require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40083 = class("Quest40083", QuestActorProxy)
Quest40083.defaultAlias = "Quest40083"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40083:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40083:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4008301"] = self.OnSubStart4008301,
        ["4008303"] = self.OnSubStart4008303,
        ["4008320"] = self.OnSubStart4008320,
        ["4008322"] = self.OnSubStart4008322,
        ["4008302"] = self.OnSubStart4008302,
        ["4008304"] = self.OnSubStart4008304,
        ["4008316"] = self.OnSubStart4008316,
        ["4008314"] = self.OnSubStart4008314,
        ["4008305"] = self.OnSubStart4008305,
        ["4008306"] = self.OnSubStart4008306,
        ["4008307"] = self.OnSubStart4008307,
        ["4008318"] = self.OnSubStart4008318,
        ["4008319"] = self.OnSubStart4008319,
        ["4008309"] = self.OnSubStart4008309,
        ["4008311"] = self.OnSubStart4008311,
        ["4008321"] = self.OnSubStart4008321,
        ["4008323"] = self.OnSubStart4008323,
        ["4008310"] = self.OnSubStart4008310,
        ["4008312"] = self.OnSubStart4008312,
        ["4008317"] = self.OnSubStart4008317,
        ["4008315"] = self.OnSubStart4008315,
        ["4008313"] = self.OnSubStart4008313,
        ["4008308"] = self.OnSubStart4008308
    }
end

function Quest40083:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4008301"] = self.OnSubFinish4008301,
        ["4008303"] = self.OnSubFinish4008303,
        ["4008320"] = self.OnSubFinish4008320,
        ["4008322"] = self.OnSubFinish4008322,
        ["4008302"] = self.OnSubFinish4008302,
        ["4008304"] = self.OnSubFinish4008304,
        ["4008316"] = self.OnSubFinish4008316,
        ["4008314"] = self.OnSubFinish4008314,
        ["4008305"] = self.OnSubFinish4008305,
        ["4008306"] = self.OnSubFinish4008306,
        ["4008307"] = self.OnSubFinish4008307,
        ["4008318"] = self.OnSubFinish4008318,
        ["4008319"] = self.OnSubFinish4008319,
        ["4008309"] = self.OnSubFinish4008309,
        ["4008311"] = self.OnSubFinish4008311,
        ["4008321"] = self.OnSubFinish4008321,
        ["4008323"] = self.OnSubFinish4008323,
        ["4008310"] = self.OnSubFinish4008310,
        ["4008312"] = self.OnSubFinish4008312,
        ["4008317"] = self.OnSubFinish4008317,
        ["4008315"] = self.OnSubFinish4008315,
        ["4008313"] = self.OnSubFinish4008313,
        ["4008308"] = self.OnSubFinish4008308
    }
end

function Quest40083:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4008320"] = self.OnSubFailed4008320,
        ["4008304"] = self.OnSubFailed4008304,
        ["4008321"] = self.OnSubFailed4008321,
        ["4008312"] = self.OnSubFailed4008312
    }
end

function Quest40083:Start()
    print("Start")
end

function Quest40083:OnDestroy()
    print("OnDestroy")
end

function Quest40083:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40083:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40083:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12855Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12859Data.alias, 47103)
    self:SafeDestroyQuestNpc(npcs.Npc12860Data.alias, 47103)
    self:SafeDestroyQuestNpc(npcs.Npc30253Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30255Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12861Data.alias, 3)
    self:LightNotifyTo(npcs.Npc30253Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc30255Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc12861Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4008322Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008323Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008322Trigger1", 47103, false)
    actorMgr:DestroyEntityActor("Q4008323Trigger1", 47103, false)
    actorMgr:DestroyEntityActor("Q4008302Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008305Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008307Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008309Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008310Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008313Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008316Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008317Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008319Trigger", 3, false)
end

function Quest40083:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest40083:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest40083:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40083:DoFreeState()
    print("DoFreeState")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12859Data.alias)
    local v = self:GetQuestNpcActor(npcs.Npc12860Data.alias)
    questNpcActor:DoFreeStateTrigger()
    v:DoFreeStateTrigger()
end

function Quest40083:RandomFreeStyle()
    print("RandomFreeStyle")
    local subQuestState = self:GetSubQuestState(4008304)
    local v = self:GetSubQuestState(4008312)
    if subQuestState == 2 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12859Data.alias)
        local n = math.random(1, 6)
        if n == 1 then
            questNpcActor:DoFreeStyle(1120, false, nil, true, true, false, false)
        elseif n == 2 then
            questNpcActor:DoFreeStyle(1141, false, nil, true, true, false, false)
        elseif n == 3 then
            questNpcActor:DoFreeStyle(1230, false, nil, true, true, false, false)
        elseif n == 4 then
            questNpcActor:DoFreeStyle(1190, false, nil, true, true, false, false)
        elseif n == 5 then
            questNpcActor:DoFreeStyle(1240, false, nil, true, true, false, false)
        elseif n == 6 then
            questNpcActor:DoFreeStyle(1250, false, nil, true, true, false, false)
        end
    elseif v == 2 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12860Data.alias)
        local n = math.random(1, 6)
        if n == 1 then
            questNpcActor:DoFreeStyle(1120, false, nil, true, true, false, false)
        elseif n == 2 then
            questNpcActor:DoFreeStyle(1141, false, nil, true, true, false, false)
        elseif n == 3 then
            questNpcActor:DoFreeStyle(1230, false, nil, true, true, false, false)
        elseif n == 4 then
            questNpcActor:DoFreeStyle(1190, false, nil, true, true, false, false)
        elseif n == 5 then
            questNpcActor:DoFreeStyle(1240, false, nil, true, true, false, false)
        elseif n == 6 then
            questNpcActor:DoFreeStyle(1250, false, nil, true, true, false, false)
        end
    end
end

function Quest40083:LoopDoFreeStyle()
    print("LoopDoFreeStyle")
    local subQuestState = self:GetSubQuestState(4008304)
    local v = self:GetSubQuestState(4008312)
    if subQuestState == 2 or v == 2 then
        self:RandomFreeStyle()
        self:CallDelay(5, Quest40083.DoFreeState)
        self:CallDelay(10, Quest40083.LoopDoFreeStyle)
    end
end

function Quest40083:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("Accept messages from ability system")
    local subQuestState = self:GetSubQuestState(4008304)
    local v = self:GetSubQuestState(4008312)
    if subQuestState == 2 then
        if arg1.valueString == "OnHalfHP" then
            print("InvokeOnAbilityOnHalfHP")
            self:GetQuestNpcActor(npcs.Npc12859Data.alias):DoFreeStyle(1300, true, nil, true, true, false, false)
            self:ClearNarratorTask()
            self:NarratorOnlyTaskByData(datas.NarratorWithId13, nil, 40083)
            self:CallDelay(6, Quest40083.DoFreeState)
        else
            if arg1.valueString == "OnUnionBurst" then
                print("InvokeOnAbilityOnUnionBurst")
                self:GetQuestNpcActor(npcs.Npc12859Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
                self:ClearNarratorTask()
                self:NarratorOnlyTaskByData(datas.NarratorWithId14, nil, 40083)
                self:CallDelay(6, Quest40083.DoFreeState)
            else
                if arg1.valueString == "OnHeroInCrisis" then
                    print("InvokeOnAbilityOnHeroInCrisis")
                    self:GetQuestNpcActor(npcs.Npc12859Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
                    self:ClearNarratorTask()
                    self:NarratorOnlyTaskByData(datas.NarratorWithId11, nil, 40083)
                    self:CallDelay(6, Quest40083.DoFreeState)
                else
                    if arg1.valueString == "OnHeroUnionBurst" then
                        print("InvokeOnAbilityOnHeroUnionBurst")
                        self:GetQuestNpcActor(npcs.Npc12859Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
                        self:ClearNarratorTask()
                        self:NarratorOnlyTaskByData(datas.NarratorWithId12, nil, 40083)
                        self:CallDelay(6, Quest40083.DoFreeState)
                    end
                end
            end
        end
    elseif v == 2 then
        if arg1.valueString == "OnHalfHP" then
            print("InvokeOnAbilityOnHalfHP")
            self:GetQuestNpcActor(npcs.Npc12860Data.alias):DoFreeStyle(1300, true, nil, true, true, false, false)
            self:ClearNarratorTask()
            self:NarratorOnlyTaskByData(datas.NarratorWithId23, nil, 40083)
            self:CallDelay(6, Quest40083.DoFreeState)
        else
            if arg1.valueString == "OnUnionBurst" then
                print("InvokeOnAbilityOnUnionBurst")
                self:GetQuestNpcActor(npcs.Npc12860Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
                self:ClearNarratorTask()
                self:NarratorOnlyTaskByData(datas.NarratorWithId24, nil, 40083)
                self:CallDelay(6, Quest40083.DoFreeState)
            else
                if arg1.valueString == "OnHeroInCrisis" then
                    print("InvokeOnAbilityOnHeroInCrisis")
                    self:GetQuestNpcActor(npcs.Npc12860Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
                    self:ClearNarratorTask()
                    self:NarratorOnlyTaskByData(datas.NarratorWithId21, nil, 40083)
                    self:CallDelay(6, Quest40083.DoFreeState)
                else
                    if arg1.valueString == "OnHeroUnionBurst" then
                        print("InvokeOnAbilityOnHeroUnionBurst")
                        self:GetQuestNpcActor(npcs.Npc12860Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
                        self:ClearNarratorTask()
                        self:NarratorOnlyTaskByData(datas.NarratorWithId22, nil, 40083)
                        self:CallDelay(6, Quest40083.DoFreeState)
                    end
                end
            end
        end
    end
end

function Quest40083:OnSubStart4008301(arg1)
    print("OnSubStart4008301")
end

function Quest40083:OnSubFinish4008301(arg1)
    print("OnSubFinish4008301")
    self:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 40083)
end

function Quest40083:OnSubStart4008303(arg1)
    print("OnSubStart4008303")
end

function Quest40083:OnSubFinish4008303(arg1)
    print("OnSubFinish4008303")
end

function Quest40083:OnSubStart4008320(arg1)
    print("OnSubStart4008320")
end

function Quest40083:OnSubFinish4008320(arg1)
    print("OnSubFinish4008320")
end

function Quest40083:OnSubFailed4008320(arg1)
    print("OnSubFailed4008320")
    self:SafeDestroyQuestNpc(npcs.Npc12859Data.alias, 47103)
    self:ActorDestroy("Q4008322Trigger")
    self:ActorDestroy("Q4008302Trigger")
    self:ActorDestroy("Q4008316Trigger")
    self:ActorDestroy("Q4008322Trigger1")
end

function Quest40083:OnSubStart4008322(arg1)
    print("OnSubStart4008322")
    actorMgr:CreateActorWithPos("Q4008322Trigger", "Actor/Gadget/Q4008322Trigger", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008206").pos, sceneData:GetDummyPoint(47103, "Q4008206").rot, true, false, 47103)
    self:CallDelay(3, function(arg1)
        actorMgr:CreateActorWithPos("Q4008322Trigger1", "Actor/Gadget/Q4008322Trigger1", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008203_guide").pos, sceneData:GetDummyPoint(47103, "Q4008203_guide").rot, true, false, 47103)
    end)
end

function Quest40083:OnSubFinish4008322(arg1)
    print("OnSubFinish4008322")
    self:ActorDestroy("Q4008322Trigger")
    self:ActorDestroy("Q4008322Trigger1")
end

function Quest40083:OnSubStart4008302(arg1)
    print("OnSubStart4008302")
    self:CreateQuestNpcWithTrigger("Q4008302Trigger", 4008302, npcs.Npc12859Data.id, 0, 25)
end

function Quest40083:OnSubFinish4008302(arg1)
    print("OnSubFinish4008302")
end

function Quest40083:OnSubStart4008304(arg1)
    print("OnSubStart4008304")
    actorUtils.InitFungusFighterBattlePanel(0)
    self:LoopDoFreeStyle()
    self:CreateQuestNpc(arg1, npcs.Npc12859Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc12859Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40083:OnSubFinish4008304(arg1)
    print("OnSubFinish4008304")
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:GetQuestNpcActor(npcs.Npc12859Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40083:OnSubFailed4008304(arg1)
    print("OnSubFailed4008304")
    self:NpcDestroy(npcs.Npc12859Data.alias, 47103)
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId01, 5, nil, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(47103, "Q4008302_N12859").pos, 0, 1, false, false)
    end)
end

function Quest40083:OnSubStart4008316(arg1)
    print("OnSubStart4008316")
    self:CreateQuestNpcWithTriggerBlack("Q4008316Trigger", 4008316, npcs.Npc12859Data.id, 0, 25, 0.5)
    self:UnCallFunc(self.LoopDoFreeStyle)
    self:UnCallFunc(self.RandomFreeStyle)
    self:UnCallFunc(self.DoFreeState)
end

function Quest40083:OnSubFinish4008316(arg1)
    print("OnSubFinish4008316")
    self:NpcDestroyWithBlackscreen(47103, npcs.Npc12859Data.alias)
end

function Quest40083:OnSubStart4008314(arg1)
    print("OnSubStart4008314")
end

function Quest40083:OnSubFinish4008314(arg1)
    print("OnSubFinish4008314")
end

function Quest40083:OnSubStart4008305(arg1)
    print("OnSubStart4008305")
    self:CreateQuestNpcWithTriggerBlack("Q4008305Trigger", 4008305, npcs.Npc1034Data.id, 0, 30, 0.5)
    self:ClearNarratorTask()
end

function Quest40083:OnSubFinish4008305(arg1)
    print("OnSubFinish4008305")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1034Data.alias)
end

function Quest40083:OnSubStart4008306(arg1)
    print("OnSubStart4008306")
end

function Quest40083:OnSubFinish4008306(arg1)
    print("OnSubFinish4008306")
    self:NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 40083)
end

function Quest40083:OnSubStart4008307(arg1)
    print("OnSubStart4008307")
    self:CreateQuestNpcWithTriggerBlack("Q4008307Trigger", 4008307, npcs.PaimonData.id, 0, 5, 0.5)
    self:NotifyTo(npcs.Npc30253Data.alias, 1, true)
    self:NotifyTo(npcs.Npc30255Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12861Data.alias, 1, true)
end

function Quest40083:OnSubFinish4008307(arg1)
    print("OnSubFinish4008307")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:ClearNarratorTask()
end

function Quest40083:OnSubStart4008318(arg1)
    print("OnSubStart4008318")
    self:NotifyTo(npcs.Npc30253Data.alias, 1, true)
    self:NotifyTo(npcs.Npc30255Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12861Data.alias, 1, true)
end

function Quest40083:OnSubFinish4008318(arg1)
    print("OnSubFinish4008318")
end

function Quest40083:OnSubStart4008319(arg1)
    print("OnSubStart4008319")
    self:CreateQuestNpcWithTriggerBlack("Q4008319Trigger", 4008319, npcs.Npc12855Data.id, 0, 20, 0.5)
    self:NotifyTo(npcs.Npc30253Data.alias, 1, true)
    self:NotifyTo(npcs.Npc30255Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12861Data.alias, 1, true)
end

function Quest40083:OnSubFinish4008319(arg1)
    print("OnSubFinish4008319")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12855Data.alias)
end

function Quest40083:OnSubStart4008309(arg1)
    print("OnSubStart4008309")
    self:CreateQuestNpcWithTriggerBlack("Q4008309Trigger", 4008309, npcs.Npc1055Data.id, 0, 10, 0.5)
    self:NotifyTo(npcs.Npc30253Data.alias, 1, true)
    self:NotifyTo(npcs.Npc30255Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12861Data.alias, 1, true)
end

function Quest40083:OnSubFinish4008309(arg1)
    print("OnSubFinish4008309")
    self:NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 40083)
    self:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
    self:LightNotifyTo(npcs.Npc30253Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc30255Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc12861Data.alias, 0, true)
end

function Quest40083:OnSubStart4008311(arg1)
    print("OnSubStart4008311")
end

function Quest40083:OnSubFinish4008311(arg1)
    print("OnSubFinish4008311")
end

function Quest40083:OnSubStart4008321(arg1)
    print("OnSubStart4008321")
end

function Quest40083:OnSubFinish4008321(arg1)
    print("OnSubFinish4008321")
end

function Quest40083:OnSubFailed4008321(arg1)
    print("OnSubFailed4008321")
    self:SafeDestroyQuestNpc(npcs.Npc12860Data.alias, 47103)
    self:ActorDestroy("Q4008323Trigger")
    self:ActorDestroy("Q4008310Trigger")
    self:ActorDestroy("Q4008317Trigger")
    self:ActorDestroy("Q4008323Trigger1")
end

function Quest40083:OnSubStart4008323(arg1)
    print("OnSubStart4008323")
    actorMgr:CreateActorWithPos("Q4008323Trigger", "Actor/Gadget/Q4008323Trigger", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008206").pos, sceneData:GetDummyPoint(47103, "Q4008206").rot, true, false, 47103)
    self:CallDelay(3, function(arg1)
        actorMgr:CreateActorWithPos("Q4008323Trigger1", "Actor/Gadget/Q4008323Trigger1", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008203_guide").pos, sceneData:GetDummyPoint(47103, "Q4008203_guide").rot, true, false, 47103)
    end)
end

function Quest40083:OnSubFinish4008323(arg1)
    print("OnSubFinish4008323")
    self:ActorDestroy("Q4008323Trigger")
    self:ActorDestroy("Q4008323Trigger1")
end

function Quest40083:OnSubStart4008310(arg1)
    print("OnSubStart4008310")
    self:CreateQuestNpcWithTrigger("Q4008310Trigger", 4008310, npcs.Npc12860Data.id, 0, 25)
end

function Quest40083:OnSubFinish4008310(arg1)
    print("OnSubFinish4008310")
end

function Quest40083:OnSubStart4008312(arg1)
    print("OnSubStart4008312")
    actorUtils.InitFungusFighterBattlePanel(0)
    self:LoopDoFreeStyle()
    self:CreateQuestNpc(arg1, npcs.Npc12860Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc12860Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40083:OnSubFinish4008312(arg1)
    print("OnSubFinish4008312")
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:GetQuestNpcActor(npcs.Npc12860Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40083:OnSubFailed4008312(arg1)
    print("OnSubFailed4008312")
    self:NpcDestroy(npcs.Npc12860Data.alias, 47103)
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:TransmitPlayerWithTextById(arg1, 2, datas.TextmapId01, 5, nil, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(47103, "Q4008310_N12860").pos, 0, 1, false, false)
    end)
end

function Quest40083:OnSubStart4008317(arg1)
    print("OnSubStart4008317")
    self:CreateQuestNpcWithTriggerBlack("Q4008317Trigger", 4008317, npcs.Npc12860Data.id, 0, 25, 0.5)
    self:UnCallFunc(self.LoopDoFreeStyle)
    self:UnCallFunc(self.RandomFreeStyle)
    self:UnCallFunc(self.DoFreeState)
end

function Quest40083:OnSubFinish4008317(arg1)
    print("OnSubFinish4008317")
    self:NpcDestroyWithBlackscreen(47103, npcs.Npc12860Data.alias)
end

function Quest40083:OnSubStart4008315(arg1)
    print("OnSubStart4008315")
end

function Quest40083:OnSubFinish4008315(arg1)
    print("OnSubFinish4008315")
end

function Quest40083:OnSubStart4008313(arg1)
    print("OnSubStart4008313")
    self:CreateQuestNpcWithTriggerBlack("Q4008313Trigger", 4008313, npcs.Npc1063Data.id, 0, 30, 0.5)
    self:ClearNarratorTask()
end

function Quest40083:OnSubFinish4008313(arg1)
    print("OnSubFinish4008313")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1063Data.alias)
end

function Quest40083:OnSubStart4008308(arg1)
    print("OnSubStart4008308")
end

function Quest40083:OnSubFinish4008308(arg1)
    print("OnSubFinish4008308")
end

return Quest40083
