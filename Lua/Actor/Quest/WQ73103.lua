require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73103 = class("Quest73103", QuestActorProxy)
Quest73103.defaultAlias = "Quest73103"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73103:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73103:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7310351"] = self.OnSubStart7310351,
        ["7310301"] = self.OnSubStart7310301,
        ["7310352"] = self.OnSubStart7310352,
        ["7310302"] = self.OnSubStart7310302,
        ["7310303"] = self.OnSubStart7310303,
        ["7310304"] = self.OnSubStart7310304,
        ["7310354"] = self.OnSubStart7310354,
        ["7310355"] = self.OnSubStart7310355,
        ["7310359"] = self.OnSubStart7310359,
        ["7310347"] = self.OnSubStart7310347,
        ["7310340"] = self.OnSubStart7310340,
        ["7310305"] = self.OnSubStart7310305,
        ["7310306"] = self.OnSubStart7310306,
        ["7310339"] = self.OnSubStart7310339,
        ["7310307"] = self.OnSubStart7310307,
        ["7310308"] = self.OnSubStart7310308,
        ["7310309"] = self.OnSubStart7310309,
        ["7310310"] = self.OnSubStart7310310,
        ["7310311"] = self.OnSubStart7310311,
        ["7310312"] = self.OnSubStart7310312,
        ["7310353"] = self.OnSubStart7310353,
        ["7310313"] = self.OnSubStart7310313,
        ["7310314"] = self.OnSubStart7310314,
        ["7310315"] = self.OnSubStart7310315,
        ["7310316"] = self.OnSubStart7310316,
        ["7310317"] = self.OnSubStart7310317,
        ["7310318"] = self.OnSubStart7310318,
        ["7310361"] = self.OnSubStart7310361,
        ["7310350"] = self.OnSubStart7310350,
        ["7310362"] = self.OnSubStart7310362,
        ["7310363"] = self.OnSubStart7310363,
        ["7310319"] = self.OnSubStart7310319,
        ["7310342"] = self.OnSubStart7310342,
        ["7310343"] = self.OnSubStart7310343,
        ["7310360"] = self.OnSubStart7310360,
        ["7310320"] = self.OnSubStart7310320,
        ["7310344"] = self.OnSubStart7310344,
        ["7310356"] = self.OnSubStart7310356,
        ["7310358"] = self.OnSubStart7310358,
        ["7310357"] = self.OnSubStart7310357,
        ["7310321"] = self.OnSubStart7310321,
        ["7310322"] = self.OnSubStart7310322,
        ["7310341"] = self.OnSubStart7310341,
        ["7310323"] = self.OnSubStart7310323,
        ["7310324"] = self.OnSubStart7310324,
        ["7310325"] = self.OnSubStart7310325,
        ["7310326"] = self.OnSubStart7310326,
        ["7310327"] = self.OnSubStart7310327,
        ["7310328"] = self.OnSubStart7310328,
        ["7310329"] = self.OnSubStart7310329,
        ["7310330"] = self.OnSubStart7310330,
        ["7310331"] = self.OnSubStart7310331,
        ["7310332"] = self.OnSubStart7310332,
        ["7310333"] = self.OnSubStart7310333,
        ["7310334"] = self.OnSubStart7310334,
        ["7310335"] = self.OnSubStart7310335,
        ["7310336"] = self.OnSubStart7310336,
        ["7310346"] = self.OnSubStart7310346,
        ["7310349"] = self.OnSubStart7310349,
        ["7310337"] = self.OnSubStart7310337,
        ["7310348"] = self.OnSubStart7310348,
        ["7310338"] = self.OnSubStart7310338,
        ["7310345"] = self.OnSubStart7310345,
        ["7310364"] = self.OnSubStart7310364
    }
end

