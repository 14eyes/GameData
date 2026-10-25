require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70065 = class("Quest70065", QuestActorProxy)
Quest70065.defaultAlias = "Quest70065"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70065:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70065:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7006507"] = self.OnSubStart7006507,
        ["7006515"] = self.OnSubStart7006515,
        ["7006508"] = self.OnSubStart7006508,
        ["7006509"] = self.OnSubStart7006509,
        ["7006510"] = self.OnSubStart7006510,
        ["7006511"] = self.OnSubStart7006511,
        ["7006559"] = self.OnSubStart7006559,
        ["7006518"] = self.OnSubStart7006518,
        ["7006512"] = self.OnSubStart7006512,
        ["7006549"] = self.OnSubStart7006549,
        ["7006504"] = self.OnSubStart7006504,
        ["7006505"] = self.OnSubStart7006505,
        ["7006554"] = self.OnSubStart7006554,
        ["7006555"] = self.OnSubStart7006555,
        ["7006557"] = self.OnSubStart7006557,
        ["7006506"] = self.OnSubStart7006506,
        ["7006556"] = self.OnSubStart7006556,
        ["7006517"] = self.OnSubStart7006517,
        ["7006519"] = self.OnSubStart7006519,
        ["7006514"] = self.OnSubStart7006514,
        ["7006516"] = self.OnSubStart7006516,
        ["7006553"] = self.OnSubStart7006553,
        ["7006520"] = self.OnSubStart7006520,
        ["7006558"] = self.OnSubStart7006558,
        ["7006521"] = self.OnSubStart7006521,
        ["7006522"] = self.OnSubStart7006522,
        ["7006523"] = self.OnSubStart7006523,
        ["7006524"] = self.OnSubStart7006524,
        ["7006525"] = self.OnSubStart7006525,
        ["7006526"] = self.OnSubStart7006526,
        ["7006527"] = self.OnSubStart7006527,
        ["7006530"] = self.OnSubStart7006530,
        ["7006528"] = self.OnSubStart7006528,
        ["7006531"] = self.OnSubStart7006531,
        ["7006529"] = self.OnSubStart7006529,
        ["7006532"] = self.OnSubStart7006532,
        ["7006533"] = self.OnSubStart7006533,
        ["7006534"] = self.OnSubStart7006534,
        ["7006535"] = self.OnSubStart7006535,
        ["7006537"] = self.OnSubStart7006537,
        ["7006538"] = self.OnSubStart7006538,
        ["7006539"] = self.OnSubStart7006539,
        ["7006540"] = self.OnSubStart7006540,
        ["7006541"] = self.OnSubStart7006541,
        ["7006543"] = self.OnSubStart7006543,
        ["7006552"] = self.OnSubStart7006552,
        ["7006546"] = self.OnSubStart7006546,
        ["7006547"] = self.OnSubStart7006547,
        ["7006548"] = self.OnSubStart7006548,
        ["7006550"] = self.OnSubStart7006550,
        ["7006551"] = self.OnSubStart7006551,
        ["7006501"] = self.OnSubStart7006501,
        ["7006502"] = self.OnSubStart7006502,
        ["7006503"] = self.OnSubStart7006503,
        ["7006513"] = self.OnSubStart7006513,
        ["7006536"] = self.OnSubStart7006536,
        ["7006542"] = self.OnSubStart7006542,
        ["7006544"] = self.OnSubStart7006544,
        ["7006545"] = self.OnSubStart7006545
    }
end

