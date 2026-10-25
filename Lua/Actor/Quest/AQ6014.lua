require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6014 = class("Quest6014", QuestActorProxy)
Quest6014.defaultAlias = "Quest6014"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6014:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["601401"] = self.OnSubStart601401,
        ["601402"] = self.OnSubStart601402,
        ["601429"] = self.OnSubStart601429,
        ["601403"] = self.OnSubStart601403,
        ["601425"] = self.OnSubStart601425,
        ["601414"] = self.OnSubStart601414,
        ["601404"] = self.OnSubStart601404,
        ["601426"] = self.OnSubStart601426,
        ["601405"] = self.OnSubStart601405,
        ["601428"] = self.OnSubStart601428,
        ["601419"] = self.OnSubStart601419,
        ["601424"] = self.OnSubStart601424,
        ["601406"] = self.OnSubStart601406,
        ["601415"] = self.OnSubStart601415,
        ["601420"] = self.OnSubStart601420,
        ["601416"] = self.OnSubStart601416,
        ["601421"] = self.OnSubStart601421,
        ["601417"] = self.OnSubStart601417,
        ["601422"] = self.OnSubStart601422,
        ["601418"] = self.OnSubStart601418,
        ["601408"] = self.OnSubStart601408,
        ["601423"] = self.OnSubStart601423,
        ["601409"] = self.OnSubStart601409,
        ["601411"] = self.OnSubStart601411,
        ["601412"] = self.OnSubStart601412,
        ["601427"] = self.OnSubStart601427,
        ["601407"] = self.OnSubStart601407,
        ["601410"] = self.OnSubStart601410,
        ["601413"] = self.OnSubStart601413
    }
end

function Quest6014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["601401"] = self.OnSubFinish601401,
        ["601402"] = self.OnSubFinish601402,
        ["601429"] = self.OnSubFinish601429,
        ["601403"] = self.OnSubFinish601403,
        ["601425"] = self.OnSubFinish601425,
        ["601414"] = self.OnSubFinish601414,
        ["601404"] = self.OnSubFinish601404,
        ["601426"] = self.OnSubFinish601426,
        ["601405"] = self.OnSubFinish601405,
        ["601428"] = self.OnSubFinish601428,
        ["601419"] = self.OnSubFinish601419,
        ["601424"] = self.OnSubFinish601424,
        ["601406"] = self.OnSubFinish601406,
        ["601415"] = self.OnSubFinish601415,
        ["601420"] = self.OnSubFinish601420,
        ["601416"] = self.OnSubFinish601416,
        ["601421"] = self.OnSubFinish601421,
        ["601417"] = self.OnSubFinish601417,
        ["601422"] = self.OnSubFinish601422,
        ["601418"] = self.OnSubFinish601418,
        ["601408"] = self.OnSubFinish601408,
        ["601423"] = self.OnSubFinish601423,
        ["601409"] = self.OnSubFinish601409,
        ["601411"] = self.OnSubFinish601411,
        ["601412"] = self.OnSubFinish601412,
        ["601427"] = self.OnSubFinish601427,
        ["601407"] = self.OnSubFinish601407,
        ["601410"] = self.OnSubFinish601410,
        ["601413"] = self.OnSubFinish601413
    }
end

function Quest6014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["601402"] = self.OnSubFailed601402,
        ["601429"] = self.OnSubFailed601429,
        ["601414"] = self.OnSubFailed601414,
        ["601405"] = self.OnSubFailed601405,
        ["601419"] = self.OnSubFailed601419,
        ["601424"] = self.OnSubFailed601424,
        ["601406"] = self.OnSubFailed601406,
        ["601415"] = self.OnSubFailed601415,
        ["601416"] = self.OnSubFailed601416,
        ["601417"] = self.OnSubFailed601417,
        ["601418"] = self.OnSubFailed601418,
        ["601409"] = self.OnSubFailed601409,
        ["601412"] = self.OnSubFailed601412
    }
end

function Quest6014:Start()
    print("Start")
end

function Quest6014:OnDestroy()
    print("OnDestroy")