function Quest73103:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7310351"] = self.OnSubFinish7310351,
        ["7310301"] = self.OnSubFinish7310301,
        ["7310352"] = self.OnSubFinish7310352,
        ["7310302"] = self.OnSubFinish7310302,
        ["7310303"] = self.OnSubFinish7310303,
        ["7310304"] = self.OnSubFinish7310304,
        ["7310354"] = self.OnSubFinish7310354,
        ["7310355"] = self.OnSubFinish7310355,
        ["7310359"] = self.OnSubFinish7310359,
        ["7310347"] = self.OnSubFinish7310347,
        ["7310340"] = self.OnSubFinish7310340,
        ["7310305"] = self.OnSubFinish7310305,
        ["7310306"] = self.OnSubFinish7310306,
        ["7310339"] = self.OnSubFinish7310339,
        ["7310307"] = self.OnSubFinish7310307,
        ["7310308"] = self.OnSubFinish7310308,
        ["7310309"] = self.OnSubFinish7310309,
        ["7310310"] = self.OnSubFinish7310310,
        ["7310311"] = self.OnSubFinish7310311,
        ["7310312"] = self.OnSubFinish7310312,
        ["7310353"] = self.OnSubFinish7310353,
        ["7310313"] = self.OnSubFinish7310313,
        ["7310314"] = self.OnSubFinish7310314,
        ["7310315"] = self.OnSubFinish7310315,
        ["7310316"] = self.OnSubFinish7310316,
        ["7310317"] = self.OnSubFinish7310317,
        ["7310318"] = self.OnSubFinish7310318,
        ["7310361"] = self.OnSubFinish7310361,
        ["7310350"] = self.OnSubFinish7310350,
        ["7310362"] = self.OnSubFinish7310362,
        ["7310363"] = self.OnSubFinish7310363,
        ["7310319"] = self.OnSubFinish7310319,
        ["7310342"] = self.OnSubFinish7310342,
        ["7310343"] = self.OnSubFinish7310343,
        ["7310360"] = self.OnSubFinish7310360,
        ["7310320"] = self.OnSubFinish7310320,
        ["7310344"] = self.OnSubFinish7310344,
        ["7310356"] = self.OnSubFinish7310356,
        ["7310358"] = self.OnSubFinish7310358,
        ["7310357"] = self.OnSubFinish7310357,
        ["7310321"] = self.OnSubFinish7310321,
        ["7310322"] = self.OnSubFinish7310322,
        ["7310341"] = self.OnSubFinish7310341,
        ["7310323"] = self.OnSubFinish7310323,
        ["7310324"] = self.OnSubFinish7310324,
        ["7310325"] = self.OnSubFinish7310325,
        ["7310326"] = self.OnSubFinish7310326,
        ["7310327"] = self.OnSubFinish7310327,
        ["7310328"] = self.OnSubFinish7310328,
        ["7310329"] = self.OnSubFinish7310329,
        ["7310330"] = self.OnSubFinish7310330,
        ["7310331"] = self.OnSubFinish7310331,
        ["7310332"] = self.OnSubFinish7310332,
        ["7310333"] = self.OnSubFinish7310333,
        ["7310334"] = self.OnSubFinish7310334,
        ["7310335"] = self.OnSubFinish7310335,
        ["7310336"] = self.OnSubFinish7310336,
        ["7310346"] = self.OnSubFinish7310346,
        ["7310349"] = self.OnSubFinish7310349,
        ["7310337"] = self.OnSubFinish7310337,
        ["7310348"] = self.OnSubFinish7310348,
        ["7310338"] = self.OnSubFinish7310338,
        ["7310345"] = self.OnSubFinish7310345,
        ["7310364"] = self.OnSubFinish7310364
    }
end

function Quest73103:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73103:Start()
    print("Start")
end

function Quest73103:OnDestroy()
    print("OnDestroy")
end

function Quest73103:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73103:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73103:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20845Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20846Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4293Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20856Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20988Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20989Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7310302_EnterTrigger", 0, false)
    actorMgr:DestroyEntityActor("Q7310308_EnterTrigger", 0, false)
    actorMgr:DestroyEntityActor("Q7310314_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310319_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310320_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310321_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310324_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310330_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310332_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310336_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310338_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310342_EnterTrigger", 3, false)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc4296Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20845Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20846Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4293Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20856Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20988Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20989Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7310302_EnterTrigger", 0, false)
    actorMgr:DestroyEntityActor("Q7310308_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310314_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310319_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310320_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310320_RmdTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310321_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310321_RmdTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310324_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310330_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310332_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310336_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310338_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310342_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310342_RmdTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310350_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310350_RmdTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310351_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310353_EnterTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7310356_EnterTrigger", 3, false)
