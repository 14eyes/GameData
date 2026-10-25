require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40084 = class("Quest40084", QuestActorProxy)
Quest40084.defaultAlias = "Quest40084"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40084:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40084:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4008401"] = self.OnSubStart4008401,
        ["4008403"] = self.OnSubStart4008403,
        ["4008417"] = self.OnSubStart4008417,
        ["4008419"] = self.OnSubStart4008419,
        ["4008404"] = self.OnSubStart4008404,
        ["4008405"] = self.OnSubStart4008405,
        ["4008414"] = self.OnSubStart4008414,
        ["4008402"] = self.OnSubStart4008402,
        ["4008406"] = self.OnSubStart4008406,
        ["4008407"] = self.OnSubStart4008407,
        ["4008418"] = self.OnSubStart4008418,
        ["4008420"] = self.OnSubStart4008420,
        ["4008408"] = self.OnSubStart4008408,
        ["4008409"] = self.OnSubStart4008409,
        ["4008413"] = self.OnSubStart4008413,
        ["4008412"] = self.OnSubStart4008412,
        ["4008410"] = self.OnSubStart4008410,
        ["4008416"] = self.OnSubStart4008416,
        ["4008411"] = self.OnSubStart4008411,
        ["4008415"] = self.OnSubStart4008415
    }
end

function Quest40084:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4008401"] = self.OnSubFinish4008401,
        ["4008403"] = self.OnSubFinish4008403,
        ["4008417"] = self.OnSubFinish4008417,
        ["4008419"] = self.OnSubFinish4008419,
        ["4008404"] = self.OnSubFinish4008404,
        ["4008405"] = self.OnSubFinish4008405,
        ["4008414"] = self.OnSubFinish4008414,
        ["4008402"] = self.OnSubFinish4008402,
        ["4008406"] = self.OnSubFinish4008406,
        ["4008407"] = self.OnSubFinish4008407,
        ["4008418"] = self.OnSubFinish4008418,
        ["4008420"] = self.OnSubFinish4008420,
        ["4008408"] = self.OnSubFinish4008408,
        ["4008409"] = self.OnSubFinish4008409,
        ["4008413"] = self.OnSubFinish4008413,
        ["4008412"] = self.OnSubFinish4008412,
        ["4008410"] = self.OnSubFinish4008410,
        ["4008416"] = self.OnSubFinish4008416,
        ["4008411"] = self.OnSubFinish4008411,
        ["4008415"] = self.OnSubFinish4008415
    }
end

function Quest40084:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4008417"] = self.OnSubFailed4008417,
        ["4008405"] = self.OnSubFailed4008405,
        ["4008418"] = self.OnSubFailed4008418,
        ["4008409"] = self.OnSubFailed4008409
    }
end

function Quest40084:Start()
    print("Start")
end

function Quest40084:OnDestroy()
    print("OnDestroy")
end

function Quest40084:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40084:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40084:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 47103)
    self:SafeDestroyQuestNpc(npcs.Npc12855Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12861Data.alias, 47103)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    actorMgr:GetActor("40084"):UnSpawn(gadgets.Gadget70290660Data.alias)
    actorMgr:DestroyEntityActor("Q4008411Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q4008419Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008420Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008419Trigger1", 47103, false)
    actorMgr:DestroyEntityActor("Q4008420Trigger1", 47103, false)
    actorMgr:DestroyEntityActor("Q4008404Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008406Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008408Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008410Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008411Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008413Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008414Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008415Trigger", 3, false)
end

function Quest40084:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest40084:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest40084:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40084:DoFreeState()
    print("DoFreeState")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12861Data.alias)
    local v = self:GetQuestNpcActor(npcs.Npc1063Data.alias)
    questNpcActor:DoFreeStateTrigger()
    v:DoFreeStateTrigger()
end

function Quest40084:LoopDoFreeStyle()
    print("LoopDoFreeStyle")
    local subQuestState = self:GetSubQuestState(4008405)
    local v = self:GetSubQuestState(4008409)
    if subQuestState == 2 or v == 2 then
        self:RandomFreeStyle()
        self:CallDelay(5, Quest40084.DoFreeState)
        self:CallDelay(10, Quest40084.LoopDoFreeStyle)
    end
end

