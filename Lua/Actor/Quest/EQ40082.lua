require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40082 = class("Quest40082", QuestActorProxy)
Quest40082.defaultAlias = "Quest40082"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40082:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40082:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4008201"] = self.OnSubStart4008201,
        ["4008202"] = self.OnSubStart4008202,
        ["4008205"] = self.OnSubStart4008205,
        ["4008214"] = self.OnSubStart4008214,
        ["4008215"] = self.OnSubStart4008215,
        ["4008203"] = self.OnSubStart4008203,
        ["4008206"] = self.OnSubStart4008206,
        ["4008207"] = self.OnSubStart4008207,
        ["4008213"] = self.OnSubStart4008213,
        ["4008208"] = self.OnSubStart4008208,
        ["4008212"] = self.OnSubStart4008212,
        ["4008209"] = self.OnSubStart4008209,
        ["4008210"] = self.OnSubStart4008210,
        ["4008211"] = self.OnSubStart4008211,
        ["4008204"] = self.OnSubStart4008204
    }
end

function Quest40082:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4008201"] = self.OnSubFinish4008201,
        ["4008202"] = self.OnSubFinish4008202,
        ["4008205"] = self.OnSubFinish4008205,
        ["4008214"] = self.OnSubFinish4008214,
        ["4008215"] = self.OnSubFinish4008215,
        ["4008203"] = self.OnSubFinish4008203,
        ["4008206"] = self.OnSubFinish4008206,
        ["4008207"] = self.OnSubFinish4008207,
        ["4008213"] = self.OnSubFinish4008213,
        ["4008208"] = self.OnSubFinish4008208,
        ["4008212"] = self.OnSubFinish4008212,
        ["4008209"] = self.OnSubFinish4008209,
        ["4008210"] = self.OnSubFinish4008210,
        ["4008211"] = self.OnSubFinish4008211,
        ["4008204"] = self.OnSubFinish4008204
    }
end

function Quest40082:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4008214"] = self.OnSubFailed4008214, ["4008206"] = self.OnSubFailed4008206}
end

function Quest40082:Start()
    print("Start")
end

function Quest40082:OnDestroy()
    print("OnDestroy")
end

function Quest40082:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40082:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40082:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc12856Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12855Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12858Data.alias, 47103)
    self:SafeDestroyQuestNpc(npcs.Npc12858Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30255Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30254Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30257Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12861Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12857Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12859Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12860Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30256Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4008209Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008215Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008215Trigger1", 47103, false)
    actorMgr:DestroyEntityActor("Q4008202Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008203Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008207Trigger", 47103, false)
    actorMgr:DestroyEntityActor("Q4008208Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008210Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008211Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008212Trigger", 3, false)
end

function Quest40082:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest40082:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest40082:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40082:DoFreeState()
    print("DoFreeState")
    self:GetQuestNpcActor(npcs.Npc12858Data.alias):DoFreeStateTrigger()
end

function Quest40082:LoopDoFreeStyle()
    print("LoopDoFreeStyle")
    if self:GetSubQuestState(4008206) == 2 then
        self:RandomFreeStyle()
        self:CallDelay(5, Quest40082.DoFreeState)
        self:CallDelay(10, Quest40082.LoopDoFreeStyle)
    end
end

function Quest40082:RandomFreeStyle()
    print("RandomFreeStyle")
    if self:GetSubQuestState(4008206) == 2 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12858Data.alias)
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
    end
end