end

function Quest73103:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73103:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73103:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73103:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73103:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest73103:OnSubStart7310351(arg1)
    print("OnSubStart7310351")
    actorMgr:CreateActorWithPos("Q7310351_EnterTrigger", "Actor/Gadget/Q7310351_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310351_guide").pos, sceneData:GetDummyPoint(3, "Q7310351_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310351(arg1)
    print("OnSubFinish7310351")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73103:OnSubStart7310301(arg1)
    print("OnSubStart7310301")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73103:OnSubFinish7310301(arg1)
    print("OnSubFinish7310301")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73103:OnSubStart7310352(arg1)
    print("OnSubStart7310352")
end

function Quest73103:OnSubFinish7310352(arg1)
    print("OnSubFinish7310352")
    this:TransmitPlayerWithTextByQuestId(7310352, 5, datas.N7310352_Trans, 10)
end

function Quest73103:OnSubStart7310302(arg1)
    print("OnSubStart7310302")
    actorMgr:CreateActorWithPos("Q7310302_EnterTrigger", "Actor/Gadget/Q7310302_EnterTrigger", 70900002, 0, {x = -137.266, y = 186.989, z = 5372.058}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73103:OnSubFinish7310302(arg1)
    print("OnSubFinish7310302")
end

function Quest73103:OnSubStart7310303(arg1)
    print("OnSubStart7310303")
end

function Quest73103:OnSubFinish7310303(arg1)
    print("OnSubFinish7310303")
    globalActor:ChangeDay24Time(13, true)
end

function Quest73103:OnSubStart7310304(arg1)
    print("OnSubStart7310304")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7310304, function(arg1)
            actorUtils.FinishQuestID(false, 7310304)
        end, nil, nil, false)

        globalActor:ChangeDay24Time(13, true)
    end)
end

function Quest73103:OnSubFinish7310304(arg1)
    print("OnSubFinish7310304")
    this:TransmitPlayerWithTextById(arg1, 1, datas.N7310304_Trans, 1)
end

function Quest73103:OnSubStart7310354(arg1)
    print("OnSubStart7310354")
    actorMgr:CreateActorWithPos("Q7310354_EnterTrigger", "Actor/Gadget/Q7310354_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310354_guide").pos, sceneData:GetDummyPoint(3, "Q7310354_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310354(arg1)
    print("OnSubFinish7310354")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc20845Data.id, 1)
end

function Quest73103:OnSubStart7310355(arg1)
    print("OnSubStart7310355")
end

function Quest73103:OnSubFinish7310355(arg1)
    print("OnSubFinish7310355")
    this:CallDelay(11, function(arg1)
        actorUtils.ShowContext("RobotControl", 133313045, 45006)
        this:CallDelay(3, function(arg1)
            actorUtils.RobotControlShowReminder(1000080055, function(arg1)
                actorUtils.FinishQuestID(false, 7310359)
            end)
        end)

        this:ClearNarratorTask()
    end)
end

function Quest73103:OnSubStart7310359(arg1)
    print("OnSubStart7310359")
end

function Quest73103:OnSubFinish7310359(arg1)
    print("OnSubFinish7310359")
    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
    this:CallDelay(0.5, function(arg1)
        this:RequestInteraction(npcs.Npc20845Data.alias)
    end)
end

function Quest73103:OnSubStart7310347(arg1)
    print("OnSubStart7310347")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:CallDelay(1, function(arg1)
            this:NarratorOnlyTaskByData(datas.Narrator_7310304_start, function(arg1)
                actorUtils.FinishQuestID(false, 7310347)
            end)
        end)
    end)
end

function Quest73103:OnSubFinish7310347(arg1)
    print("OnSubFinish7310347")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73103:OnSubStart7310340(arg1)
    print("OnSubStart7310340")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
    end)
end

function Quest73103:OnSubFinish7310340(arg1)
    print("OnSubFinish7310340")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20845Data.alias)