end

function Quest6014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6014:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q601411Trigger")
    this:ActorDestroy("Q601424Trigger")
    this:ActorDestroy("Q601419Trigger")
    this:ActorDestroy("Q601425Trigger")
    this:ActorDestroy("Q601411Trigger_2")
    this:ActorDestroy("Q601426Trigger")
    this:ActorDestroy("Q601426Trigger_2")
end

function Quest6014:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 601428 then
        actorUtils.FinishQuestID(false, 601428)
    end
end

function Quest6014:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6014:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6014:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6014:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6014:OnSubStart601401(arg1)
    print("OnSubStart601401")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1318.id, 0, 601401, 10, true)
end

function Quest6014:OnSubFinish601401(arg1)
    print("OnSubFinish601401")
    this:NpcDestroyImmediately(3, npcs.Npc1318.alias)
end

function Quest6014:OnSubStart601402(arg1)
    print("OnSubStart601402")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110601401)
    end)
end

function Quest6014:OnSubFinish601402(arg1)
    print("OnSubFinish601402")
    this:CancelStoryByQuest(110601401)
end

function Quest6014:OnSubFailed601402(arg1)
    print("OnSubFailed601402")
    this:CancelStoryByQuest(110601401)
    this:ClearNarratorTask()
end

function Quest6014:OnSubStart601429(arg1)
    print("OnSubStart601429")
end

function Quest6014:OnSubFinish601429(arg1)
    print("OnSubFinish601429")
end

function Quest6014:OnSubFailed601429(arg1)
    print("OnSubFailed601429")
    this:CancelStoryByQuest(110601401)
    this:TransmitPlayerByData(arg1, 16, datas.TransmitDataBlackScreen, nil, nil, nil)
    this:ClearNarratorTask()
end

function Quest6014:OnSubStart601403(arg1)
    print("OnSubStart601403")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601403, 0, 8, 2, npcs.Npc1080.id)
end

function Quest6014:OnSubFinish601403(arg1)
    print("OnSubFinish601403")
    this:NpcDestroyImmediately(3, npcs.Npc1080.alias)
end

function Quest6014:OnSubStart601425(arg1)
    print("OnSubStart601425")
    actorMgr:CreateActorWithPos("Q601425Trigger", "Actor/Gadget/Q601425Trigger", 70900002, 0, points._Q601425TriggerPoint_.pos, points._Q601425TriggerPoint_.rot, true, false, 3)
end

function Quest6014:OnSubFinish601425(arg1)
    print("OnSubFinish601425")
    this:ActorDestroy("Q601425Trigger")
end

function Quest6014:OnSubStart601414(arg1)
    print("OnSubStart601414")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601414, 0, 20, 2, npcs.Npc1319.id)
end

function Quest6014:OnSubFinish601414(arg1)
    print("OnSubFinish601414")
    this:NpcDestroyImmediately(20293, npcs.Npc1319.alias)
end

function Quest6014:OnSubFailed601414(arg1)
    print("OnSubFailed601414")
    this:SafeDestroyQuestNpc(npcs.Npc1319.alias, 20293)
    this:DestroyNpcTrigger("Q601414N1319Trigger")
end

function Quest6014:OnSubStart601404(arg1)
    print("OnSubStart601404")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20293 then
                this:TransmitPlayerByData(arg1, 9, datas.TransmitDatadSpecial05, nil, nil, nil)
            end
        end)

        this:NpcCreateWithNpcTriggerAndBlackscreen(601404, 0, 50, 2, npcs.Npc1080.id)
    end)
end

function Quest6014:OnSubFinish601404(arg1)
    print("OnSubFinish601404")
    this:NpcDestroyImmediately(1153, npcs.Npc1080.alias)
    this:PlayerEnterDungeonWithData(4, 1274, 601404, 2, datas.PlayerEnterDungeonSpecial06, nil, nil)
end

function Quest6014:OnSubStart601426(arg1)
    print("OnSubStart601426")
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6014):SitOnChair(0, false)
end

function Quest6014:OnSubFinish601426(arg1)
    print("OnSubFinish601426")
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 1153)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 1153)
end