function Quest40082:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("Accept messages from ability system")
    if self:GetSubQuestState(4008206) == 2 then
        if arg1.valueString == "OnHalfHP" then
            print("InvokeOnAbilityOnHalfHP")
            self:GetQuestNpcActor(npcs.Npc12858Data.alias):DoFreeStyle(1300, true, nil, true, true, false, false)
            self:ClearNarratorTask()
            self:NarratorOnlyTaskByData(datas.NarratorWithId04, nil, 40082)
            self:CallDelay(6, Quest40082.DoFreeState)
        else
            if arg1.valueString == "OnUnionBurst" then
                print("InvokeOnAbilityOnUnionBurst")
                self:GetQuestNpcActor(npcs.Npc12858Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
                self:ClearNarratorTask()
                self:NarratorOnlyTaskByData(datas.NarratorWithId05, nil, 40082)
                self:CallDelay(6, Quest40082.DoFreeState)
            else
                if arg1.valueString == "OnHeroInCrisis" then
                    print("InvokeOnAbilityOnHeroInCrisis")
                    self:GetQuestNpcActor(npcs.Npc12858Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
                    self:ClearNarratorTask()
                    self:NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 40082)
                    self:CallDelay(6, Quest40082.DoFreeState)
                else
                    if arg1.valueString == "OnHeroUnionBurst" then
                        print("InvokeOnAbilityOnHeroUnionBurst")
                        self:GetQuestNpcActor(npcs.Npc12858Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
                        self:ClearNarratorTask()
                        self:NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 40082)
                        self:CallDelay(6, Quest40082.DoFreeState)
                    end
                end
            end
        end
    end
end

function Quest40082:OnSubStart4008201(arg1)
    print("OnSubStart4008201")
end

function Quest40082:OnSubFinish4008201(arg1)
    print("OnSubFinish4008201")
    self:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 40082)
end

function Quest40082:OnSubStart4008202(arg1)
    print("OnSubStart4008202")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpcWithTrigger("Q4008202Trigger", 4008202, npcs.Npc12856Data.id, 0, 15)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12858Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12861Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12857Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12859Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12860Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc30256Data.id, 0)
    end)
end

function Quest40082:OnSubFinish4008202(arg1)
    print("OnSubFinish4008202")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12856Data.alias)
    self:NpcDestroy(npcs.Npc12858Data.alias, 3)
    self:NpcDestroy(npcs.Npc12861Data.alias, 3)
    self:NpcDestroy(npcs.Npc12857Data.alias, 3)
    self:NpcDestroy(npcs.Npc12859Data.alias, 3)
    self:NpcDestroy(npcs.Npc12860Data.alias, 3)
    self:NpcDestroy(npcs.Npc30256Data.alias, 3)
end

function Quest40082:OnSubStart4008205(arg1)
    print("OnSubStart4008205")
end

function Quest40082:OnSubFinish4008205(arg1)
    print("OnSubFinish4008205")
end

function Quest40082:OnSubStart4008214(arg1)
    print("OnSubStart4008214")
end

function Quest40082:OnSubFinish4008214(arg1)
    print("OnSubFinish4008214")
end

function Quest40082:OnSubFailed4008214(arg1)
    print("OnSubFailed4008214")
    self:SafeDestroyQuestNpc(npcs.Npc12858Data.alias, 47103)
    self:ActorDestroy("Q4008215Trigger")
    self:ActorDestroy("Q4008203Trigger")
    self:ActorDestroy("Q4008207Trigger")
    self:ActorDestroy("Q4008215Trigger1")
end