end

function Quest73103:OnSubStart7310305(arg1)
    print("OnSubStart7310305")
end

function Quest73103:OnSubFinish7310305(arg1)
    print("OnSubFinish7310305")
end

function Quest73103:OnSubStart7310306(arg1)
    print("OnSubStart7310306")
end

function Quest73103:OnSubFinish7310306(arg1)
    print("OnSubFinish7310306")
end

function Quest73103:OnSubStart7310339(arg1)
    print("OnSubStart7310339")
end

function Quest73103:OnSubFinish7310339(arg1)
    print("OnSubFinish7310339")
end

function Quest73103:OnSubStart7310307(arg1)
    print("OnSubStart7310307")
end

function Quest73103:OnSubFinish7310307(arg1)
    print("OnSubFinish7310307")
    this:CallDelay(1, function(arg1)
        actorUtils.RobotControlShowReminder(1000080068, nil)
    end)
end

function Quest73103:OnSubStart7310308(arg1)
    print("OnSubStart7310308")
    actorMgr:CreateActorWithPos("Q7310308_EnterTrigger", "Actor/Gadget/Q7310308_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310308_guide").pos, sceneData:GetDummyPoint(3, "Q7310308_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310308(arg1)
    print("OnSubFinish7310308")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73103:OnSubStart7310309(arg1)
    print("OnSubStart7310309")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20845Data.alias)
        end)
    end)
end

function Quest73103:OnSubFinish7310309(arg1)
    print("OnSubFinish7310309")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20845Data.alias)
end

function Quest73103:OnSubStart7310310(arg1)
    print("OnSubStart7310310")
end

function Quest73103:OnSubFinish7310310(arg1)
    print("OnSubFinish7310310")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73103:OnSubStart7310311(arg1)
    print("OnSubStart7310311")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20845Data.alias)
        end)
    end)
end

function Quest73103:OnSubFinish7310311(arg1)
    print("OnSubFinish7310311")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20845Data.alias)
end

function Quest73103:OnSubStart7310312(arg1)
    print("OnSubStart7310312")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7310312, function(arg1)
            actorUtils.FinishQuestID(false, 7310312)
        end, nil, nil, false)

        globalActor:ChangeDay24Time(12, false)
    end)
end

function Quest73103:OnSubFinish7310312(arg1)
    print("OnSubFinish7310312")
    this:TransmitPlayerWithTextById(arg1, 2, datas.N7310312_Trans, 1.5)
end

function Quest73103:OnSubStart7310353(arg1)
    print("OnSubStart7310353")
    actorMgr:CreateActorWithPos("Q7310353_EnterTrigger", "Actor/Gadget/Q7310353_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310353_guide").pos, sceneData:GetDummyPoint(3, "Q7310353_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310353(arg1)
    print("OnSubFinish7310353")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73103:OnSubStart7310313(arg1)
    print("OnSubStart7310313")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73103:OnSubFinish7310313(arg1)
    print("OnSubFinish7310313")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73103:OnSubStart7310314(arg1)
    print("OnSubStart7310314")
    this:NpcCreate(arg1, npcs.Npc4293Data.id, 1)
    this:NpcCreate(arg1, npcs.Npc20988Data.id, 2)
    this:NpcCreate(arg1, npcs.Npc20989Data.id, 3)
    actorMgr:CreateActorWithPos("Q7310314_EnterTrigger", "Actor/Gadget/Q7310314_EnterTrigger", 70900002, 0, {x = -611.125, y = 20.646, z = 5793.991}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73103:OnSubFinish7310314(arg1)
    print("OnSubFinish7310314")
end

function Quest73103:OnSubStart7310315(arg1)
    print("OnSubStart7310315")
end

function Quest73103:OnSubFinish7310315(arg1)
    print("OnSubFinish7310315")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4293Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20988Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20989Data.alias)
end

function Quest73103:OnSubStart7310316(arg1)
    print("OnSubStart7310316")
end

function Quest73103:OnSubFinish7310316(arg1)
    print("OnSubFinish7310316")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_08)
    end, nil, "", false, true)
end

function Quest73103:OnSubStart7310317(arg1)
    print("OnSubStart7310317")