function Quest6014:OnSubStart601405(arg1)
    print("OnSubStart601405")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601405, 0, 5, 2, npcs.Npc1080.id)
end

function Quest6014:OnSubFinish601405(arg1)
    print("OnSubFinish601405")
end

function Quest6014:OnSubFailed601405(arg1)
    print("OnSubFailed601405")
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 20294)
    this:DestroyNpcTrigger("Q601405N1080Trigger")
end

function Quest6014:OnSubStart601428(arg1)
    print("OnSubStart601428")
end

function Quest6014:OnSubFinish601428(arg1)
    print("OnSubFinish601428")
end

function Quest6014:OnSubStart601419(arg1)
    print("OnSubStart601419")
    actorMgr:CreateActorWithPos("Q601419Trigger", "Actor/Gadget/Q601419Trigger", 70900002, 0, points._Q601419TriggerPoint_.pos, points._Q601419TriggerPoint_.rot, true, false, 20294)
end

function Quest6014:OnSubFinish601419(arg1)
    print("OnSubFinish601419")
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 20294)
    this:ActorDestroy("Q601419Trigger")
end

function Quest6014:OnSubFailed601419(arg1)
    print("OnSubFailed601419")
    this:ActorDestroy("Q601419Trigger")
end

function Quest6014:OnSubStart601424(arg1)
    print("OnSubStart601424")
    actorMgr:CreateActorWithPos("Q601424Trigger", "Actor/Gadget/Q601424Trigger", 70900002, 0, points._Q601424TriggerPoint_.pos, points._Q601424TriggerPoint_.rot, true, false, 20284)
end

function Quest6014:OnSubFinish601424(arg1)
    print("OnSubFinish601424")
end

function Quest6014:OnSubFailed601424(arg1)
    print("OnSubFailed601424")
    this:ActorDestroy("Q601424Trigger")
end

function Quest6014:OnSubStart601406(arg1)
    print("OnSubStart601406")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601406, 0, 15, 2, npcs.Npc15712.id)
end

function Quest6014:OnSubFinish601406(arg1)
    print("OnSubFinish601406")
    this:NpcDestroyImmediately(20284, npcs.Npc15712.alias)
end

function Quest6014:OnSubFailed601406(arg1)
    print("OnSubFailed601406")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20284)
    this:DestroyNpcTrigger("Q601406N15712Trigger")
end

function Quest6014:OnSubStart601415(arg1)
    print("OnSubStart601415")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601415, 0, 40, 2, npcs.Npc15712.id)
end

function Quest6014:OnSubFinish601415(arg1)
    print("OnSubFinish601415")
    this:NpcDestroyImmediately(20284, npcs.Npc15712.alias)
end

function Quest6014:OnSubFailed601415(arg1)
    print("OnSubFailed601415")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20284)
    this:DestroyNpcTrigger("Q601415N15712Trigger")
end

function Quest6014:OnSubStart601420(arg1)
    print("OnSubStart601420")
end

function Quest6014:OnSubFinish601420(arg1)
    print("OnSubFinish601420")
end

function Quest6014:OnSubStart601416(arg1)
    print("OnSubStart601416")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601416, 0, 10, 2, npcs.Npc15712.id)
end

function Quest6014:OnSubFinish601416(arg1)
    print("OnSubFinish601416")
    this:NpcDestroyImmediately(20284, npcs.Npc15712.alias)
end

function Quest6014:OnSubFailed601416(arg1)
    print("OnSubFailed601416")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20284)
    this:DestroyNpcTrigger("Q601416N15712Trigger")
end

function Quest6014:OnSubStart601421(arg1)
    print("OnSubStart601421")
end

function Quest6014:OnSubFinish601421(arg1)
    print("OnSubFinish601421")
end

function Quest6014:OnSubStart601417(arg1)
    print("OnSubStart601417")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601417, 0, 10, 2, npcs.Npc15712.id)
end

function Quest6014:OnSubFinish601417(arg1)
    print("OnSubFinish601417")
    this:NpcDestroyImmediately(20284, npcs.Npc15712.alias)
