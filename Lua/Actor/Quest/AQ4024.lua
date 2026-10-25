require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4024 = class("Quest4024", QuestActorProxy)
Quest4024.defaultAlias = "Quest4024"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4024:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["402426"] = self.OnSubStart402426,
        ["402401"] = self.OnSubStart402401,
        ["402402"] = self.OnSubStart402402,
        ["402403"] = self.OnSubStart402403,
        ["402424"] = self.OnSubStart402424,
        ["402404"] = self.OnSubStart402404,
        ["402420"] = self.OnSubStart402420,
        ["402419"] = self.OnSubStart402419,
        ["402425"] = self.OnSubStart402425,
        ["402421"] = self.OnSubStart402421,
        ["402405"] = self.OnSubStart402405,
        ["402429"] = self.OnSubStart402429,
        ["402406"] = self.OnSubStart402406,
        ["402407"] = self.OnSubStart402407,
        ["402408"] = self.OnSubStart402408,
        ["402409"] = self.OnSubStart402409,
        ["402410"] = self.OnSubStart402410,
        ["402422"] = self.OnSubStart402422,
        ["402428"] = self.OnSubStart402428,
        ["402411"] = self.OnSubStart402411,
        ["402412"] = self.OnSubStart402412,
        ["402413"] = self.OnSubStart402413,
        ["402414"] = self.OnSubStart402414,
        ["402415"] = self.OnSubStart402415,
        ["402416"] = self.OnSubStart402416,
        ["402417"] = self.OnSubStart402417,
        ["402418"] = self.OnSubStart402418,
        ["402427"] = self.OnSubStart402427,
        ["402430"] = self.OnSubStart402430,
        ["402423"] = self.OnSubStart402423
    }
end

function Quest4024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["402426"] = self.OnSubFinish402426,
        ["402401"] = self.OnSubFinish402401,
        ["402402"] = self.OnSubFinish402402,
        ["402403"] = self.OnSubFinish402403,
        ["402424"] = self.OnSubFinish402424,
        ["402404"] = self.OnSubFinish402404,
        ["402420"] = self.OnSubFinish402420,
        ["402419"] = self.OnSubFinish402419,
        ["402425"] = self.OnSubFinish402425,
        ["402421"] = self.OnSubFinish402421,
        ["402405"] = self.OnSubFinish402405,
        ["402429"] = self.OnSubFinish402429,
        ["402406"] = self.OnSubFinish402406,
        ["402407"] = self.OnSubFinish402407,
        ["402408"] = self.OnSubFinish402408,
        ["402409"] = self.OnSubFinish402409,
        ["402410"] = self.OnSubFinish402410,
        ["402422"] = self.OnSubFinish402422,
        ["402428"] = self.OnSubFinish402428,
        ["402411"] = self.OnSubFinish402411,
        ["402412"] = self.OnSubFinish402412,
        ["402413"] = self.OnSubFinish402413,
        ["402414"] = self.OnSubFinish402414,
        ["402415"] = self.OnSubFinish402415,
        ["402416"] = self.OnSubFinish402416,
        ["402417"] = self.OnSubFinish402417,
        ["402418"] = self.OnSubFinish402418,
        ["402427"] = self.OnSubFinish402427,
        ["402430"] = self.OnSubFinish402430,
        ["402423"] = self.OnSubFinish402423
    }
end

function Quest4024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["402405"] = self.OnSubFailed402405,
        ["402406"] = self.OnSubFailed402406,
        ["402407"] = self.OnSubFailed402407,
        ["402408"] = self.OnSubFailed402408,
        ["402409"] = self.OnSubFailed402409,
        ["402410"] = self.OnSubFailed402410,
        ["402422"] = self.OnSubFailed402422,
        ["402415"] = self.OnSubFailed402415,
        ["402416"] = self.OnSubFailed402416,
        ["402417"] = self.OnSubFailed402417,
        ["402423"] = self.OnSubFailed402423
    }
end

function Quest4024:Start()
    print("Start")
end

function Quest4024:OnDestroy()
    print("OnDestroy")
end

function Quest4024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4024:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4024:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest4024:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest4024:FuCry()
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13316Data.alias)
    questNpcActor:SpawnAttachEx("FurinTear_R_01")
    questNpcActor:UnSpawnAttachEx("FurinLoopTear_R_01")
    questNpcActor:SpawnAttachEx("FurinTear_L_01")
    questNpcActor:UnSpawnAttachEx("FurinLoopTear_L_01")