function Quest40084:RandomFreeStyle()
    print("RandomFreeStyle")
    local subQuestState = self:GetSubQuestState(4008405)
    local v = self:GetSubQuestState(4008409)
    if subQuestState == 2 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12861Data.alias)
        local n = math.random(1, 4)
        if n == 1 then
            questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, false)
        elseif n == 2 then
            questNpcActor:DoFreeStyle(1150, true, nil, true, true, false, false)
        elseif n == 3 then
            questNpcActor:DoFreeStyle(1230, true, nil, true, true, false, false)
        elseif n == 4 then
            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
        end
    elseif v == 2 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1063Data.alias)
        local n = math.random(1, 7)
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
        elseif n == 7 then
            questNpcActor:DoFreeStyle(1160, true, nil, true, true, false, false)
        end
    end
end

function Quest40084:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("Accept messages from ability system")
    local subQuestState = self:GetSubQuestState(4008405)
    local v = self:GetSubQuestState(4008409)
    if subQuestState == 2 then
        if arg1.valueString == "OnHalfHP" then
            print("InvokeOnAbilityOnHalfHP")
            self:GetQuestNpcActor(npcs.Npc12861Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
            self:ClearNarratorTask()
            self:NarratorOnlyTaskByData(datas.NarratorWithId13, nil, 40084)
            self:CallDelay(6, Quest40084.DoFreeState)
        else
            if arg1.valueString == "OnUnionBurst" then
                print("InvokeOnAbilityOnUnionBurst")
                self:GetQuestNpcActor(npcs.Npc12861Data.alias):DoFreeStyle(4501, true, nil, true, true, false, false)
                self:ClearNarratorTask()
                self:NarratorOnlyTaskByData(datas.NarratorWithId14, nil, 40084)
                self:CallDelay(6, Quest40084.DoFreeState)
            else
                if arg1.valueString == "OnHeroInCrisis" then
                    print("InvokeOnAbilityOnHeroInCrisis")
                    self:GetQuestNpcActor(npcs.Npc12861Data.alias):DoFreeStyle(1290, true, nil, true, true, false, false)
                    self:ClearNarratorTask()
                    self:NarratorOnlyTaskByData(datas.NarratorWithId11, nil, 40084)
                    self:CallDelay(6, Quest40084.DoFreeState)
                else
                    if arg1.valueString == "OnHeroUnionBurst" then
                        print("InvokeOnAbilityOnHeroUnionBurst")
                        self:GetQuestNpcActor(npcs.Npc12861Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
                        self:ClearNarratorTask()
                        self:NarratorOnlyTaskByData(datas.NarratorWithId12, nil, 40084)
                        self:CallDelay(6, Quest40084.DoFreeState)
                    end
                end
            end
        end
    elseif v == 2 then
        if arg1.valueString == "OnHalfHP" then
            print("InvokeOnAbilityOnHalfHP")
            self:GetQuestNpcActor(npcs.Npc1063Data.alias):DoFreeStyle(1300, true, nil, true, true, false, false)
            self:ClearNarratorTask()
            self:NarratorOnlyTaskByData(datas.NarratorWithId23, nil, 40084)
            self:CallDelay(6, Quest40084.DoFreeState)
        else
            if arg1.valueString == "OnUnionBurst" then
                print("InvokeOnAbilityOnUnionBurst")
                self:GetQuestNpcActor(npcs.Npc1063Data.alias):DoFreeStyle(1342, true, nil, true, true, false, false)
                self:ClearNarratorTask()
                self:NarratorOnlyTaskByData(datas.NarratorWithId24, nil, 40084)
                self:CallDelay(6, Quest40084.DoFreeState)
            else
                if arg1.valueString == "OnHeroInCrisis" then
                    print("InvokeOnAbilityOnHeroInCrisis")
                    self:GetQuestNpcActor(npcs.Npc1063Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
                    self:ClearNarratorTask()
                    self:NarratorOnlyTaskByData(datas.NarratorWithId21, nil, 40084)
                    self:CallDelay(6, Quest40084.DoFreeState)
                else
                    if arg1.valueString == "OnHeroUnionBurst" then
                        print("InvokeOnAbilityOnHeroUnionBurst")
                        self:GetQuestNpcActor(npcs.Npc1063Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
                        self:ClearNarratorTask()
                        self:NarratorOnlyTaskByData(datas.NarratorWithId22, nil, 40084)
                        self:CallDelay(6, Quest40084.DoFreeState)
                    end
                end
            end
        end
    end
end

function Quest40084:OnSubStart4008401(arg1)
    print("OnSubStart4008401")
end

function Quest40084:OnSubFinish4008401(arg1)
    print("OnSubFinish4008401")
    self:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 40084)
end

function Quest40084:OnSubStart4008403(arg1)
    print("OnSubStart4008403")
end

function Quest40084:OnSubFinish4008403(arg1)
    print("OnSubFinish4008403")
end

function Quest40084:OnSubStart4008417(arg1)
    print("OnSubStart4008417")
end

function Quest40084:OnSubFinish4008417(arg1)
    print("OnSubFinish4008417")
end

function Quest40084:OnSubFailed4008417(arg1)
    print("OnSubFailed4008417")
    self:SafeDestroyQuestNpc(npcs.Npc12861Data.alias, 47103)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:ActorDestroy("Q4008419Trigger")
    self:ActorDestroy("Q4008404Trigger")
    self:ActorDestroy("Q4008414Trigger")
    self:ActorDestroy("Q4008419Trigger1")
end

function Quest40084:OnSubStart4008419(arg1)
    print("OnSubStart4008419")
    actorMgr:CreateActorWithPos("Q4008419Trigger", "Actor/Gadget/Q4008419Trigger", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008206").pos, sceneData:GetDummyPoint(47103, "Q4008206").rot, true, false, 47103)
    self:CallDelay(3, function(arg1)
        actorMgr:CreateActorWithPos("Q4008419Trigger1", "Actor/Gadget/Q4008419Trigger1", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008203_guide").pos, sceneData:GetDummyPoint(47103, "Q4008203_guide").rot, true, false, 47103)
    end)
end

function Quest40084:OnSubFinish4008419(arg1)
    print("OnSubFinish4008419")
    self:ActorDestroy("Q4008419Trigger")
    self:ActorDestroy("Q4008419Trigger1")
end

function Quest40084:OnSubStart4008404(arg1)
    print("OnSubStart4008404")
    self:CreateQuestNpcWithTrigger("Q4008404Trigger", 4008404, npcs.Npc12861Data.id, 0, 25)
end

function Quest40084:OnSubFinish4008404(arg1)
    print("OnSubFinish4008404")
end

function Quest40084:OnSubStart4008405(arg1)
    print("OnSubStart4008405")
    actorUtils.InitFungusFighterBattlePanel(0)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:LoopDoFreeStyle()
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12861Data.id, 0)
        arg1_2:SpawnGadgetById(4008405, gadgets.Gadget70290660Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc12861Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40084:OnSubFinish4008405(arg1)
    print("OnSubFinish4008405")
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:GetQuestNpcActor(npcs.Npc12861Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40084:OnSubFailed4008405(arg1)
    print("OnSubFailed4008405")
    self:NpcDestroy(npcs.Npc12861Data.alias, 47103)
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId01, 5, nil, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(47103, "Q4008404_N12861").pos, 0, 1, false, false)
    end)

    self:UnSpawn(gadgets.Gadget70290660Data.alias)
end

function Quest40084:OnSubStart4008414(arg1)
    print("OnSubStart4008414")
    self:CreateQuestNpcWithTriggerBlack("Q4008414Trigger", 4008414, npcs.Npc12861Data.id, 0, 25, 0.5)
    self:UnCallFunc(self.RandomFreeStyle)
    self:UnCallFunc(self.LoopDoFreeStyle)
    self:UnCallFunc(self.DoFreeState)
end

function Quest40084:OnSubFinish4008414(arg1)
    print("OnSubFinish4008414")
    self:NpcDestroyWithBlackscreen(47103, npcs.Npc12861Data.alias)
end

function Quest40084:OnSubStart4008402(arg1)
    print("OnSubStart4008402")
end

function Quest40084:OnSubFinish4008402(arg1)
    print("OnSubFinish4008402")
end

function Quest40084:OnSubStart4008406(arg1)
    print("OnSubStart4008406")
    self:CreateQuestNpcWithTriggerBlack("Q4008406Trigger", 4008406, npcs.Npc1063Data.id, 0, 25, 0.5)
    self:ClearNarratorTask()
end

function Quest40084:OnSubFinish4008406(arg1)
    print("OnSubFinish4008406")
    self:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
end

function Quest40084:OnSubStart4008407(arg1)
    print("OnSubStart4008407")
end

function Quest40084:OnSubFinish4008407(arg1)
    print("OnSubFinish4008407")
end

function Quest40084:OnSubStart4008418(arg1)
    print("OnSubStart4008418")
end

function Quest40084:OnSubFinish4008418(arg1)
    print("OnSubFinish4008418")
end

function Quest40084:OnSubFailed4008418(arg1)
    print("OnSubFailed4008418")
    self:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 47103)
    self:ActorDestroy("Q4008420Trigger")
    self:ActorDestroy("Q4008408Trigger")
    self:ActorDestroy("Q4008413Trigger")
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:ActorDestroy("Q4008420Trigger1")
end

function Quest40084:OnSubStart4008420(arg1)
    print("OnSubStart4008420")
    actorMgr:CreateActorWithPos("Q4008420Trigger", "Actor/Gadget/Q4008420Trigger", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008206").pos, sceneData:GetDummyPoint(47103, "Q4008206").rot, true, false, 47103)
    self:CallDelay(3, function(arg1)
        actorMgr:CreateActorWithPos("Q4008420Trigger1", "Actor/Gadget/Q4008420Trigger1", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008203_guide").pos, sceneData:GetDummyPoint(47103, "Q4008203_guide").rot, true, false, 47103)
    end)
end

function Quest40084:OnSubFinish4008420(arg1)
    print("OnSubFinish4008420")
    self:ActorDestroy("Q4008420Trigger")
    self:ActorDestroy("Q4008420Trigger1")
end

function Quest40084:OnSubStart4008408(arg1)
    print("OnSubStart4008408")
    self:CreateQuestNpcWithTrigger("Q4008408Trigger", 4008408, npcs.Npc1063Data.id, 1, 20)
end

function Quest40084:OnSubFinish4008408(arg1)
    print("OnSubFinish4008408")
end

function Quest40084:OnSubStart4008409(arg1)
    print("OnSubStart4008409")
    actorUtils.InitFungusFighterBattlePanel(0)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
    self:LoopDoFreeStyle()
    self:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(true)
    self:SpawnGadgetById(4008409, gadgets.Gadget70290660Data.id, 1)
end

function Quest40084:OnSubFinish4008409(arg1)
    print("OnSubFinish4008409")
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:GetQuestNpcActor(npcs.Npc1063Data.alias):DisableInteeHeadCtrl(false)
    self:UnSpawn(gadgets.Gadget70290660Data.alias)
end

function Quest40084:OnSubFailed4008409(arg1)
    print("OnSubFailed4008409")
    self:NpcDestroy(npcs.Npc1063Data.alias, 47103)
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:TransmitPlayerWithTextById(arg1, 2, datas.TextmapId01, 5, nil, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(47103, "Q4008408_N1063").pos, 0, 1, false, false)
    end)

    self:UnSpawn(gadgets.Gadget70290660Data.alias)
end

function Quest40084:OnSubStart4008413(arg1)
    print("OnSubStart4008413")
    self:CreateQuestNpcWithTriggerBlack("Q4008413Trigger", 4008413, npcs.Npc1063Data.id, 0, 25, 0.5)
    self:UnCallFunc(self.RandomFreeStyle)
    self:UnCallFunc(self.LoopDoFreeStyle)
    self:UnCallFunc(self.DoFreeState)
end

function Quest40084:OnSubFinish4008413(arg1)
    print("OnSubFinish4008413")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1063Data.alias)
end

function Quest40084:OnSubStart4008412(arg1)
    print("OnSubStart4008412")
end

function Quest40084:OnSubFinish4008412(arg1)
    print("OnSubFinish4008412")
end

function Quest40084:OnSubStart4008410(arg1)
    print("OnSubStart4008410")
    self:CreateQuestNpcWithTriggerBlack("Q4008410Trigger", 4008410, npcs.Npc1034Data.id, 0, 30, 0.5)
end

function Quest40084:OnSubFinish4008410(arg1)
    print("OnSubFinish4008410")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1034Data.alias)
end

function Quest40084:OnSubStart4008416(arg1)
    print("OnSubStart4008416")
    actorMgr:CreateActorWithPos("Q4008411Trigger1", "Actor/Gadget/Q4008411Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008411_guide").pos, sceneData:GetDummyPoint(3, "Q4008411_guide").rot, true, false, 3)
end

function Quest40084:OnSubFinish4008416(arg1)
    print("OnSubFinish4008416")
    self:ActorDestroy("Q4008411Trigger1")
end

function Quest40084:OnSubStart4008411(arg1)
    print("OnSubStart4008411")
    self:CreateQuestNpcWithTriggerBlack("Q4008411Trigger", 4008411, npcs.Npc12855Data.id, 0, 15, 0.5)
end

function Quest40084:OnSubFinish4008411(arg1)
    print("OnSubFinish4008411")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12855Data.alias)
end

function Quest40084:OnSubStart4008415(arg1)
    print("OnSubStart4008415")
    self:ActionSafeCall(function(arg1)
        arg1:CreateQuestNpcWithTriggerBlack("Q4008415Trigger", 4008415, npcs.PaimonData.id, 0, 20, 0.5)
    end)
end

function Quest40084:OnSubFinish4008415(arg1)
    print("OnSubFinish4008415")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

return Quest40084