function Quest70065:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7006507"] = self.OnSubFinish7006507,
        ["7006515"] = self.OnSubFinish7006515,
        ["7006508"] = self.OnSubFinish7006508,
        ["7006509"] = self.OnSubFinish7006509,
        ["7006510"] = self.OnSubFinish7006510,
        ["7006511"] = self.OnSubFinish7006511,
        ["7006559"] = self.OnSubFinish7006559,
        ["7006518"] = self.OnSubFinish7006518,
        ["7006512"] = self.OnSubFinish7006512,
        ["7006549"] = self.OnSubFinish7006549,
        ["7006504"] = self.OnSubFinish7006504,
        ["7006505"] = self.OnSubFinish7006505,
        ["7006554"] = self.OnSubFinish7006554,
        ["7006555"] = self.OnSubFinish7006555,
        ["7006557"] = self.OnSubFinish7006557,
        ["7006506"] = self.OnSubFinish7006506,
        ["7006556"] = self.OnSubFinish7006556,
        ["7006517"] = self.OnSubFinish7006517,
        ["7006519"] = self.OnSubFinish7006519,
        ["7006514"] = self.OnSubFinish7006514,
        ["7006516"] = self.OnSubFinish7006516,
        ["7006553"] = self.OnSubFinish7006553,
        ["7006520"] = self.OnSubFinish7006520,
        ["7006558"] = self.OnSubFinish7006558,
        ["7006521"] = self.OnSubFinish7006521,
        ["7006522"] = self.OnSubFinish7006522,
        ["7006523"] = self.OnSubFinish7006523,
        ["7006524"] = self.OnSubFinish7006524,
        ["7006525"] = self.OnSubFinish7006525,
        ["7006526"] = self.OnSubFinish7006526,
        ["7006527"] = self.OnSubFinish7006527,
        ["7006530"] = self.OnSubFinish7006530,
        ["7006528"] = self.OnSubFinish7006528,
        ["7006531"] = self.OnSubFinish7006531,
        ["7006529"] = self.OnSubFinish7006529,
        ["7006532"] = self.OnSubFinish7006532,
        ["7006533"] = self.OnSubFinish7006533,
        ["7006534"] = self.OnSubFinish7006534,
        ["7006535"] = self.OnSubFinish7006535,
        ["7006537"] = self.OnSubFinish7006537,
        ["7006538"] = self.OnSubFinish7006538,
        ["7006539"] = self.OnSubFinish7006539,
        ["7006540"] = self.OnSubFinish7006540,
        ["7006541"] = self.OnSubFinish7006541,
        ["7006543"] = self.OnSubFinish7006543,
        ["7006552"] = self.OnSubFinish7006552,
        ["7006546"] = self.OnSubFinish7006546,
        ["7006547"] = self.OnSubFinish7006547,
        ["7006548"] = self.OnSubFinish7006548,
        ["7006550"] = self.OnSubFinish7006550,
        ["7006551"] = self.OnSubFinish7006551,
        ["7006501"] = self.OnSubFinish7006501,
        ["7006502"] = self.OnSubFinish7006502,
        ["7006503"] = self.OnSubFinish7006503,
        ["7006513"] = self.OnSubFinish7006513,
        ["7006536"] = self.OnSubFinish7006536,
        ["7006542"] = self.OnSubFinish7006542,
        ["7006544"] = self.OnSubFinish7006544,
        ["7006545"] = self.OnSubFinish7006545
    }
end

function Quest70065:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7006507"] = self.OnSubFailed7006507,
        ["7006515"] = self.OnSubFailed7006515,
        ["7006508"] = self.OnSubFailed7006508,
        ["7006509"] = self.OnSubFailed7006509,
        ["7006510"] = self.OnSubFailed7006510,
        ["7006511"] = self.OnSubFailed7006511,
        ["7006559"] = self.OnSubFailed7006559,
        ["7006518"] = self.OnSubFailed7006518,
        ["7006512"] = self.OnSubFailed7006512,
        ["7006549"] = self.OnSubFailed7006549,
        ["7006555"] = self.OnSubFailed7006555,
        ["7006557"] = self.OnSubFailed7006557,
        ["7006506"] = self.OnSubFailed7006506,
        ["7006556"] = self.OnSubFailed7006556,
        ["7006517"] = self.OnSubFailed7006517,
        ["7006519"] = self.OnSubFailed7006519,
        ["7006534"] = self.OnSubFailed7006534,
        ["7006535"] = self.OnSubFailed7006535,
        ["7006537"] = self.OnSubFailed7006537,
        ["7006543"] = self.OnSubFailed7006543,
        ["7006552"] = self.OnSubFailed7006552,
        ["7006513"] = self.OnSubFailed7006513,
        ["7006536"] = self.OnSubFailed7006536
    }
end

function Quest70065:Start()
    print("Start")
end

function Quest70065:OnDestroy()
    print("OnDestroy")
end