end

function Quest4024:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 402421 then
        actorUtils.FinishQuestID(false, 402421)
    elseif arg1 == 402428 then
        actorUtils.FinishQuestID(false, 402428)
    elseif arg1 == 402429 then
        actorUtils.FinishQuestID(false, 402429)
    end
end

function Quest4024:OnSubStart402426(arg1)
    print("OnSubStart402426")
    actorMgr:CreateActorWithPos("Q402426Dungeon", "Actor/Gadget/Q402426Dungeon", 70900002, 0, {x = -0.3, y = -0.111, z = 28.713}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1085)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13316Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13316Data.alias)
        questNpcActor:SitOnChair(8069, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    end)
end

function Quest4024:OnSubFinish402426(arg1)
    print("OnSubFinish402426")
    this:ShowBlackScreen(0, 1, 0, function(arg1)
        globalActor:PlayerEnterDungeon(2, 1189, true, nil, 0)
    end, nil, nil, "", false, true)
end

function Quest4024:OnSubStart402401(arg1)
    print("OnSubStart402401")
    actorMgr:CreateActorWithPos("Q402401Dungeon", "Actor/Gadget/Q402401Dungeon", 70900002, 0, {x = -10.792, y = 0.916, z = 89.689}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1085)
    this:DestroyQuestNpcActor(npcs.Npc13724Data.alias, 20202)
    this:DestroyQuestNpcActor(npcs.Npc13725Data.alias, 20202)
    this:DestroyQuestNpcActor(npcs.Npc13726Data.alias, 20202)
    this:ActorDestroy("Q402402Talk")
    this:ActorDestroy("Q402403Talk")
    this:ActorDestroy("Q402405Talk")
    this:ActorDestroy("Q402411Talk")
    this:ActorDestroy("Q402413Talk")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestDIMona")
    this:NpcResetForceAvatarWalk(nil)
    actorMgr:CreateActorWithPos("Q402401Dungeon02", "Actor/Gadget/Q402401Dungeon02", 70900002, 0, {x = -1.724, y = 4.92, z = 3.127}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1085)
    this:RemoveLocalGadget(70711353, "1")
    this:RemoveLocalGadget(70711353, "2")
    this:RemoveLocalGadget(70711353, "3")
    this:RemoveLocalGadget(70711353, "4")
    this:RemoveLocalGadget(70711353, "5")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13316Data.alias)
    questNpcActor:SitOnChair(8069, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:RemoveLocalGadget(70711339, "2")
    this:ActorDestroy("Q402403Transmit")
    this:ActorDestroy("Q402411Transmit")
    this:ActorDestroy("Q402413Transmit")
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, true)
    this:DestroyQuestNpcActor(npcs.Npc13671Data.alias, 20202)
    this:DestroyQuestNpcActor(npcs.Npc13577Data.alias, 20202)
end

function Quest4024:OnSubFinish402401(arg1)
    print("OnSubFinish402401")
    this:ActorDestroy("Q402401Dungeon")
    this:ActorDestroy("Q402401Dungeon02")
    this:DestroyQuestNpcActor(npcs.Npc13316Data.alias, 1085)
end

function Quest4024:OnSubStart402402(arg1)
    print("OnSubStart402402")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    actorMgr:CreateActorWithPos("Q402402Talk", "Actor/Gadget/Q402402Talk", 70900002, 0, points.TPos_Q402402Talk.pos, points.TPos_Q402402Talk.rot, true, false, 20202)
end

function Quest4024:OnSubFinish402402(arg1)
    print("OnSubFinish402402")
end

function Quest4024:OnSubStart402403(arg1)
    print("OnSubStart402403")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13316Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13316Data.alias)
        questNpcActor:SitOnChair(8080, true)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)

    actorMgr:CreateActorWithPos("Q402403Talk", "Actor/Gadget/Q402403Talk", 70900002, 0, points.TPos_Q402403Talk.pos, points.TPos_Q402403Talk.rot, true, false, 20202)
    actorMgr:CreateActorWithPos("Q402403Transmit", "Actor/Gadget/Q402403Transmit", 70900002, 0, points.TPos_Q402403Transmit.pos, points.TPos_Q402403Transmit.rot, true, false, 20202)
