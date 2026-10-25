require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6012 = class("Quest6012", QuestActorProxy)
Quest6012.defaultAlias = "Quest6012"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6012:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["601201"] = self.OnSubStart601201,
        ["601209"] = self.OnSubStart601209,
        ["601202"] = self.OnSubStart601202,
        ["601204"] = self.OnSubStart601204,
        ["601210"] = self.OnSubStart601210,
        ["601206"] = self.OnSubStart601206,
        ["601207"] = self.OnSubStart601207,
        ["601212"] = self.OnSubStart601212,
        ["601208"] = self.OnSubStart601208,
        ["601211"] = self.OnSubStart601211,
        ["601205"] = self.OnSubStart601205,
        ["601203"] = self.OnSubStart601203
    }
end

function Quest6012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["601201"] = self.OnSubFinish601201,
        ["601209"] = self.OnSubFinish601209,
        ["601202"] = self.OnSubFinish601202,
        ["601204"] = self.OnSubFinish601204,
        ["601210"] = self.OnSubFinish601210,
        ["601206"] = self.OnSubFinish601206,
        ["601207"] = self.OnSubFinish601207,
        ["601212"] = self.OnSubFinish601212,
        ["601208"] = self.OnSubFinish601208,
        ["601211"] = self.OnSubFinish601211,
        ["601205"] = self.OnSubFinish601205,
        ["601203"] = self.OnSubFinish601203
    }
end

function Quest6012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["601206"] = self.OnSubFailed601206}
end

function Quest6012:Start()
    print("Start")
end

function Quest6012:OnDestroy()
    print("OnDestroy")
end

function Quest6012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6012:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q601205Trigger")
    this:ActorDestroy("Q601211Trigger")
    this:BanCrowdNpc(3607, 4, nil, false, true)
end

function Quest6012:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 601212 then
        actorUtils.FinishQuestID(false, 601212)
    end
end

function Quest6012:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6012:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest6012:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6012:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6012:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6012:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6012:OnSubStart601201(arg1)
    print("OnSubStart601201")
end

function Quest6012:OnSubFinish601201(arg1)
    print("OnSubFinish601201")
end

function Quest6012:OnSubStart601209(arg1)
    print("OnSubStart601209")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601209, 0, 20, 0, npcs.Npc15712.id)
end

function Quest6012:OnSubFinish601209(arg1)
    print("OnSubFinish601209")
    this:NpcDestroyImmediately(3, npcs.Npc15712.alias)
end

function Quest6012:OnSubStart601202(arg1)
    print("OnSubStart601202")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601202, 0, 15, 0, npcs.Npc1314.id)
    this:DailyNpcSafeHideSelf(npcs.Npc7129.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7130.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7131.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc7132.alias, true, 1)
    this:BanCrowdNpc(3607, 4, nil, true, true)
end

function Quest6012:OnSubFinish601202(arg1)
    print("OnSubFinish601202")
    this:LightNotifyTo(npcs.Npc7129.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7130.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7131.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7132.alias, 0, true)
    this:BanCrowdNpc(3607, 4, nil, false, true)
end

function Quest6012:OnSubStart601204(arg1)
    print("OnSubStart601204")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc1314.id, 0, 8, 601204)
        this:GetQuestNpcActor(npcs.Npc1314.alias, 6012):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1315.alias, 6012):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1317.alias, 6012):DoFreeStyle(1050, true, nil, true, true, false, false)
    end)
end

function Quest6012:OnSubFinish601204(arg1)
    print("OnSubFinish601204")
    this:NpcDestroyImmediately(3, npcs.Npc1314.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1315.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1317.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, datas.TransmitDataBlackScreen)
end

function Quest6012:OnSubStart601210(arg1)
    print("OnSubStart601210")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc15712.id, 0, 601210, 10, true)
end

function Quest6012:OnSubFinish601210(arg1)
    print("OnSubFinish601210")
    this:NpcDestroyImmediately(3, npcs.Npc15712.alias)
    this:SetNavigationByMainId(6012, true)
end

function Quest6012:OnSubStart601206(arg1)
    print("OnSubStart601206")
    actorUtils.SetMainPageFeatureDisable(6012, "MoonPhaseLevelBanner", true)
    this:ActionSafeCall(function(arg1)
        actorUtils.SimpleUIShowForLua(false, "InLevelVarkaLoadingDialog", "100", datas.StringList)
    end)
end

function Quest6012:OnSubFinish601206(arg1)
    print("OnSubFinish601206")
    actorUtils.SimpleUIShowForLua(true, "InLevelVarkaLoadingDialog", "0", datas.StringList)
    actorUtils.SetMainPageFeatureDisable(6012, "MoonPhaseLevelBanner", false)
end

function Quest6012:OnSubFailed601206(arg1)
    print("OnSubFailed601206")
    actorUtils.SimpleUIShowForLua(true, "InLevelVarkaLoadingDialog", "0", datas.StringList)
    actorUtils.SetMainPageFeatureDisable(6012, "MoonPhaseLevelBanner", false)
end

function Quest6012:OnSubStart601207(arg1)
    print("OnSubStart601207")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601207, 0, 60, 2, npcs.Npc1310.id)
end

function Quest6012:OnSubFinish601207(arg1)
    print("OnSubFinish601207")
    this:NpcDestroyImmediately(3, npcs.Npc1310.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitDataBlackScreen, nil, nil, nil)
end

function Quest6012:OnSubStart601212(arg1)
    print("OnSubStart601212")
end

function Quest6012:OnSubFinish601212(arg1)
    print("OnSubFinish601212")
end

function Quest6012:OnSubStart601208(arg1)
    print("OnSubStart601208")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601208, 0, 10, 2, npcs.Npc1310.id)
end

function Quest6012:OnSubFinish601208(arg1)
    print("OnSubFinish601208")
    this:NpcDestroyImmediately(1153, npcs.Npc1310.alias)
end

function Quest6012:OnSubStart601211(arg1)
    print("OnSubStart601211")
    actorMgr:CreateActorWithPos("Q601211Trigger", "Actor/Gadget/Q601211Trigger", 70900002, 0, points._Q601211TriggerPoint_.pos, points._Q601211TriggerPoint_.rot, true, false, 1153)
end

function Quest6012:OnSubFinish601211(arg1)
    print("OnSubFinish601211")
    this:ActorDestroy("Q601211Trigger")
end

function Quest6012:OnSubStart601205(arg1)
    print("OnSubStart601205")
    actorMgr:CreateActorWithPos("Q601205Trigger", "Actor/Gadget/Q601205Trigger", 70900002, 0, points._Q601205TriggerPoint_.pos, points._Q601205TriggerPoint_.rot, true, false, 3)
end

function Quest6012:OnSubFinish601205(arg1)
    print("OnSubFinish601205")
    this:TransmitPlayerById(arg1, 1, nil, nil, datas.TransmitDataBlackScreen)
end

function Quest6012:OnSubStart601203(arg1)
    print("OnSubStart601203")
end

function Quest6012:OnSubFinish601203(arg1)
    print("OnSubFinish601203")
end

return Quest6012