function Quest70065:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70065:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70065:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70065:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7006503Trigger", nil)
    this:ActorDestroy("Q7006505Trigger", nil)
    this:ActorDestroy("Q7006505Trigger_1", nil)
    this:ActorDestroy("Q7006502Trigger", nil)
    this:ActorDestroy("Q7006501Trigger", nil)
    this:ActorDestroy("Q7006504Trigger", nil)
    this:ActorDestroy("Q7006507Trigger", nil)
    this:ActorDestroy("Q7006508Trigger", nil)
    this:ActorDestroy("Q7006509Trigger", nil)
    this:ActorDestroy("Q7006510Trigger", nil)
    this:ActorDestroy("Q7006511Trigger", nil)
    this:ActorDestroy("Q7006512Trigger", nil)
    this:ActorDestroy("Q7006519Trigger", nil)
    this:ActorDestroy("Q7006523Trigger", nil)
    this:ActorDestroy("Q7006524Trigger", nil)
    this:ActorDestroy("Q7006527Trigger", nil)
    this:ActorDestroy("Q7006528Trigger", nil)
    this:ActorDestroy("Q7006526Trigger", nil)
    this:ActorDestroy("Q7006529Trigger", nil)
    this:ActorDestroy("Q7006532Trigger", nil)
    this:ActorDestroy("Q7006534Trigger", nil)
    this:ActorDestroy("Q7006535Trigger", nil)
    this:ActorDestroy("Q7006536Trigger", nil)
    this:ActorDestroy("Q7006538Trigger", nil)
    this:ActorDestroy("Q7006542Trigger", nil)
    this:ActorDestroy("Q7006543Trigger", nil)
    this:ActorDestroy("Q7006544Trigger", nil)
    this:ActorDestroy("Q7006545Trigger", nil)
    this:ActorDestroy("Q7006546Trigger", nil)
    this:ActorDestroy("Q7006547Trigger", nil)
    this:ActorDestroy("Q7006548Trigger", nil)
    this:ActorDestroy("Q7006552Trigger", nil)
    this:ActorDestroy("Q7006557Trigger", nil)
    this:ActorDestroy("Q7006515Trigger", nil)
end

function Quest70065:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest70065:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70065:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest70065:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest70065:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70065:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70065:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest70065:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest70065:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70065:OnSubStart7006507(arg1)
    print("OnSubStart7006507")
    this:SetNavigationByMainId(70065, true)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
    this:DeployStoryByQuest(147006504)
    actorMgr:CreateActorWithPos("Q7006507Trigger", "Actor/Gadget/Q7006507Trigger", 70900002, 0, points._Q7006507TriggerPoint_.pos, points._Q7006507TriggerPoint_.rot, true, false, 20348, nil, 0, 0)
end

function Quest70065:OnSubFinish7006507(arg1)
    print("OnSubFinish7006507")
end

function Quest70065:OnSubFailed7006507(arg1)
    print("OnSubFailed7006507")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006515(arg1)
    print("OnSubStart7006515")
    actorMgr:CreateActorWithPos("Q7006515Trigger", "Actor/Gadget/Q7006515Trigger", 70900002, 0, points._Q7006515TriggerPoint_.pos, points._Q7006515TriggerPoint_.rot, true, false, 20348, nil, 0, 70065)
    this:DeployStoryByQuest(147006504)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
end

function Quest70065:OnSubFinish7006515(arg1)
    print("OnSubFinish7006515")
end

function Quest70065:OnSubFailed7006515(arg1)
    print("OnSubFailed7006515")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006508(arg1)
    print("OnSubStart7006508")
    this:DeployStoryByQuest(147006504)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
end

function Quest70065:OnSubFinish7006508(arg1)
    print("OnSubFinish7006508")
end