end

function Quest4024:OnSubFinish402403(arg1)
    print("OnSubFinish402403")
    this:ActorDestroy("Q402403Transmit")
end

function Quest4024:OnSubStart402424(arg1)
    print("OnSubStart402424")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13316Data.alias)
    questNpcActor:SitOnChair(8080, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest4024:OnSubFinish402424(arg1)
    print("OnSubFinish402424")
end

function Quest4024:OnSubStart402404(arg1)
    print("OnSubStart402404")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13316Data.alias)
    questNpcActor:SitOnChair(8080, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest4024:OnSubFinish402404(arg1)
    print("OnSubFinish402404")
end

function Quest4024:OnSubStart402420(arg1)
    print("OnSubStart402420")
end

function Quest4024:OnSubFinish402420(arg1)
    print("OnSubFinish402420")
end

function Quest4024:OnSubStart402419(arg1)
    print("OnSubStart402419")
end

function Quest4024:OnSubFinish402419(arg1)
    print("OnSubFinish402419")
end

function Quest4024:OnSubStart402425(arg1)
    print("OnSubStart402425")
    this:GetQuestNpcActor(npcs.Npc13316Data.alias):SitOnChair(8080, true)
    this:CallDelayByQuest("1", 1, function(arg1)
        this:RequestInteraction(npcs.Npc13316Data.alias, "", true)
    end)
end

function Quest4024:OnSubFinish402425(arg1)
    print("OnSubFinish402425")
    this:SafeDestroyQuestNpc(npcs.Npc13316Data.alias, 20202)
end

function Quest4024:OnSubStart402421(arg1)
    print("OnSubStart402421")
end

function Quest4024:OnSubFinish402421(arg1)
    print("OnSubFinish402421")
end

function Quest4024:OnSubStart402405(arg1)
    print("OnSubStart402405")
    actorMgr:CreateActorWithPos("Q402405Talk", "Actor/Gadget/Q402405Talk", 70900002, 0, points.TPos_Q402405Talk.pos, points.TPos_Q402405Talk.rot, true, false, 20202)
    this:CreateQuestNpc(arg1, npcs.Npc12414Data.id, 0)
    this:DisableMainPageWithConfigByQuest(true, "DisableTestDIMona")
    self:BanAvatarFreeStyle()
    this:CreateLocalGadget(70711353, "1", {x = 0.6, y = -0.13, z = 19.63}, {x = 0.0, y = 0.0, z = 0.0}, 20202, nil, nil, true)
    this:GetQuestNpcActor(npcs.Npc12414Data.alias):ForceAvatarWalkByDist(100, 100)
end

function Quest4024:OnSubFinish402405(arg1)
    print("OnSubFinish402405")
    this:SafeDestroyQuestNpc(npcs.Npc13671Data.alias, 20202)
    this:ActionSafeCall(function(arg1)
        this:RemoveLocalGadget(70711353, "1")
    end)
end

function Quest4024:OnSubFailed402405(arg1)
    print("OnSubFailed402405")
    self:ResumeAvatarFreeStyle()
    this:RemoveLocalGadget(70711353, "1")
    this:DestroyQuestNpcActor(npcs.Npc12414Data.alias, 20202)
end

function Quest4024:OnSubStart402429(arg1)
    print("OnSubStart402429")
end

function Quest4024:OnSubFinish402429(arg1)
    print("OnSubFinish402429")
end

function Quest4024:OnSubStart402406(arg1)
    print("OnSubStart402406")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc13316Data.id, 402406, 0, 3, 0, false)
    this:DisableMainPageWithConfigByQuest(true, "DisableTestDIMona")
    self:BanAvatarFreeStyle()
    this:CreateLocalGadget(70711339, "2", {x = 0.398, y = 1.254, z = 29.887}, {x = 0.0, y = 0.0, z = 0.0}, 20202, nil, nil, true)
    this:CreateQuestNpc(arg1, npcs.Npc12414Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc12414Data.alias):ForceAvatarWalkByDist(100, 100)
end