end

function Quest73103:OnSubFinish7310317(arg1)
    print("OnSubFinish7310317")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73103:OnSubStart7310318(arg1)
    print("OnSubStart7310318")
    this:ClearNarratorTask()
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73103:OnSubFinish7310318(arg1)
    print("OnSubFinish7310318")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73103:OnSubStart7310361(arg1)
    print("OnSubStart7310361")
    actorMgr:CreateActorWithPos("Q7310361_EnterTrigger", "Actor/Gadget/Q7310361_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310361_guide").pos, sceneData:GetDummyPoint(3, "Q7310361_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310361(arg1)
    print("OnSubFinish7310361")
end

function Quest73103:OnSubStart7310350(arg1)
    print("OnSubStart7310350")
    actorMgr:CreateActorWithPos("Q7310350_EnterTrigger", "Actor/Gadget/Q7310350_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310350_guide").pos, sceneData:GetDummyPoint(3, "Q7310350_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7310350_RmdTrigger", "Actor/Gadget/Q7310350_RmdTrigger", 70900002, 0, {x = -715.898, y = 19.939, z = 5865.666}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73103:OnSubFinish7310350(arg1)
    print("OnSubFinish7310350")
    this:ActorDestroy("Q7310350_RmdTrigger")
end

function Quest73103:OnSubStart7310362(arg1)
    print("OnSubStart7310362")
    actorMgr:CreateActorWithPos("Q7310362_EnterTrigger", "Actor/Gadget/Q7310362_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310362_guide").pos, sceneData:GetDummyPoint(3, "Q7310362_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310362(arg1)
    print("OnSubFinish7310362")
end

function Quest73103:OnSubStart7310363(arg1)
    print("OnSubStart7310363")
    actorMgr:CreateActorWithPos("Q7310363_EnterTrigger", "Actor/Gadget/Q7310363_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310363_guide").pos, sceneData:GetDummyPoint(3, "Q7310363_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310363(arg1)
    print("OnSubFinish7310363")
end

function Quest73103:OnSubStart7310319(arg1)
    print("OnSubStart7310319")
    actorMgr:CreateActorWithPos("Q7310319_EnterTrigger", "Actor/Gadget/Q7310319_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310319_guide").pos, sceneData:GetDummyPoint(3, "Q7310319_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310319(arg1)
    print("OnSubFinish7310319")
end

function Quest73103:OnSubStart7310342(arg1)
    print("OnSubStart7310342")
    actorMgr:CreateActorWithPos("Q7310342_EnterTrigger", "Actor/Gadget/Q7310342_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310342_guide").pos, sceneData:GetDummyPoint(3, "Q7310342_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310342(arg1)
    print("OnSubFinish7310342")
end

function Quest73103:OnSubStart7310343(arg1)
    print("OnSubStart7310343")
end

function Quest73103:OnSubFinish7310343(arg1)
    print("OnSubFinish7310343")
end

function Quest73103:OnSubStart7310360(arg1)
    print("OnSubStart7310360")
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7310360, function(arg1)
            actorUtils.FinishQuestID(false, 7310360)
        end, nil, nil, false)
    end)
end

function Quest73103:OnSubFinish7310360(arg1)
    print("OnSubFinish7310360")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.N_7310343)
    end)
end

function Quest73103:OnSubStart7310320(arg1)
    print("OnSubStart7310320")
    actorMgr:CreateActorWithPos("Q7310320_EnterTrigger", "Actor/Gadget/Q7310320_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310320_guide").pos, sceneData:GetDummyPoint(3, "Q7310320_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7310320_RmdTrigger", "Actor/Gadget/Q7310320_RmdTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310320_Rmd").pos, sceneData:GetDummyPoint(3, "Q7310320_Rmd").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310320(arg1)
    print("OnSubFinish7310320")
    this:ActorDestroy("Q7310320_RmdTrigger")
end

function Quest73103:OnSubStart7310344(arg1)
    print("OnSubStart7310344")
end

function Quest73103:OnSubFinish7310344(arg1)
    print("OnSubFinish7310344")
    this:NarratorOnlyTaskByData(datas.N_7310344F)
end

function Quest73103:OnSubStart7310356(arg1)
    print("OnSubStart7310356")
    actorMgr:CreateActorWithPos("Q7310356_EnterTrigger", "Actor/Gadget/Q7310356_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310356_guide").pos, sceneData:GetDummyPoint(3, "Q7310356_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310356(arg1)
    print("OnSubFinish7310356")
end

function Quest73103:OnSubStart7310358(arg1)
    print("OnSubStart7310358")
end

function Quest73103:OnSubFinish7310358(arg1)
    print("OnSubFinish7310358")
    this:PlayCutsceneIndex(133313034, function(arg1)
        this:NarratorOnlyTaskByData(datas.N7310358)
    end, nil, nil, false)
end

function Quest73103:OnSubStart7310357(arg1)
    print("OnSubStart7310357")
end

function Quest73103:OnSubFinish7310357(arg1)
    print("OnSubFinish7310357")
    this:NarratorOnlyTaskByData(datas.N7310357)
end

function Quest73103:OnSubStart7310321(arg1)
    print("OnSubStart7310321")
    actorMgr:CreateActorWithPos("Q7310321_EnterTrigger", "Actor/Gadget/Q7310321_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310321_guide").pos, sceneData:GetDummyPoint(3, "Q7310321_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7310321_RmdTrigger", "Actor/Gadget/Q7310321_RmdTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310321_Rmd").pos, sceneData:GetDummyPoint(3, "Q7310321_Rmd").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310321(arg1)
    print("OnSubFinish7310321")
    this:ActorDestroy("Q7310321_RmdTrigger")
end

function Quest73103:OnSubStart7310322(arg1)
    print("OnSubStart7310322")
end

function Quest73103:OnSubFinish7310322(arg1)
    print("OnSubFinish7310322")
end

function Quest73103:OnSubStart7310341(arg1)
    print("OnSubStart7310341")
    this:ClearNarratorTask()
    this:PlayCutsceneIndex(7310341, function(arg1)
        actorUtils.FinishQuestID(false, 7310341)
    end, nil, nil, false)
end

function Quest73103:OnSubFinish7310341(arg1)
    print("OnSubFinish7310341")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73103:OnSubStart7310323(arg1)
    print("OnSubStart7310323")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20846Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20846Data.alias)
        end)
    end)
