require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73688 = class("Quest73688", QuestActorProxy)
Quest73688.defaultAlias = "Quest73688"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73688:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73688:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7368801"] = self.OnSubStart7368801,
        ["7368802"] = self.OnSubStart7368802,
        ["7368803"] = self.OnSubStart7368803,
        ["7368804"] = self.OnSubStart7368804,
        ["7368808"] = self.OnSubStart7368808,
        ["7368807"] = self.OnSubStart7368807,
        ["7368805"] = self.OnSubStart7368805,
        ["7368809"] = self.OnSubStart7368809,
        ["7368806"] = self.OnSubStart7368806
    }
end

function Quest73688:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7368801"] = self.OnSubFinish7368801,
        ["7368802"] = self.OnSubFinish7368802,
        ["7368803"] = self.OnSubFinish7368803,
        ["7368804"] = self.OnSubFinish7368804,
        ["7368808"] = self.OnSubFinish7368808,
        ["7368807"] = self.OnSubFinish7368807,
        ["7368805"] = self.OnSubFinish7368805,
        ["7368809"] = self.OnSubFinish7368809,
        ["7368806"] = self.OnSubFinish7368806
    }
end

function Quest73688:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73688:Start()
    print("Start")
end

function Quest73688:OnDestroy()
    print("OnDestroy")
end

function Quest73688:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73688:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73688:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3099Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13080Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13081Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2604Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2604Data.alias, 47307)
    this:SafeDestroyQuestNpc(npcs.Npc13083Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12112Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12113Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3086Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12116Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13185Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7368801Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7368803Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7368804Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7368806Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7368807Trigger", 3, false)
    globalActor:LeaveWeather()
end

function Quest73688:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73688:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73688:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73688:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("Dialogue finish ayaka talk before dungeon")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor:FinishQuestID(false, 7368804)
    elseif arg1 == 2 then
        globalActor:LeaveWeather()
        globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    end
end

function Quest73688:OnSubStart7368801(arg1)
    print("OnSubStart7368801")
    this:CreateQuestNpcWithTrigger("Q7368801Trigger", 7368801, npcs.Npc1013Data.id, 0, 18)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13084Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13083Data.id, 3)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc3086Data.id, 0)
end

function Quest73688:OnSubFinish7368801(arg1)
    print("OnSubFinish7368801")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1013Data.alias)
    this:NpcDestroy(npcs.Npc13084Data.alias, 3)
    this:NpcDestroy(npcs.Npc13083Data.alias, 3)
    this:NpcDestroy(npcs.Npc3086Data.alias, 3)
end

function Quest73688:OnSubStart7368802(arg1)
    print("OnSubStart7368802")
end

function Quest73688:OnSubFinish7368802(arg1)
    print("OnSubFinish7368802")
    this:NarratorOnlyTaskByData(datas.NarratorWithIdFirst)
end

function Quest73688:OnSubStart7368803(arg1)
    print("OnSubStart7368803")
    this:CreateQuestNpcWithTrigger("Q7368803Trigger", 7368803, npcs.Npc3099Data.id, 0, 8)
    globalActor:LeaveAllWeather()
end

function Quest73688:OnSubFinish7368803(arg1)
    print("OnSubFinish7368803")
    globalActor:LeaveAllWeather()
end

function Quest73688:OnSubStart7368804(arg1)
    print("OnSubStart7368804")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13073Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13081Data.id, 5)
    this:CreateQuestNpcWithTriggerBlack("Q7368804Trigger", 7368804, 2604, 0, 10, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12112Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12113Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12116Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13185Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc12112Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc12116Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13185Data.alias):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:ClearNarratorTask()
    this:StopNarrator()
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13084Data.id, 0)
end

function Quest73688:OnSubFinish7368804(arg1)
    print("OnSubFinish7368804")
    this:NpcDestroy(npcs.Npc3099Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2604Data.alias)
end

function Quest73688:OnSubStart7368808(arg1)
    print("OnSubStart7368808")
    globalActor:PlayerEnterDungeon(765, 8407, true, nil, 0)
end

function Quest73688:OnSubFinish7368808(arg1)
    print("OnSubFinish7368808")
    this:NpcDestroy(npcs.Npc13073Data.alias, 3)
    this:NpcDestroy(npcs.Npc13081Data.alias, 3)
    this:NpcDestroy(npcs.Npc12112Data.alias, 3)
    this:NpcDestroy(npcs.Npc12113Data.alias, 3)
    this:NpcDestroy(npcs.Npc12116Data.alias, 3)
    this:NpcDestroy(npcs.Npc13185Data.alias, 3)
    this:NpcDestroy(npcs.Npc13080Data.alias, 3)
    this:NpcDestroy(npcs.Npc13084Data.alias, 3)
end

function Quest73688:OnSubStart7368807(arg1)
    print("OnSubStart7368807")
    this:CreateQuestNpcWithTriggerBlack("Q7368807Trigger", 7368807, npcs.Npc2604Data.id, 0, 20, 2)
end

function Quest73688:OnSubFinish7368807(arg1)
    print("OnSubFinish7368807")
    this:NpcDestroyWithBlackscreen(47307, npcs.Npc2604Data.alias)
end

function Quest73688:OnSubStart7368805(arg1)
    print("OnSubStart7368805")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(12, function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithIdBattle)
        end)
    end)
end

function Quest73688:OnSubFinish7368805(arg1)
    print("OnSubFinish7368805")
    this:CallDelay(2, function(arg1_2)
        this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3, function(arg1) end)
    end)
end

function Quest73688:OnSubStart7368809(arg1)
    print("OnSubStart7368809")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(12, function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithIdBattle)
        end)
    end)
end

function Quest73688:OnSubFinish7368809(arg1)
    print("OnSubFinish7368809")
    this:CallDelay(2, function(arg1_2)
        this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3)
    end)
end

function Quest73688:OnSubStart7368806(arg1)
    print("OnSubStart7368806")
    this:CreateQuestNpcWithTriggerBlack("Q7368806Trigger", 7368806, 2604, 0, 13, 2)
    this:ClearNarratorTask()
    this:StopNarrator()
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc3086Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1038Data.id, 0)
end

function Quest73688:OnSubFinish7368806(arg1)
    print("OnSubFinish7368806")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2604Data.alias)
    this:NpcDestroy(npcs.Npc3086Data.alias, 3)
    this:NpcDestroy(npcs.Npc1038Data.alias, 3)
end

return Quest73688