function Quest4024:OnSubFinish402406(arg1)
    print("OnSubFinish402406")
    this:SafeDestroyQuestNpc(npcs.Npc13316Data.alias, 20202)
    this:ActionSafeCall(function(arg1)
        this:RemoveLocalGadget(70711339, "2")
        this:DestroyQuestNpcActor(npcs.Npc12414Data.alias, 20202)
    end)
end

function Quest4024:OnSubFailed402406(arg1)
    print("OnSubFailed402406")
    this:ActorDestroy("Q402406N13316Trigger")
    self:ResumeAvatarFreeStyle()
    this:RemoveLocalGadget(70711339, "2")
    this:GetQuestNpcActor(npcs.Npc12414Data.alias):ResetForceAvatarWalk()
    this:DestroyQuestNpcActor(npcs.Npc12414Data.alias, 20202)
end

function Quest4024:OnSubStart402407(arg1)
    print("OnSubStart402407")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc13724Data.id, 402407, 0, 4, 1, false)
    this:DisableMainPageWithConfigByQuest(true, "DisableTestDIMona")
    self:BanAvatarFreeStyle()
    this:CreateLocalGadget(70711353, "3", {x = -0.712, y = -0.13, z = 36.97}, {x = 0.0, y = 0.0, z = 0.0}, 20202, nil, nil, true)
end

function Quest4024:OnSubFinish402407(arg1)
    print("OnSubFinish402407")
    this:SafeDestroyQuestNpc(npcs.Npc13724Data.alias, 20202)
    this:ActionSafeCall(function(arg1)
        this:RemoveLocalGadget(70711353, "3")
        this:DestroyQuestNpcActor(npcs.Npc13316Data.alias, 20202)
    end)
end

function Quest4024:OnSubFailed402407(arg1)
    print("OnSubFailed402407")
    this:ActorDestroy("Q402407N13724Trigger")
    self:ResumeAvatarFreeStyle()
    this:RemoveLocalGadget(70711353, "3")
end

function Quest4024:OnSubStart402408(arg1)
    print("OnSubStart402408")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13725Data.id, 402408, 0, 3, 1)
    this:DisableMainPageWithConfigByQuest(true, "DisableTestDIMona")
    self:BanAvatarFreeStyle()
    this:CreateLocalGadget(70711353, "4", {x = 20.82, y = -0.13, z = 34.999}, {x = 0.0, y = 0.0, z = 0.0}, 20202, nil, nil, true)
end

function Quest4024:OnSubFinish402408(arg1)
    print("OnSubFinish402408")
    this:SafeDestroyQuestNpc(npcs.Npc13725Data.alias, 20202)
    this:ActionSafeCall(function(arg1)
        this:RemoveLocalGadget(70711353, "4")
        this:DestroyQuestNpcActor(npcs.Npc13316Data.alias, 20202)
    end)
end

function Quest4024:OnSubFailed402408(arg1)
    print("OnSubFailed402408")
    this:ActorDestroy("Q402408N13725Trigger")
    self:ResumeAvatarFreeStyle()
    this:RemoveLocalGadget(70711353, "4")
end

function Quest4024:OnSubStart402409(arg1)
    print("OnSubStart402409")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13726Data.id, 402409, 0, 3, 1)
    this:DisableMainPageWithConfigByQuest(true, "DisableTestDIMona")
    self:BanAvatarFreeStyle()
    this:CreateLocalGadget(70711353, "5", {x = -18.87, y = -0.13, z = 33.64}, {x = 0.0, y = 0.0, z = 0.0}, 20202, nil, nil, true)
end

function Quest4024:OnSubFinish402409(arg1)
    print("OnSubFinish402409")
    this:SafeDestroyQuestNpc(npcs.Npc13726Data.alias, 20202)
    this:ActionSafeCall(function(arg1)
        this:RemoveLocalGadget(70711353, "5")
        this:DestroyQuestNpcActor(npcs.Npc13316Data.alias, 20202)
    end)
end

function Quest4024:OnSubFailed402409(arg1)
    print("OnSubFailed402409")
    this:ActorDestroy("Q402409N13726Trigger")
    self:ResumeAvatarFreeStyle()
    this:RemoveLocalGadget(70711353, "5")
end

