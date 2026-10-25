require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40085 = class("Quest40085", QuestActorProxy)
Quest40085.defaultAlias = "Quest40085"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40085:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40085:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4008501"] = self.OnSubStart4008501,
        ["4008517"] = self.OnSubStart4008517,
        ["4008503"] = self.OnSubStart4008503,
        ["4008518"] = self.OnSubStart4008518,
        ["4008519"] = self.OnSubStart4008519,
        ["4008502"] = self.OnSubStart4008502,
        ["4008515"] = self.OnSubStart4008515,
        ["4008520"] = self.OnSubStart4008520,
        ["4008504"] = self.OnSubStart4008504,
        ["4008516"] = self.OnSubStart4008516,
        ["4008505"] = self.OnSubStart4008505,
        ["4008508"] = self.OnSubStart4008508,
        ["4008514"] = self.OnSubStart4008514,
        ["4008521"] = self.OnSubStart4008521,
        ["4008509"] = self.OnSubStart4008509,
        ["4008511"] = self.OnSubStart4008511,
        ["4008510"] = self.OnSubStart4008510,
        ["4008506"] = self.OnSubStart4008506,
        ["4008512"] = self.OnSubStart4008512,
        ["4008513"] = self.OnSubStart4008513,
        ["4008507"] = self.OnSubStart4008507
    }
end

function Quest40085:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4008501"] = self.OnSubFinish4008501,
        ["4008517"] = self.OnSubFinish4008517,
        ["4008503"] = self.OnSubFinish4008503,
        ["4008518"] = self.OnSubFinish4008518,
        ["4008519"] = self.OnSubFinish4008519,
        ["4008502"] = self.OnSubFinish4008502,
        ["4008515"] = self.OnSubFinish4008515,
        ["4008520"] = self.OnSubFinish4008520,
        ["4008504"] = self.OnSubFinish4008504,
        ["4008516"] = self.OnSubFinish4008516,
        ["4008505"] = self.OnSubFinish4008505,
        ["4008508"] = self.OnSubFinish4008508,
        ["4008514"] = self.OnSubFinish4008514,
        ["4008521"] = self.OnSubFinish4008521,
        ["4008509"] = self.OnSubFinish4008509,
        ["4008511"] = self.OnSubFinish4008511,
        ["4008510"] = self.OnSubFinish4008510,
        ["4008506"] = self.OnSubFinish4008506,
        ["4008512"] = self.OnSubFinish4008512,
        ["4008513"] = self.OnSubFinish4008513,
        ["4008507"] = self.OnSubFinish4008507
    }
end

function Quest40085:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4008518"] = self.OnSubFailed4008518,
        ["4008515"] = self.OnSubFailed4008515,
        ["4008516"] = self.OnSubFailed4008516,
        ["4008514"] = self.OnSubFailed4008514,
        ["4008511"] = self.OnSubFailed4008511
    }
end

function Quest40085:Start()
    print("Start")
end

function Quest40085:OnDestroy()
    print("OnDestroy")
end

function Quest40085:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40085:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40085:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc12856Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12856Data.alias, 47103)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12855Data.alias, 47103)
    self:SafeDestroyQuestNpc(npcs.Npc12858Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12859Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12860Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12861Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12928Data.alias, 47103)
    self:SafeDestroyQuestNpc(npcs.Npc12929Data.alias, 47103)
    actorMgr:GetActor("40085"):UnSpawn(gadgets.Gadget70290660Data.alias)
    actorMgr:DestroyEntityActor("Q4008519Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008520Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008521Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008519Trigger1", 47103, false)
    actorMgr:DestroyEntityActor("Q4008502Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008504Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008505Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008508trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008509Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008510Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008512Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008517trigger", 3, false)
end

function Quest40085:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest40085:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest40085:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40085:DoFreeState()
    print("DoFreeState")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12855Data.alias)
    local v = self:GetQuestNpcActor(npcs.Npc12856Data.alias)
    questNpcActor:DoFreeStateTrigger()
    v:DoFreeStateTrigger()
end