end

function Quest73103:OnSubFinish7310323(arg1)
    print("OnSubFinish7310323")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20846Data.alias)
end

function Quest73103:OnSubStart7310324(arg1)
    print("OnSubStart7310324")
    actorMgr:CreateActorWithPos("Q7310324_EnterTrigger", "Actor/Gadget/Q7310324_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310324_guide").pos, sceneData:GetDummyPoint(3, "Q7310324_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310324(arg1)
    print("OnSubFinish7310324")
end

function Quest73103:OnSubStart7310325(arg1)
    print("OnSubStart7310325")
end

function Quest73103:OnSubFinish7310325(arg1)
    print("OnSubFinish7310325")
end

function Quest73103:OnSubStart7310326(arg1)
    print("OnSubStart7310326")
    this:PlayCutsceneIndex(7310326, function(arg1)
        actorUtils.FinishQuestID(false, 7310326)
    end, nil, nil, false)
end

function Quest73103:OnSubFinish7310326(arg1)
    print("OnSubFinish7310326")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.RMD_7310326)
    end)
end

function Quest73103:OnSubStart7310327(arg1)
    print("OnSubStart7310327")
end

function Quest73103:OnSubFinish7310327(arg1)
    print("OnSubFinish7310327")
end

function Quest73103:OnSubStart7310328(arg1)
    print("OnSubStart7310328")
end

function Quest73103:OnSubFinish7310328(arg1)
    print("OnSubFinish7310328")
end

function Quest73103:OnSubStart7310329(arg1)
    print("OnSubStart7310329")
    this:PlayCutsceneIndex(7310329, function(arg1)
        actorUtils.FinishQuestID(false, 7310329)
    end, nil, nil, false)
end

function Quest73103:OnSubFinish7310329(arg1)
    print("OnSubFinish7310329")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.N7310331)
    end)