function Quest4024:OnSubStart402410(arg1)
    print("OnSubStart402410")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13724Data.id, 402410, 0, 3, 1)
    this:DisableMainPageWithConfigByQuest(true, "DisableTestDIMona")
    self:BanAvatarFreeStyle()
    this:CreateLocalGadget(70711353, "1", {x = 0.6, y = -0.13, z = 19.63}, {x = 0.0, y = 0.0, z = 0.0}, 20202, nil, nil, true)
end

function Quest4024:OnSubFinish402410(arg1)
    print("OnSubFinish402410")
    this:ActionSafeCall(function(arg1)
        this:RemoveLocalGadget(70711353, "1")
        this:DestroyQuestNpcActor(npcs.Npc13316Data.alias, 20202)
        this:DestroyQuestNpcActor(npcs.Npc13577Data.alias, 20202)
    end)
end

function Quest4024:OnSubFailed402410(arg1)
    print("OnSubFailed402410")
    this:ActorDestroy("Q402410N13724Trigger")
    self:ResumeAvatarFreeStyle()
end

function Quest4024:OnSubStart402422(arg1)
    print("OnSubStart402422")
    this:DisableMainPageWithConfigByQuest(true, "DisableTestDIMona")
    self:BanAvatarFreeStyle()
    this:ActionSafeCall(function(arg1)
        this:CreateLocalGadget(70711353, "1", {x = 0.6, y = -0.13, z = 19.63}, {x = 0.0, y = 0.0, z = 0.0}, 20202, nil, nil, true)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc13316Data.id, 402422, 0, 80, 0.5, true)
    end)
end

function Quest4024:OnSubFinish402422(arg1)
    print("OnSubFinish402422")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestDIMona")
    this:NpcResetForceAvatarWalk(nil)
    self:ResumeAvatarFreeStyle()
    this:ActionSafeCall(function(arg1)
        this:RemoveLocalGadget(70711353, "1")
        this:DestroyQuestNpcActor(npcs.Npc13316Data.alias, 20202)
        this:DestroyQuestNpcActor(npcs.Npc13577Data.alias, 20202)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc13726Data.alias, 20202)
end

function Quest4024:OnSubFailed402422(arg1)
    print("OnSubFailed402422")
    this:ActorDestroy("Q402422N13726Trigger")
    self:ResumeAvatarFreeStyle()
    this:RemoveLocalGadget(70711353, "1")
end

function Quest4024:OnSubStart402428(arg1)
    print("OnSubStart402428")
end

function Quest4024:OnSubFinish402428(arg1)
    print("OnSubFinish402428")
end

function Quest4024:OnSubStart402411(arg1)
    print("OnSubStart402411")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    actorMgr:CreateActorWithPos("Q402411Talk", "Actor/Gadget/Q402411Talk", 70900002, 0, points.TPos_Q402411Talk.pos, points.TPos_Q402411Talk.rot, true, false, 20202)
    actorMgr:CreateActorWithPos("Q402411Transmit", "Actor/Gadget/Q402411Transmit", 70900002, 0, points.TPos_Q402411Transmit.pos, points.TPos_Q402411Transmit.rot, true, false, 20202)
end

function Quest4024:OnSubFinish402411(arg1)
    print("OnSubFinish402411")
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 20198)
    this:ActorDestroy("Q402411Transmit")
end

function Quest4024:OnSubStart402412(arg1)
    print("OnSubStart402412")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(40241201, function(arg1)
            actorUtils.FinishQuestID(false, 402412)
        end, nil, nil, false)
    end)
end

function Quest4024:OnSubFinish402412(arg1)
    print("OnSubFinish402412")
end

function Quest4024:OnSubStart402413(arg1)
    print("OnSubStart402413")
    actorMgr:CreateActorWithPos("Q402413Talk", "Actor/Gadget/Q402413Talk", 70900002, 0, {x = -1.278, y = 15.203, z = 64.732}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1085)
    this:CreateQuestNpc(arg1, npcs.Npc13316Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13316Data.alias)
    questNpcActor:DoFreeStyle(8069, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q402413Transmit", "Actor/Gadget/Q402413Transmit", 70900002, 0, points.TPos_Q402413Transmit.pos, points.TPos_Q402413Transmit.rot, true, false, 20202)
end

function Quest4024:OnSubFinish402413(arg1)
    print("OnSubFinish402413")
    this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 1085)
    globalActor:PlayerEnterDungeon(4, 143, false, nil, 0)
    this:ActorDestroy("Q402413Transmit")