function Quest40082:OnSubStart4008215(arg1)
    print("OnSubStart4008215")
    actorMgr:CreateActorWithPos("Q4008215Trigger", "Actor/Gadget/Q4008215Trigger", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008206").pos, sceneData:GetDummyPoint(47103, "Q4008206").rot, true, false, 47103)
    self:CallDelay(3, function(arg1)
        actorMgr:CreateActorWithPos("Q4008215Trigger1", "Actor/Gadget/Q4008215Trigger1", 70900002, 0, sceneData:GetDummyPoint(47103, "Q4008203_guide").pos, sceneData:GetDummyPoint(47103, "Q4008203_guide").rot, true, false, 47103)
    end)
end

function Quest40082:OnSubFinish4008215(arg1)
    print("OnSubFinish4008215")
    self:ActorDestroy("Q4008215Trigger")
    self:ActorDestroy("Q4008215Trigger1")
end

function Quest40082:OnSubStart4008203(arg1)
    print("OnSubStart4008203")
    self:CreateQuestNpcWithTrigger("Q4008203Trigger", 4008203, npcs.Npc12858Data.id, 0, 25)
end

function Quest40082:OnSubFinish4008203(arg1)
    print("OnSubFinish4008203")
end

function Quest40082:OnSubStart4008206(arg1)
    print("OnSubStart4008206")
    self:LoopDoFreeStyle()
    actorUtils.InitFungusFighterBattlePanel(0)
    self:CreateQuestNpc(arg1, npcs.Npc12858Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc12858Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40082:OnSubFinish4008206(arg1)
    print("OnSubFinish4008206")
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:GetQuestNpcActor(npcs.Npc12858Data.alias):DisableInteeHeadCtrl(false)
end

function Quest40082:OnSubFailed4008206(arg1)
    print("OnSubFailed4008206")
    self:NpcDestroy(npcs.Npc12858Data.alias, 47103)
    actorUtils.InitFungusFighterBattlePanel(-1)
    self:TransmitPlayerWithTextById(arg1, 2, datas.TextmapId01, 5, nil, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(47103, "Q4008203_N12858").pos, 0, 1, false, false)
    end)
end

function Quest40082:OnSubStart4008207(arg1)
    print("OnSubStart4008207")
    self:CreateQuestNpcWithTriggerBlack("Q4008207Trigger", 4008207, npcs.Npc12858Data.id, 0, 25, 0.5)
    self:UnCallFunc(self.RandomFreeStyle)
    self:UnCallFunc(self.LoopDoFreeStyle)
    self:UnCallFunc(self.DoFreeState)
end

function Quest40082:OnSubFinish4008207(arg1)
    print("OnSubFinish4008207")
    self:NpcDestroyWithBlackscreen(47103, npcs.Npc12858Data.alias)
end

function Quest40082:OnSubStart4008213(arg1)
    print("OnSubStart4008213")
end

function Quest40082:OnSubFinish4008213(arg1)
    print("OnSubFinish4008213")
end

function Quest40082:OnSubStart4008208(arg1)
    print("OnSubStart4008208")
    self:CreateQuestNpcWithTriggerBlack("Q4008208Trigger", 4008208, npcs.Npc1034Data.id, 0, 10, 0.5)
end

function Quest40082:OnSubFinish4008208(arg1)
    print("OnSubFinish4008208")
    self:NpcDestroy(npcs.Npc1034Data.alias, 3)
    self:TransmitPlayerWithTextByQuestId(4008208, 1, datas.TextmapId, 3)
end

function Quest40082:OnSubStart4008212(arg1)
    print("OnSubStart4008212")
    self:CreateQuestNpcWithTriggerBlack("Q4008212Trigger", 4008212, npcs.Npc1034Data.id, 0, 10, 0.5)
end

function Quest40082:OnSubFinish4008212(arg1)
    print("OnSubFinish4008212")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1034Data.alias)
end

function Quest40082:OnSubStart4008209(arg1)
    print("OnSubStart4008209")
    actorMgr:CreateActorWithPos("Q4008209Trigger", "Actor/Gadget/Q4008209Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008209_N12855").pos, sceneData:GetDummyPoint(3, "Q4008209_N12855").rot, true, false, 3)
end

function Quest40082:OnSubFinish4008209(arg1)
    print("OnSubFinish4008209")
    self:ActorDestroy("Q4008209Trigger")
end

function Quest40082:OnSubStart4008210(arg1)
    print("OnSubStart4008210")
    self:CreateQuestNpcWithTriggerBlack("Q4008210Trigger", 4008210, npcs.Npc12855Data.id, 0, 10, 0.5)
end

function Quest40082:OnSubFinish4008210(arg1)
    print("OnSubFinish4008210")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12855Data.alias)
end

function Quest40082:OnSubStart4008211(arg1)
    print("OnSubStart4008211")
    self:CreateQuestNpcWithTriggerBlack("Q4008211Trigger", 4008211, npcs.Npc1034Data.id, 0, 10, 0.5)
    self:CreateQuestNpc(arg1, npcs.Npc30255Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30254Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc30257Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12861Data.id, 0)
end

function Quest40082:OnSubFinish4008211(arg1)
    print("OnSubFinish4008211")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1034Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc30255Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30254Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30257Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12861Data.alias, 3)
end

function Quest40082:OnSubStart4008204(arg1)
    print("OnSubStart4008204")
end

function Quest40082:OnSubFinish4008204(arg1)
    print("OnSubFinish4008204")
end

return Quest40082