function Quest70065:OnSubFailed7006508(arg1)
    print("OnSubFailed7006508")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006509(arg1)
    print("OnSubStart7006509")
    actorMgr:CreateActorWithPos("Q7006509Trigger", "Actor/Gadget/Q7006509Trigger", 70900002, 0, points._Q7006509TriggerPoint_.pos, points._Q7006509TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:DeployStoryByQuest(147006504)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
end

function Quest70065:OnSubFinish7006509(arg1)
    print("OnSubFinish7006509")
end

function Quest70065:OnSubFailed7006509(arg1)
    print("OnSubFailed7006509")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006510(arg1)
    print("OnSubStart7006510")
    this:DeployStoryByQuest(147006504)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
end

function Quest70065:OnSubFinish7006510(arg1)
    print("OnSubFinish7006510")
end

function Quest70065:OnSubFailed7006510(arg1)
    print("OnSubFailed7006510")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006511(arg1)
    print("OnSubStart7006511")
    actorMgr:CreateActorWithPos("Q7006511Trigger", "Actor/Gadget/Q7006511Trigger", 70900002, 0, points._Q7006511TriggerPoint_.pos, points._Q7006511TriggerPoint_.rot, true, false, 20348, nil, 0, 0)
    this:DeployStoryByQuest(147006504)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
end

function Quest70065:OnSubFinish7006511(arg1)
    print("OnSubFinish7006511")
end

function Quest70065:OnSubFailed7006511(arg1)
    print("OnSubFailed7006511")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006559(arg1)
    print("OnSubStart7006559")
    this:DeployStoryByQuest(147006504)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
end

function Quest70065:OnSubFinish7006559(arg1)
    print("OnSubFinish7006559")
end

function Quest70065:OnSubFailed7006559(arg1)
    print("OnSubFailed7006559")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006518(arg1)
    print("OnSubStart7006518")
    this:DeployStoryByQuest(147006504)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
end

function Quest70065:OnSubFinish7006518(arg1)
    print("OnSubFinish7006518")
end

function Quest70065:OnSubFailed7006518(arg1)
    print("OnSubFailed7006518")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006512(arg1)
    print("OnSubStart7006512")
    this:NpcCreateWithNpcTrigger(npcs.Npc22272_1.id, 0, 12, 7006512)
    this:DeployStoryByQuest(147006504)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
    actorMgr:CreateActorWithPos("Q7006512Trigger", "Actor/Gadget/Q7006512Trigger", 70900002, 0, points.Q7006534Trigger.pos, points.Q7006534Trigger.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006512(arg1)
    print("OnSubFinish7006512")
end

function Quest70065:OnSubFailed7006512(arg1)
    print("OnSubFailed7006512")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006549(arg1)
    print("OnSubStart7006549")
    this:DeployStoryByQuest(147006504)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
end

function Quest70065:OnSubFinish7006549(arg1)
    print("OnSubFinish7006549")
    this:NpcDestroyWithBlackscreen(20348, npcs.Npc22272_1.alias)
    this:TransmitPlayerByQuestId(7006549, 2, nil, nil, nil)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
end

function Quest70065:OnSubFailed7006549(arg1)
    print("OnSubFailed7006549")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006504(arg1)
    print("OnSubStart7006504")
    this:CancelStoryByQuest(147006504)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1748.id, 0, 7006504, 8, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc22312.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Hoffman_1.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc22314.id, arg1)
    this:TransmitPlayerByQuestId(7006504, 2, nil, nil, nil)
end

function Quest70065:OnSubFinish7006504(arg1)
    print("OnSubFinish7006504")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1748.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22312.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Hoffman_1.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22314.alias)
    this:SetNavigationByMainId(70065, true)
end

function Quest70065:OnSubStart7006505(arg1)
    print("OnSubStart7006505")
    this:CreateQuestNpc(arg1, npcs.Hoffman_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7006505Trigger", "Actor/Gadget/Q7006505Trigger", 70900002, 0, points._Q7006505TriggerPoint_.pos, points._Q7006505TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70065:OnSubFinish7006505(arg1)
    print("OnSubFinish7006505")
end

function Quest70065:OnSubStart7006554(arg1)
    print("OnSubStart7006554")
end

function Quest70065:OnSubFinish7006554(arg1)
    print("OnSubFinish7006554")
end

function Quest70065:OnSubStart7006555(arg1)
    print("OnSubStart7006555")
    this:QuestNarratorTask(datas.NarratorWithId_7006555, nil)
end

function Quest70065:OnSubFinish7006555(arg1)
    print("OnSubFinish7006555")
end

function Quest70065:OnSubFailed7006555(arg1)
    print("OnSubFailed7006555")
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006557(arg1)
    print("OnSubStart7006557")
    actorMgr:CreateActorWithPos("Q7006557Trigger", "Actor/Gadget/Q7006557Trigger", 70900002, 0, points._Q7006557TriggerPoint_.pos, points._Q7006557TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70065:OnSubFinish7006557(arg1)
    print("OnSubFinish7006557")
end

function Quest70065:OnSubFailed7006557(arg1)
    print("OnSubFailed7006557")
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006506(arg1)
    print("OnSubStart7006506")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7006506, 0, 4, 0, npcs.Npc22272_1.id)
end

function Quest70065:OnSubFinish7006506(arg1)
    print("OnSubFinish7006506")
    this:NpcDestroyImmediately(3, npcs.Npc22272_1.alias)
end

function Quest70065:OnSubFailed7006506(arg1)
    print("OnSubFailed7006506")
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006556(arg1)
    print("OnSubStart7006556")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc22272_1.id, arg1)
    this:GetQuestNpcActor(npcs.Npc22272_1.alias, 70065):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest70065:OnSubFinish7006556(arg1)
    print("OnSubFinish7006556")