end

function Quest4024:OnSubStart402414(arg1)
    print("OnSubStart402414")
    actorMgr:CreateActorWithPos("Q402414Dungeon", "Actor/Gadget/Q402414Dungeon", 70900002, 0, {x = 1.36, y = 33.121, z = 81.567}, {x = 0.0, y = 0.0, z = 359.193}, true, false, 1085)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13316Data.alias)
    questNpcActor:DoFreeStyle(8069, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:CreateLocalGadget(70711356, "1", {x = -1.09, y = 6.05, z = 56.86}, {x = 247.168, y = -1.1, z = -178.0}, 1085, nil, nil, false, 0)
end

function Quest4024:OnSubFinish402414(arg1)
    print("OnSubFinish402414")
    this:DestroyQuestNpcActor(npcs.Npc13316Data.alias, 1085)
    actorMgr:CreateActorWithPos("Q402415Timeline", "Actor/Gadget/Q402415Timeline", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20198)
    this:RemoveLocalGadget(70711356, "1")
end

function Quest4024:OnSubStart402415(arg1)
    print("OnSubStart402415")
    this:ActorDestroy("Q402414Dungeon")
end

function Quest4024:OnSubFinish402415(arg1)
    print("OnSubFinish402415")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest4024:OnSubFailed402415(arg1)
    print("OnSubFailed402415")
    this:ActorDestroy("Q402415Transmit")
    this:ActorDestroy("Q402415Timeline")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest4024:OnSubStart402416(arg1)
    print("OnSubStart402416")
    actorMgr:CreateActorWithPos("Q402416Cs", "Actor/Gadget/Q402416Cs", 70900002, 0, {x = -1.154, y = 0.0, z = -0.087}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20198)
end

function Quest4024:OnSubFinish402416(arg1)
    print("OnSubFinish402416")
end

function Quest4024:OnSubFailed402416(arg1)
    print("OnSubFailed402416")
    this:ActorDestroy("Q402416Cs")
end

function Quest4024:OnSubStart402417(arg1)
    print("OnSubStart402417")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1076Data.id, 402417, 0, 60, 1, true)
end

function Quest4024:OnSubFinish402417(arg1)
    print("OnSubFinish402417")
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 20198)
end

function Quest4024:OnSubFailed402417(arg1)
    print("OnSubFailed402417")
    this:ActorDestroy("Q402417N1076Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 20198)
end

function Quest4024:OnSubStart402418(arg1)
    print("OnSubStart402418")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(40241801, function(arg1)
            actorUtils.FinishQuestID(false, 402418)
        end, nil, nil, false)
    end)
end

function Quest4024:OnSubFinish402418(arg1)
    print("OnSubFinish402418")
end

function Quest4024:OnSubStart402427(arg1)
    print("OnSubStart402427")
    actorMgr:CreateActorWithPos("Q402427Transmit", "Actor/Gadget/Q402427Transmit", 70900002, 0, points.TPos_Q402427Transmit.pos, points.TPos_Q402427Transmit.rot, true, false, 20198)
end

function Quest4024:OnSubFinish402427(arg1)
    print("OnSubFinish402427")
    this:ActorDestroy("Q402427Transmit")
end

function Quest4024:OnSubStart402430(arg1)
    print("OnSubStart402430")
end

function Quest4024:OnSubFinish402430(arg1)
    print("OnSubFinish402430")
end

function Quest4024:OnSubStart402423(arg1)
    print("OnSubStart402423")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13725Data.id, 402423, 0, 3, 1)
    this:DisableMainPageWithConfigByQuest(true, "DisableTestDIMona")
    self:BanAvatarFreeStyle()
    this:CreateLocalGadget(70711353, "3", {x = -0.712, y = -0.13, z = 36.97}, {x = 0.0, y = 0.0, z = 0.0}, 20202, nil, nil, true)
end

function Quest4024:OnSubFinish402423(arg1)
    print("OnSubFinish402423")
    this:ActionSafeCall(function(arg1)
        this:RemoveLocalGadget(70711353, "3")
    end)
end

function Quest4024:OnSubFailed402423(arg1)
    print("OnSubFailed402423")
    this:ActorDestroy("Q402423N13725Trigger")
    self:ResumeAvatarFreeStyle()
end

return Quest4024