function Quest40085:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("Accept messages from ability system")
    local subQuestState = self:GetSubQuestState(4008515)
    local v = self:GetSubQuestState(4008516)
    local subQuestState2 = self:GetSubQuestState(4008514)
    local subQuestState3 = self:GetSubQuestState(4008511)
    if subQuestState == 2 then
        if arg1.valueString == "OnHalfHP" then
            print("InvokeOnAbilityOnHalfHP")
            self:GetQuestNpcActor(npcs.Npc12855Data.alias):DoFreeStyle(1300, true, nil, true, true, false, false)
            self:ClearNarratorTask()
            self:NarratorOnlyTaskByData(datas.NarratorWithId13, nil, 40085)
            self:CallDelay(6, Quest40085.DoFreeState)
        else
            if arg1.valueString == "OnUnionBurst" then
                print("InvokeOnAbilityOnUnionBurst")
                self:GetQuestNpcActor(npcs.Npc12855Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
                self:ClearNarratorTask()
                self:NarratorOnlyTaskByData(datas.NarratorWithId14, nil, 40085)
                self:CallDelay(6, Quest40085.DoFreeState)
            else
                if arg1.valueString == "OnHeroInCrisis" then
                    print("InvokeOnAbilityOnHeroInCrisis")
                    self:GetQuestNpcActor(npcs.Npc12855Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
                    self:ClearNarratorTask()
                    self:NarratorOnlyTaskByData(datas.NarratorWithId11, nil, 40085)
                    self:CallDelay(6, Quest40085.DoFreeState)
                else
                    if arg1.valueString == "OnHeroUnionBurst" then
                        print("InvokeOnAbilityOnHeroUnionBurst")
                        self:GetQuestNpcActor(npcs.Npc12855Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
                        self:ClearNarratorTask()
                        self:NarratorOnlyTaskByData(datas.NarratorWithId12, nil, 40085)
                        self:CallDelay(6, Quest40085.DoFreeState)
                    end
                end
            end
        end
    elseif v == 2 then
        if arg1.valueString == "OnHalfHP" then
            print("InvokeOnAbilityOnHalfHP")
            self:GetQuestNpcActor(npcs.Npc12855Data.alias):DoFreeStyle(1300, true, nil, true, true, false, false)
            self:ClearNarratorTask()
            self:NarratorOnlyTaskByData(datas.NarratorWithId17, nil, 40085)
            self:CallDelay(6, Quest40085.DoFreeState)
        else
            if arg1.valueString == "OnUnionBurst" then
                print("InvokeOnAbilityOnUnionBurst")
                self:GetQuestNpcActor(npcs.Npc12855Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
                self:ClearNarratorTask()
                self:NarratorOnlyTaskByData(datas.NarratorWithId18, nil, 40085)
                self:CallDelay(6, Quest40085.DoFreeState)
            else
                if arg1.valueString == "OnHeroInCrisis" then
                    print("InvokeOnAbilityOnHeroInCrisis")
                    self:GetQuestNpcActor(npcs.Npc12855Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
                    self:ClearNarratorTask()
                    self:NarratorOnlyTaskByData(datas.NarratorWithId15, nil, 40085)
                    self:CallDelay(6, Quest40085.DoFreeState)
                else
                    if arg1.valueString == "OnHeroUnionBurst" then
                        print("InvokeOnAbilityOnHeroUnionBurst")
                        self:GetQuestNpcActor(npcs.Npc12855Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
                        self:ClearNarratorTask()
                        self:NarratorOnlyTaskByData(datas.NarratorWithId16, nil, 40085)
                        self:CallDelay(6, Quest40085.DoFreeState)
                    end
                end
            end
        end
    elseif subQuestState2 == 2 then
        if arg1.valueString == "OnHeroInCrisis" then
            print("InvokeOnAbilityOnHeroInCrisis")
            self:GetQuestNpcActor(npcs.Npc12856Data.alias):DoFreeStyle(1260, true, nil, true, true, false, false)
            self:ClearNarratorTask()
            self:NarratorOnlyTaskByData(datas.NarratorWithId21, nil, 40085)
            self:CallDelay(6, Quest40085.DoFreeState)
        else
            if arg1.valueString == "OnHeroUnionBurst" then
                print("InvokeOnAbilityOnHeroUnionBurst")
                self:GetQuestNpcActor(npcs.Npc12856Data.alias):DoFreeStyle(1290, true, nil, true, true, false, false)
                self:ClearNarratorTask()
                self:NarratorOnlyTaskByData(datas.NarratorWithId22, nil, 40085)
                self:CallDelay(6, Quest40085.DoFreeState)
            end
        end
    elseif subQuestState3 == 2 then
        if arg1.valueString == "OnHeroInCrisis" then
            print("InvokeOnAbilityOnHeroInCrisis")
            self:GetQuestNpcActor(npcs.Npc12856Data.alias):DoFreeStyle(1260, true, nil, true, true, false, false)
            self:ClearNarratorTask()
            self:NarratorOnlyTaskByData(datas.NarratorWithId23, nil, 40085)
            self:CallDelay(6, Quest40085.DoFreeState)
        else
            if arg1.valueString == "OnHeroUnionBurst" then
                print("InvokeOnAbilityOnHeroUnionBurst")
                self:GetQuestNpcActor(npcs.Npc12856Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
                self:ClearNarratorTask()
                self:NarratorOnlyTaskByData(datas.NarratorWithId24, nil, 40085)
                self:CallDelay(6, Quest40085.DoFreeState)
            end
        end
    end
end

function Quest40085:RandomFreeStyle()
    print("RandomFreeStyle")
    local subQuestState = self:GetSubQuestState(4008515)
    local v = self:GetSubQuestState(4008516)
    local subQuestState2 = self:GetSubQuestState(4008514)
    local subQuestState3 = self:GetSubQuestState(4008511)
    if subQuestState == 2 or v == 2 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12855Data.alias)
        local n = math.random(1, 6)
        if n == 1 then
            questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, false)
        elseif n == 2 then
            questNpcActor:DoFreeStyle(1141, true, nil, true, true, false, false)
        elseif n == 3 then
            questNpcActor:DoFreeStyle(1230, true, nil, true, true, false, false)
        elseif n == 4 then
            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
        elseif n == 5 then
            questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, false)
        elseif n == 6 then
            questNpcActor:DoFreeStyle(1250, true, nil, true, true, false, false)
        end
    elseif subQuestState2 == 2 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12856Data.alias)
        local n = math.random(1, 4)
        if n == 1 then
            questNpcActor:DoFreeStyle(1260, true, nil, true, true, false, false)
        elseif n == 2 then
            questNpcActor:DoFreeStyle(1141, true, nil, true, true, false, false)
        elseif n == 3 then
            questNpcActor:DoFreeStyle(1230, true, nil, true, true, false, false)
        elseif n == 4 then
            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
        end
    elseif subQuestState3 == 2 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12856Data.alias)
        local n = math.random(1, 6)
        if n == 1 then
            questNpcActor:DoFreeStyle(1300, true, nil, true, true, false, false)
        elseif n == 2 then
            questNpcActor:DoFreeStyle(1141, true, nil, true, true, false, false)
        elseif n == 3 then
            questNpcActor:DoFreeStyle(1230, true, nil, true, true, false, false)
        elseif n == 4 then
            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
        elseif n == 5 then
            questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, false)
        elseif n == 6 then
            questNpcActor:DoFreeStyle(4010, true, nil, true, true, false, false)
        end
    end
end

function Quest40085:LoopDoFreeStyle()
    print("LoopDoFreeStyle")
    local subQuestState = self:GetSubQuestState(4008515)
    local v = self:GetSubQuestState(4008516)
    local subQuestState2 = self:GetSubQuestState(4008514)
    local subQuestState3 = self:GetSubQuestState(4008511)
    if subQuestState == 2 or v == 2 or subQuestState2 == 2 or subQuestState3 == 2 then
        self:RandomFreeStyle()
        self:CallDelay(5, Quest40085.DoFreeState)
        self:CallDelay(10, Quest40085.LoopDoFreeStyle)
    end
end

function Quest40085:OnSubStart4008501(arg1)
    print("OnSubStart4008501")
end

function Quest40085:OnSubFinish4008501(arg1)
    print("OnSubFinish4008501")
    self:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 40085)