end

function Quest70065:OnSubFailed7006556(arg1)
    print("OnSubFailed7006556")
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006517(arg1)
    print("OnSubStart7006517")
end

function Quest70065:OnSubFinish7006517(arg1)
    print("OnSubFinish7006517")
    this:QuestNarratorTask(datas.NarratorWithId_7006517, nil)
end

function Quest70065:OnSubFailed7006517(arg1)
    print("OnSubFailed7006517")
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006519(arg1)
    print("OnSubStart7006519")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc22272_1.id, arg1)
    actorMgr:CreateActorWithPos("Q7006519Trigger", "Actor/Gadget/Q7006519Trigger", 70900002, 0, points._Q7006519TriggerPoint_.pos, points._Q7006519TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorUtils.FinishQuestID(true, 7006556)
end

function Quest70065:OnSubFinish7006519(arg1)
    print("OnSubFinish7006519")
end

function Quest70065:OnSubFailed7006519(arg1)
    print("OnSubFailed7006519")
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006514(arg1)
    print("OnSubStart7006514")
    this:CreateQuestNpc(arg1, npcs.Npc22477.id, 0, false, 0)
end

function Quest70065:OnSubFinish7006514(arg1)
    print("OnSubFinish7006514")
    this:SafeDestroyQuestNpc(npcs.Npc22477.alias, 3)
end

function Quest70065:OnSubStart7006516(arg1)
    print("OnSubStart7006516")
end

function Quest70065:OnSubFinish7006516(arg1)
    print("OnSubFinish7006516")
end

function Quest70065:OnSubStart7006553(arg1)
    print("OnSubStart7006553")
    this:NpcCreateWithNpcTrigger(npcs.Npc22272_1.id, 0, 6, 7006553)
    this:NpcCreateWithBlackscreen(0, npcs.Npc22305.id, arg1)
end

function Quest70065:OnSubFinish7006553(arg1)
    print("OnSubFinish7006553")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22272_1.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22305.alias)
end

function Quest70065:OnSubStart7006520(arg1)
    print("OnSubStart7006520")
end

function Quest70065:OnSubFinish7006520(arg1)
    print("OnSubFinish7006520")
    this:SafeDestroyQuestNpc(npcs.Hoffman_1.alias, 3)
end

function Quest70065:OnSubStart7006558(arg1)
    print("OnSubStart7006558")
    this:PlayCutsceneIndex(70065, function(arg1)
        actorUtils.FinishQuestID(false, 7006558)
    end, nil, nil, false)
end

function Quest70065:OnSubFinish7006558(arg1)
    print("OnSubFinish7006558")
end

function Quest70065:OnSubStart7006521(arg1)
    print("OnSubStart7006521")
end

function Quest70065:OnSubFinish7006521(arg1)
    print("OnSubFinish7006521")
    this:TransmitPlayerByQuestId(7006521, 3, nil, nil, nil)
end

function Quest70065:OnSubStart7006522(arg1)
    print("OnSubStart7006522")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7006522, 0, 6, 2, npcs.Npc22272_1.id)
end

function Quest70065:OnSubFinish7006522(arg1)
    print("OnSubFinish7006522")
    this:NpcDestroyWithAfterIntercall(103, npcs.Npc22272_1.alias)
end