end

function Quest6014:OnSubFailed601417(arg1)
    print("OnSubFailed601417")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20284)
    this:DestroyNpcTrigger("Q601417N15712Trigger")
end

function Quest6014:OnSubStart601422(arg1)
    print("OnSubStart601422")
end

function Quest6014:OnSubFinish601422(arg1)
    print("OnSubFinish601422")
end

function Quest6014:OnSubStart601418(arg1)
    print("OnSubStart601418")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601418, 0, 10, 2, npcs.Npc15712.id)
end

function Quest6014:OnSubFinish601418(arg1)
    print("OnSubFinish601418")
    this:NpcDestroyImmediately(20284, npcs.Npc15712.alias)
end

function Quest6014:OnSubFailed601418(arg1)
    print("OnSubFailed601418")
    this:DestroyNpcTrigger("Q601418N15712Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20284)
end

function Quest6014:OnSubStart601408(arg1)
    print("OnSubStart601408")
end

function Quest6014:OnSubFinish601408(arg1)
    print("OnSubFinish601408")
end

function Quest6014:OnSubStart601423(arg1)
    print("OnSubStart601423")
end

function Quest6014:OnSubFinish601423(arg1)
    print("OnSubFinish601423")
end

function Quest6014:OnSubStart601409(arg1)
    print("OnSubStart601409")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601409, 0, 80, 2, npcs.Npc15712.id)
end

function Quest6014:OnSubFinish601409(arg1)
    print("OnSubFinish601409")
    this:NpcDestroyImmediately(20284, npcs.Npc15712.alias)
end

function Quest6014:OnSubFailed601409(arg1)
    print("OnSubFailed601409")
    this:SafeDestroyQuestNpc(npcs.Npc15712.alias, 20284)
    this:DestroyNpcTrigger("Q601409N15712Trigger")
end

function Quest6014:OnSubStart601411(arg1)
    print("OnSubStart601411")
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q601411Trigger", "Actor/Gadget/Q601411Trigger", 70900002, 0, points._Q601411TriggerPoint_.pos, points._Q601411TriggerPoint_.rot, true, false, 20284)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 6014):SitOnChair(0, false)
end

function Quest6014:OnSubFinish601411(arg1)
    print("OnSubFinish601411")
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 1153)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 1153)
    this:ActorDestroy("Q601411Trigger")
end

function Quest6014:OnSubStart601412(arg1)
    print("OnSubStart601412")
    this:NpcCreateWithNpcTriggerAndBlackscreen(601412, 0, 20, 2, npcs.Npc1080.id)
end

function Quest6014:OnSubFinish601412(arg1)
    print("OnSubFinish601412")
    this:NpcDestroyImmediately(20294, npcs.Npc1080.alias)
end

function Quest6014:OnSubFailed601412(arg1)
    print("OnSubFailed601412")
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 20294)
    this:DestroyNpcTrigger("Q601412N1080Trigger")
end

function Quest6014:OnSubStart601427(arg1)
    print("OnSubStart601427")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20294 then
                this:TransmitPlayerByData(arg1, 12, datas.TransmitDataBlackScreen, nil, nil, nil)
            end
        end)
    end)
end

function Quest6014:OnSubFinish601427(arg1)
    print("OnSubFinish601427")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_601412, nil)
    end)
end

function Quest6014:OnSubStart601407(arg1)
    print("OnSubStart601407")
end

function Quest6014:OnSubFinish601407(arg1)
    print("OnSubFinish601407")
end

function Quest6014:OnSubStart601410(arg1)
    print("OnSubStart601410")
end

function Quest6014:OnSubFinish601410(arg1)
    print("OnSubFinish601410")
    this:TransmitPlayerWithQuestIdByData(601410, 14, datas.TransmitDataBlackScreen, nil, nil, nil)
end

function Quest6014:OnSubStart601413(arg1)
    print("OnSubStart601413")
end

function Quest6014:OnSubFinish601413(arg1)
    print("OnSubFinish601413")
end

return Quest6014