end

function Quest40085:OnSubStart4008517(arg1)
    print("OnSubStart4008517")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpcWithTrigger("Q4008517trigger", 4008517, npcs.Npc12856Data.id, 0, 15)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12858Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12859Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12860Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12861Data.id, 0)
    end)
end

function Quest40085:OnSubFinish4008517(arg1)
    print("OnSubFinish4008517")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12856Data.alias)
    self:NpcDestroy(npcs.Npc12858Data.alias, 3)
    self:NpcDestroy(npcs.Npc12859Data.alias, 3)
    self:NpcDestroy(npcs.Npc12860Data.alias, 3)
    self:NpcDestroy(npcs.Npc12861Data.alias, 3)
    self:ClearNarratorTask()
end

function Quest40085:OnSubStart4008503(arg1)
    print("OnSubStart4008503")
end

function Quest40085:OnSubFinish4008503(arg1)
    print("OnSubFinish4008503")
end

function Quest40085:OnSubStart4008518(arg1)
    print("OnSubStart4008518")
end

function Quest40085:OnSubFinish4008518(arg1)
    print("OnSubFinish4008518")
end

function Quest40085:OnSubFailed4008518(arg1)
    print("OnSubFailed4008518")
    self:SafeDestroyQuestNpc(npcs.Npc12856Data.alias, 47103)
    self:SafeDestroyQuestNpc(npcs.Npc12855Data.alias, 47103)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc12928Data.alias, 47103)
    self:SafeDestroyQuestNpc(npcs.Npc12929Data.alias, 47103)
    self:ActorDestroy("Q4008519Trigger")
    self:ActorDestroy("Q4008502Trigger")
    self:ActorDestroy("Q4008520Trigger")
    self:ActorDestroy("Q4008504Trigger")
    self:ActorDestroy("Q4008505Trigger")
    self:ActorDestroy("Q4008508Trigger")
    self:ActorDestroy("Q4008521Trigger")
    self:ActorDestroy("Q4008509Trigger")
    self:ActorDestroy("Q4008510Trigger")
    self:ActorDestroy("Q4008519Trigger1")