function Quest70065:OnSubStart7006523(arg1)
    print("OnSubStart7006523")
    actorMgr:CreateActorWithPos("Q7006523Trigger", "Actor/Gadget/Q7006523Trigger", 70900002, 0, points._Q7006523TriggerPoint_.pos, points._Q7006523TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006523(arg1)
    print("OnSubFinish7006523")
end

function Quest70065:OnSubStart7006524(arg1)
    print("OnSubStart7006524")
    actorMgr:CreateActorWithPos("Q7006524Trigger", "Actor/Gadget/Q7006524Trigger", 70900002, 0, points._Q7006524TriggerPoint_.pos, points._Q7006524TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006524(arg1)
    print("OnSubFinish7006524")
end

function Quest70065:OnSubStart7006525(arg1)
    print("OnSubStart7006525")
end

function Quest70065:OnSubFinish7006525(arg1)
    print("OnSubFinish7006525")
    this:QuestNarratorTask(datas.NarratorWithId_7006526, nil)
end

function Quest70065:OnSubStart7006526(arg1)
    print("OnSubStart7006526")
    actorMgr:CreateActorWithPos("Q7006526Trigger", "Actor/Gadget/Q7006526Trigger", 70900002, 0, points._Q7006526TriggerPoint_.pos, points._Q7006526TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006526(arg1)
    print("OnSubFinish7006526")
end

function Quest70065:OnSubStart7006527(arg1)
    print("OnSubStart7006527")
    actorMgr:CreateActorWithPos("Q7006527Trigger", "Actor/Gadget/Q7006527Trigger", 70900002, 0, points._Q7006527TriggerPoint_.pos, points._Q7006527TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006527(arg1)
    print("OnSubFinish7006527")
end

function Quest70065:OnSubStart7006530(arg1)
    print("OnSubStart7006530")
end

function Quest70065:OnSubFinish7006530(arg1)
    print("OnSubFinish7006530")
end

function Quest70065:OnSubStart7006528(arg1)
    print("OnSubStart7006528")
    actorMgr:CreateActorWithPos("Q7006528Trigger", "Actor/Gadget/Q7006528Trigger", 70900002, 0, points._Q7006528TriggerPoint_.pos, points._Q7006528TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006528(arg1)
    print("OnSubFinish7006528")
end

function Quest70065:OnSubStart7006531(arg1)
    print("OnSubStart7006531")
end

function Quest70065:OnSubFinish7006531(arg1)
    print("OnSubFinish7006531")
end

function Quest70065:OnSubStart7006529(arg1)
    print("OnSubStart7006529")
    actorMgr:CreateActorWithPos("Q7006529Trigger", "Actor/Gadget/Q7006529Trigger", 70900002, 0, points._Q7006529TriggerPoint_.pos, points._Q7006529TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006529(arg1)
    print("OnSubFinish7006529")
end

function Quest70065:OnSubStart7006532(arg1)
    print("OnSubStart7006532")
    this:CreateQuestNpc(arg1, npcs.Npc22306.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22306.alias, 70065):DoFreeStyle(4190, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q7006532Trigger", "Actor/Gadget/Q7006532Trigger", 70900002, 0, points._Q7006532TriggerPoint_.pos, points._Q7006532TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
end

function Quest70065:OnSubFinish7006532(arg1)
    print("OnSubFinish7006532")
    this:QuestNarratorTask(datas.NarratorWithId_7006532, nil)
end

function Quest70065:OnSubStart7006533(arg1)
    print("OnSubStart7006533")
    actorMgr:CreateActorWithPos("Q7006533Trigger", "Actor/Gadget/Q7006533Trigger", 70900002, 0, points._Q7006533TriggerPoint_.pos, points._Q7006533TriggerPoint_.rot, true, false, 103, nil, 0, 70065)
end

function Quest70065:OnSubFinish7006533(arg1)
    print("OnSubFinish7006533")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22306.alias)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
end

function Quest70065:OnSubStart7006534(arg1)
    print("OnSubStart7006534")
    actorMgr:CreateActorWithPos("Q7006534Trigger", "Actor/Gadget/Q7006534Trigger", 70900002, 0, points.Q7006534Trigger.pos, points.Q7006534Trigger.rot, true, false, 103, nil, 0, 0)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
end

function Quest70065:OnSubFinish7006534(arg1)
    print("OnSubFinish7006534")
end

function Quest70065:OnSubFailed7006534(arg1)
    print("OnSubFailed7006534")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006535(arg1)
    print("OnSubStart7006535")
    actorMgr:CreateActorWithPos("Q7006535Trigger", "Actor/Gadget/Q7006535Trigger", 70900002, 0, points._Q7006535TriggerPoint_.pos, points._Q7006535TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
end

function Quest70065:OnSubFinish7006535(arg1)
    print("OnSubFinish7006535")
end

function Quest70065:OnSubFailed7006535(arg1)
    print("OnSubFailed7006535")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006537(arg1)
    print("OnSubStart7006537")
    this:NpcCreateWithNpcTrigger(npcs.Npc22306.id, 0, 100, 7006537)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", true)
end

function Quest70065:OnSubFinish7006537(arg1)
    print("OnSubFinish7006537")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22306.alias)
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
end

function Quest70065:OnSubFailed7006537(arg1)
    print("OnSubFailed7006537")
    actorUtils.SetMainPageFeatureDisable(70065, "MiniMap", false)
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006538(arg1)
    print("OnSubStart7006538")
    actorMgr:CreateActorWithPos("Q7006538Trigger", "Actor/Gadget/Q7006538Trigger", 70900002, 0, points._Q7006538TriggerPoint_.pos, points._Q7006538TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006538(arg1)
    print("OnSubFinish7006538")
end

function Quest70065:OnSubStart7006539(arg1)
    print("OnSubStart7006539")
end

function Quest70065:OnSubFinish7006539(arg1)
    print("OnSubFinish7006539")
end

function Quest70065:OnSubStart7006540(arg1)
    print("OnSubStart7006540")
end

function Quest70065:OnSubFinish7006540(arg1)
    print("OnSubFinish7006540")
end

function Quest70065:OnSubStart7006541(arg1)
    print("OnSubStart7006541")
    this:NpcCreateWithBlackscreen(0, npcs.Npc22307.id, arg1)
    this:NpcCreateWithBlackscreen(0, npcs.Npc22306.id, arg1)
    this:CallDelay(1, function(arg1)
        this:TransmitPlayerByQuestId(7006541, 4, nil, nil, nil)
    end)
end

function Quest70065:OnSubFinish7006541(arg1)
    print("OnSubFinish7006541")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22307.alias)
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22306.alias)
end

function Quest70065:OnSubStart7006543(arg1)
    print("OnSubStart7006543")
    actorMgr:CreateActorWithPos("Q7006543Trigger", "Actor/Gadget/Q7006543Trigger", 70900002, 0, points._Q7006543TriggerPoint_.pos, points._Q7006543TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006543(arg1)
    print("OnSubFinish7006543")
end

function Quest70065:OnSubFailed7006543(arg1)
    print("OnSubFailed7006543")
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006552(arg1)
    print("OnSubStart7006552")
    actorMgr:CreateActorWithPos("Q7006552Trigger", "Actor/Gadget/Q7006552Trigger", 70900002, 0, points._Q7006552TriggerPoint_.pos, points._Q7006552TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006552(arg1)
    print("OnSubFinish7006552")
end

function Quest70065:OnSubFailed7006552(arg1)
    print("OnSubFailed7006552")
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006546(arg1)
    print("OnSubStart7006546")
    actorMgr:CreateActorWithPos("Q7006546Trigger", "Actor/Gadget/Q7006546Trigger", 70900002, 0, points._Q7006546TriggerPoint_.pos, points._Q7006546TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006546(arg1)
    print("OnSubFinish7006546")
end

function Quest70065:OnSubStart7006547(arg1)
    print("OnSubStart7006547")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7006547, 0, 5, 2, npcs.Npc22272_1.id)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc22306.id, 0, 7006547, 5, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7006547, 0, 5, 2, npcs.Npc22307.id)
    actorMgr:CreateActorWithPos("Q7006547Trigger", "Actor/Gadget/Q7006547Trigger", 70900002, 0, points._Q7006547TriggerPoint_.pos, points._Q7006547TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006547(arg1)
    print("OnSubFinish7006547")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22272_1.alias)
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22306.alias)
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22307.alias)
end

function Quest70065:OnSubStart7006548(arg1)
    print("OnSubStart7006548")
    actorMgr:CreateActorWithPos("Q7006548Trigger", "Actor/Gadget/Q7006548Trigger", 70900002, 0, points._Q7006548TriggerPoint_.pos, points._Q7006548TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006548(arg1)
    print("OnSubFinish7006548")
end

function Quest70065:OnSubStart7006550(arg1)
    print("OnSubStart7006550")
end

function Quest70065:OnSubFinish7006550(arg1)
    print("OnSubFinish7006550")
end

function Quest70065:OnSubStart7006551(arg1)
    print("OnSubStart7006551")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7006551, 0, 30, 1, npcs.Npc22272_1.id)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7006551, 0, 32, 1, npcs.Npc22306.id)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7006551, 0, 32, 1, npcs.Npc22307.id)
end

function Quest70065:OnSubFinish7006551(arg1)
    print("OnSubFinish7006551")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22272_1.alias)
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22306.alias)
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22307.alias)
end