end

function Quest73103:OnSubStart7310330(arg1)
    print("OnSubStart7310330")
    actorMgr:CreateActorWithPos("Q7310330_EnterTrigger", "Actor/Gadget/Q7310330_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310330_guide").pos, sceneData:GetDummyPoint(3, "Q7310330_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310330(arg1)
    print("OnSubFinish7310330")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73103:OnSubStart7310331(arg1)
    print("OnSubStart7310331")
    this:ClearNarratorTask()
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73103:OnSubFinish7310331(arg1)
    print("OnSubFinish7310331")
    this:TransmitPlayerWithDialogTextById(arg1, 6, datas.N7310330_Trans, 10, nil, nil)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73103:OnSubStart7310332(arg1)
    print("OnSubStart7310332")
    actorMgr:CreateActorWithPos("Q7310332_EnterTrigger", "Actor/Gadget/Q7310332_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310332_guide").pos, sceneData:GetDummyPoint(3, "Q7310332_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310332(arg1)
    print("OnSubFinish7310332")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73103:OnSubStart7310333(arg1)
    print("OnSubStart7310333")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20846Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20846Data.alias)
        end)
    end)
end

function Quest73103:OnSubFinish7310333(arg1)
    print("OnSubFinish7310333")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20846Data.alias)
end

function Quest73103:OnSubStart7310334(arg1)
    print("OnSubStart7310334")
end

function Quest73103:OnSubFinish7310334(arg1)
    print("OnSubFinish7310334")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73103:OnSubStart7310335(arg1)
    print("OnSubStart7310335")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20846Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20846Data.alias)
        end)
    end)
end

function Quest73103:OnSubFinish7310335(arg1)
    print("OnSubFinish7310335")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20846Data.alias)
end

function Quest73103:OnSubStart7310336(arg1)
    print("OnSubStart7310336")
    actorMgr:CreateActorWithPos("Q7310336_EnterTrigger", "Actor/Gadget/Q7310336_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310336_guide").pos, sceneData:GetDummyPoint(3, "Q7310336_guide").rot, true, false, 3)
end

function Quest73103:OnSubFinish7310336(arg1)
    print("OnSubFinish7310336")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73103:OnSubStart7310346(arg1)
    print("OnSubStart7310346")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73103:OnSubFinish7310346(arg1)
    print("OnSubFinish7310346")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.N_7310348)
    end)
end

function Quest73103:OnSubStart7310349(arg1)
    print("OnSubStart7310349")
end

function Quest73103:OnSubFinish7310349(arg1)
    print("OnSubFinish7310349")
end

function Quest73103:OnSubStart7310337(arg1)
    print("OnSubStart7310337")
    this:PlayCutsceneIndex(7310337, function(arg1)
        actorUtils.FinishQuestID(false, 7310337)
    end, nil, nil, false)

    this:ClearNarratorTask()
end

function Quest73103:OnSubFinish7310337(arg1)
    print("OnSubFinish7310337")
    this:TransmitPlayerWithTextById(arg1, 3, datas.N7310337_Trans, 1)
end

function Quest73103:OnSubStart7310348(arg1)
    print("OnSubStart7310348")
end

function Quest73103:OnSubFinish7310348(arg1)
    print("OnSubFinish7310348")
end

function Quest73103:OnSubStart7310338(arg1)
    print("OnSubStart7310338")
    actorMgr:CreateActorWithPos("Q7310338_EnterTrigger", "Actor/Gadget/Q7310338_EnterTrigger", 70900002, 0, {x = -679.721, y = -816.878, z = 5334.931}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73103:OnSubFinish7310338(arg1)
    print("OnSubFinish7310338")
end

function Quest73103:OnSubStart7310345(arg1)
    print("OnSubStart7310345")
end

function Quest73103:OnSubFinish7310345(arg1)
    print("OnSubFinish7310345")
end

function Quest73103:OnSubStart7310364(arg1)
    print("OnSubStart7310364")
end

function Quest73103:OnSubFinish7310364(arg1)
    print("OnSubFinish7310364")
end

return Quest73103