end

function Quest40085:OnSubStart4008519(arg1)
    print("OnSubStart4008519")
    actorMgr:CreateActorWithPos("Q4008519Trigger", "Actor/Gadget/Q4008519Trigger", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008206").pos, sceneData:GetDummyPoint(47103, "Q4008206").rot, true, false, 47103)
    self:CallDelay(3, function(arg1)
        actorMgr:CreateActorWithPos("Q4008519Trigger1", "Actor/Gadget/Q4008519Trigger1", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008203_guide").pos, sceneData:GetDummyPoint(47103, "Q4008203_guide").rot, true, false, 47103)
    end)
end

function Quest40085:OnSubFinish4008519(arg1)
    print("OnSubFinish4008519")
    self:ActorDestroy("Q4008519Trigger")
    self:ActorDestroy("Q4008519Trigger1")
end

function Quest40085:OnSubStart4008502(arg1)
    print("OnSubStart4008502")
    self:CreateQuestNpcWithTrigger("Q4008502Trigger", 4008502, npcs.Npc12855Data.id, 0, 25)
end

function Quest40085:OnSubFinish4008502(arg1)
    print("OnSubFinish4008502")
end

function Quest40085:OnSubStart4008515(arg1)
    print("OnSubStart4008515")
    actorUtils.InitFungusFighterBattlePanel(0)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:LoopDoFreeStyle()
    self:CreateQuestNpc(arg1, npcs.Npc12855Data.id, 0)
    self:SpawnGadgetById(4008515, gadgets.Gadget70290660Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12855Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40085:OnSubFinish4008515(arg1)
    print("OnSubFinish4008515")
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:GetQuestNpcActor(npcs.Npc12856Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40085:OnSubFailed4008515(arg1)
    print("OnSubFailed4008515")
    self:NpcDestroy(npcs.Npc12855Data.alias, 47103)
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:TransmitPlayerWithTextById(arg1, 3, datas.TextmapId1, 5, nil, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(47103, "Q4008502_N12855").pos, 0, 1, false, false)
    end)

    self:UnSpawn(gadgets.Gadget70290660Data.alias)
end

function Quest40085:OnSubStart4008520(arg1)
    print("OnSubStart4008520")
    if self:GetQuestVar(4008520, 1) == 0 then
        actorMgr:CreateActorWithPos("Q4008520Trigger", "Actor/Gadget/Q4008520Trigger", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008207_N1005").pos, sceneData:GetDummyPoint(47103, "Q4008207_N1005").rot, true, false, 47103)
    else
        self:CallDelay(3, function(arg1)
            actorMgr:CreateActorWithPos("Q4008520Trigger", "Actor/Gadget/Q4008520Trigger", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008207_N1005").pos, sceneData:GetDummyPoint(47103, "Q4008207_N1005").rot, true, false, 47103)
        end)
    end
end

function Quest40085:OnSubFinish4008520(arg1)
    print("OnSubFinish4008520")
    self:ActorDestroy("Q4008520Trigger")
end

function Quest40085:OnSubStart4008504(arg1)
    print("OnSubStart4008504")
    self:CreateQuestNpcWithTriggerBlack("Q4008504Trigger", 4008504, npcs.Npc12855Data.id, 0, 30, 1)
    self:UnCallFunc(self.LoopDoFreeStyle)
    self:UnCallFunc(self.RandomFreeStyle)
    self:UnCallFunc(self.DoFreeState)
end

function Quest40085:OnSubFinish4008504(arg1)
    print("OnSubFinish4008504")
end

function Quest40085:OnSubStart4008516(arg1)
    print("OnSubStart4008516")
    actorUtils.InitFungusFighterBattlePanel(0)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:LoopDoFreeStyle()
    self:CreateQuestNpc(arg1, npcs.Npc12855Data.id, 0)
    self:SpawnGadgetById(4008516, gadgets.Gadget70290660Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12855Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40085:OnSubFinish4008516(arg1)
    print("OnSubFinish4008516")
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:GetQuestNpcActor(npcs.Npc12855Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40085:OnSubFailed4008516(arg1)
    print("OnSubFailed4008516")
    self:NpcDestroy(npcs.Npc12855Data.alias, 47103)
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:TransmitPlayerWithTextById(arg1, 4, datas.TextmapId1, 3, nil, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(47103, "Q4008502_N12855").pos, 0, 1, false, false)
    end)

    self:UnSpawn(gadgets.Gadget70290660Data.alias)
end

function Quest40085:OnSubStart4008505(arg1)
    print("OnSubStart4008505")
    self:CreateQuestNpcWithTriggerBlack("Q4008505Trigger", 4008505, npcs.Npc12855Data.id, 0, 30, 1)
    self:UnCallFunc(self.LoopDoFreeStyle)
    self:UnCallFunc(self.RandomFreeStyle)
    self:UnCallFunc(self.DoFreeState)
end

function Quest40085:OnSubFinish4008505(arg1)
    print("OnSubFinish4008505")
    self:SafeDestroyQuestNpc(npcs.Npc12855Data.alias, 47103)
end

function Quest40085:OnSubStart4008508(arg1)
    print("OnSubStart4008508")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:TransmitPlayerWithTextByQuestId(4008508, 1, datas.TextmapId, 5, nil, function(arg1)
            arg1:CreateQuestNpcWithTrigger("Q4008508trigger", 4008508, npcs.Npc12856Data.id, 0, 50)
        end)
    end)
end

function Quest40085:OnSubFinish4008508(arg1)
    print("OnSubFinish4008508")
end

function Quest40085:OnSubStart4008514(arg1)
    print("OnSubStart4008514")
    actorUtils.InitFungusFighterBattlePanel(1)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:LoopDoFreeStyle()
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12856Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12928Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12929Data.id, 0)
        arg1_2:SpawnGadgetById(4008514, gadgets.Gadget70290660Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc12856Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40085:OnSubFinish4008514(arg1)
    print("OnSubFinish4008514")
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:NpcDestroyWithBlackscreen(47103, npcs.Npc12928Data.alias)
    self:NpcDestroy(npcs.Npc12929Data.alias, 47103)
    self:GetQuestNpcActor(npcs.Npc12856Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40085:OnSubFailed4008514(arg1)
    print("OnSubFailed4008514")
    self:SafeDestroyQuestNpc(npcs.Npc12856Data.alias, 47103)
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:NpcDestroy(npcs.Npc12928Data.alias, 47103)
    self:NpcDestroy(npcs.Npc12929Data.alias, 47103)
end

function Quest40085:OnSubStart4008521(arg1)
    print("OnSubStart4008521")
    if self:GetQuestVar(4008521, 2) == 0 then
        actorMgr:CreateActorWithPos("Q4008521Trigger", "Actor/Gadget/Q4008521Trigger", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008505").pos, sceneData:GetDummyPoint(47103, "Q4008505").rot, true, false, 47103)
    else
        self:CallDelay(3, function(arg1)
            actorMgr:CreateActorWithPos("Q4008521Trigger", "Actor/Gadget/Q4008521Trigger", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008505").pos, sceneData:GetDummyPoint(47103, "Q4008505").rot, true, false, 47103)
        end)
    end
end

function Quest40085:OnSubFinish4008521(arg1)
    print("OnSubFinish4008521")
    self:ActorDestroy("Q4008521Trigger")
end

function Quest40085:OnSubStart4008509(arg1)
    print("OnSubStart4008509")
    self:CreateQuestNpcWithTriggerBlack("Q4008509Trigger", 4008509, npcs.Npc12856Data.id, 0, 30, 1)
    self:UnCallFunc(self.LoopDoFreeStyle)
    self:UnCallFunc(self.RandomFreeStyle)
    self:UnCallFunc(self.DoFreeState)
end

function Quest40085:OnSubFinish4008509(arg1)
    print("OnSubFinish4008509")
end

function Quest40085:OnSubStart4008511(arg1)
    print("OnSubStart4008511")
    actorUtils.InitFungusFighterBattlePanel(2)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:LoopDoFreeStyle()
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12856Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12928Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12929Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12856Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40085:OnSubFinish4008511(arg1)
    print("OnSubFinish4008511")
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:NpcDestroyWithBlackscreen(47103, npcs.Npc12928Data.alias)
    self:NpcDestroy(npcs.Npc12929Data.alias, 47103)
    self:GetQuestNpcActor(npcs.Npc12856Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40085:OnSubFailed4008511(arg1)
    print("OnSubFailed4008511")
    self:NpcDestroy(npcs.Npc12856Data.alias, 0)
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:TransmitPlayerWithTextById(arg1, 5, datas.TextmapId1, 3, nil, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(47103, "Q4008508_N12856").pos, 0, 1, false, false)
    end)

    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:NpcDestroy(npcs.Npc12928Data.alias, 47103)
    self:NpcDestroy(npcs.Npc12929Data.alias, 47103)
end

function Quest40085:OnSubStart4008510(arg1)
    print("OnSubStart4008510")
    self:CreateQuestNpcWithTriggerBlack("Q4008510Trigger", 4008510, npcs.Npc12856Data.id, 0, 30, 1)
    self:UnCallFunc(self.LoopDoFreeStyle)
    self:UnCallFunc(self.RandomFreeStyle)
    self:UnCallFunc(self.DoFreeState)
end

function Quest40085:OnSubFinish4008510(arg1)
    print("OnSubFinish4008510")
    self:NpcDestroyWithBlackscreen(47103, npcs.Npc12856Data.alias)
end

function Quest40085:OnSubStart4008506(arg1)
    print("OnSubStart4008506")
    self:TransmitPlayerByQuestId(4008506, 2)
end

function Quest40085:OnSubFinish4008506(arg1)
    print("OnSubFinish4008506")
end

function Quest40085:OnSubStart4008512(arg1)
    print("OnSubStart4008512")
    self:CreateQuestNpcWithTriggerBlack("Q4008512Trigger", 4008512, npcs.Npc12856Data.id, 1, 30, 0.5)
end

function Quest40085:OnSubFinish4008512(arg1)
    print("OnSubFinish4008512")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12856Data.alias)
end

function Quest40085:OnSubStart4008513(arg1)
    print("OnSubStart4008513")
end

function Quest40085:OnSubFinish4008513(arg1)
    print("OnSubFinish4008513")
end

function Quest40085:OnSubStart4008507(arg1)
    print("OnSubStart4008507")
end

function Quest40085:OnSubFinish4008507(arg1)
    print("OnSubFinish4008507")
end

return Quest40085