function Quest70065:OnSubStart7006501(arg1)
    print("OnSubStart7006501")
    actorMgr:CreateActorWithPos("Q7006501Trigger", "Actor/Gadget/Q7006501Trigger", 70900002, 0, points._Q7006501TriggerPoint_.pos, points._Q7006501TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70065:OnSubFinish7006501(arg1)
    print("OnSubFinish7006501")
end

function Quest70065:OnSubStart7006502(arg1)
    print("OnSubStart7006502")
    actorMgr:CreateActorWithPos("Q7006502Trigger", "Actor/Gadget/Q7006502Trigger", 70900002, 0, points._Q7006502TriggerPoint_.pos, points._Q7006502TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:CancelNavigation(0)
end

function Quest70065:OnSubFinish7006502(arg1)
    print("OnSubFinish7006502")
end

function Quest70065:OnSubStart7006503(arg1)
    print("OnSubStart7006503")
    globalActor:PlayerEnterDungeonPoint(1988, 1329, 7006503, 1)
    this:DeployStoryByQuest(147006504)
    actorMgr:CreateActorWithPos("Q7006503Trigger", "Actor/Gadget/Q7006503Trigger", 70900002, 0, points._Q7006503TriggerPoint_.pos, points._Q7006503TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest70065:OnSubFinish7006503(arg1)
    print("OnSubFinish7006503")
end

function Quest70065:OnSubStart7006513(arg1)
    print("OnSubStart7006513")
    this:DisableMainPageWithConfigByQuest(true, "DisableV6_5ElderMemory")
end

function Quest70065:OnSubFinish7006513(arg1)
    print("OnSubFinish7006513")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
end

function Quest70065:OnSubFailed7006513(arg1)
    print("OnSubFailed7006513")
    this:DisableMainPageWithConfigByQuest(false, "DisableV6_5ElderMemory")
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006536(arg1)
    print("OnSubStart7006536")
    actorMgr:CreateActorWithPos("Q7006536Trigger", "Actor/Gadget/Q7006536Trigger", 70900002, 0, points._Q7006536TriggerPoint_.pos, points._Q7006536TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006536(arg1)
    print("OnSubFinish7006536")
end

function Quest70065:OnSubFailed7006536(arg1)
    print("OnSubFailed7006536")
    this:RecycleAllRes()
end

function Quest70065:OnSubStart7006542(arg1)
    print("OnSubStart7006542")
    actorMgr:CreateActorWithPos("Q7006542Trigger", "Actor/Gadget/Q7006542Trigger", 70900002, 0, points._Q7006542TriggerPoint_.pos, points._Q7006542TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006542(arg1)
    print("OnSubFinish7006542")
end

function Quest70065:OnSubStart7006544(arg1)
    print("OnSubStart7006544")
    actorMgr:CreateActorWithPos("Q7006544Trigger", "Actor/Gadget/Q7006544Trigger", 70900002, 0, points._Q7006544TriggerPoint_.pos, points._Q7006544TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006544(arg1)
    print("OnSubFinish7006544")
end

function Quest70065:OnSubStart7006545(arg1)
    print("OnSubStart7006545")
    actorMgr:CreateActorWithPos("Q7006545Trigger", "Actor/Gadget/Q7006545Trigger", 70900002, 0, points._Q7006545TriggerPoint_.pos, points._Q7006545TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest70065:OnSubFinish7006545(arg1)
    print("OnSubFinish7006545")
end

return Quest70065
