require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40195 = class("Quest40195", QuestActorProxy)
Quest40195.defaultAlias = "Quest40195"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40195:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40195:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4019501"] = self.OnSubStart4019501,
        ["4019502"] = self.OnSubStart4019502,
        ["4019503"] = self.OnSubStart4019503,
        ["4019504"] = self.OnSubStart4019504,
        ["4019514"] = self.OnSubStart4019514,
        ["4019515"] = self.OnSubStart4019515,
        ["4019505"] = self.OnSubStart4019505,
        ["4019506"] = self.OnSubStart4019506,
        ["4019507"] = self.OnSubStart4019507,
        ["4019508"] = self.OnSubStart4019508,
        ["4019509"] = self.OnSubStart4019509,
        ["4019510"] = self.OnSubStart4019510,
        ["4019511"] = self.OnSubStart4019511,
        ["4019513"] = self.OnSubStart4019513,
        ["4019512"] = self.OnSubStart4019512
    }
end

function Quest40195:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4019501"] = self.OnSubFinish4019501,
        ["4019502"] = self.OnSubFinish4019502,
        ["4019503"] = self.OnSubFinish4019503,
        ["4019504"] = self.OnSubFinish4019504,
        ["4019514"] = self.OnSubFinish4019514,
        ["4019515"] = self.OnSubFinish4019515,
        ["4019505"] = self.OnSubFinish4019505,
        ["4019506"] = self.OnSubFinish4019506,
        ["4019507"] = self.OnSubFinish4019507,
        ["4019508"] = self.OnSubFinish4019508,
        ["4019509"] = self.OnSubFinish4019509,
        ["4019510"] = self.OnSubFinish4019510,
        ["4019511"] = self.OnSubFinish4019511,
        ["4019513"] = self.OnSubFinish4019513,
        ["4019512"] = self.OnSubFinish4019512
    }
end

function Quest40195:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4019504"] = self.OnSubFailed4019504,
        ["4019514"] = self.OnSubFailed4019514,
        ["4019515"] = self.OnSubFailed4019515,
        ["4019505"] = self.OnSubFailed4019505,
        ["4019511"] = self.OnSubFailed4019511
    }
end

function Quest40195:Start()
    print("Start")
end

function Quest40195:OnDestroy()
    print("OnDestroy")
end

function Quest40195:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40195:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40195:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:RemoveLocalGadget(74017002, "1")
    this:RemoveLocalGadget(70711671, "1")
    this:RemoveLocalGadget(70711671, "2")
    this:RemoveLocalGadget(70711671, "3")
    this:RemoveLocalGadget(70710470, "1")
    this:ActorDestroy("Q40195Trigger1")
    this:ActorDestroy("Q40195Trigger2")
    this:ActorDestroy("Q40195Trigger3")
    this:ActorDestroy("Q40195Trigger4")
    this:ActorDestroy("Q40195Trigger6")
    this:ActorDestroy("Q40195Trigger7")
    this:ActorDestroy("Q40195Trigger10")
    this:ActorDestroy("Q40195Trigger")
    this:ActorDestroy("Q40195Trigger8")
    this:ActorDestroy("Q40195Trigger11")
    this:ActorDestroy("Q40195Trigger5")
    this:BanCrowdNpc(3405, 5, nil, false, nil)
    this:CancelStoryByQuest(134019501)
    this:CancelStoryByQuest(134019502)
    this:DestroyQuestNpcActor(npcs.Npc1076.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc1078.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc1088.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc14977.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15252.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15254.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15255.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15256.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15336.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15337.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1094.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1307.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14221.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15339.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15174.alias, 3)
    this:LightNotifyTo(npcs.Npc5133.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5017.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5020.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5021.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5044.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5098.alias, 0, true)
    this:ResumeAvatarFreeStyle()
    this:EnableSpecialElementView(false, 40195, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
end

function Quest40195:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:RemoveLocalGadget(74017002, "1")
    this:RemoveLocalGadget(70711671, "1")
    this:RemoveLocalGadget(70711671, "2")
    this:RemoveLocalGadget(70711671, "3")
    this:RemoveLocalGadget(70710470, "1")
    this:ActorDestroy("Q40195Trigger1")
    this:ActorDestroy("Q40195Trigger2")
    this:ActorDestroy("Q40195Trigger3")
    this:ActorDestroy("Q40195Trigger4")
    this:ActorDestroy("Q40195Trigger6")
    this:ActorDestroy("Q40195Trigger7")
    this:ActorDestroy("Q40195Trigger10")
    this:ActorDestroy("Q40195Trigger")
    this:ActorDestroy("Q40195Trigger8")
    this:ActorDestroy("Q40195Trigger11")
    this:ActorDestroy("Q40195Trigger5")
    this:BanCrowdNpc(3405, 5, nil, false, nil)
    this:CancelStoryByQuest(134019501)
    this:CancelStoryByQuest(134019502)
    this:DestroyQuestNpcActor(npcs.Npc1076.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc1078.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc1088.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc14977.alias, 1083)
    this:DestroyQuestNpcActor(npcs.Npc15252.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15254.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15255.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15256.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15336.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15337.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1094.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1307.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14221.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15339.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15174.alias, 3)
    this:LightNotifyTo(npcs.Npc5133.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5017.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5020.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5021.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5044.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5098.alias, 0, true)
    this:ResumeAvatarFreeStyle()
    this:EnableSpecialElementView(false, 40195, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
end

function Quest40195:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40195:narrator()
    this:QuestNarratorTask(datas.NarratorWithId_4019502, nil)
    this:QuestNarratorTask(datas.NarratorWithId_4019503, nil)
    this:QuestNarratorTask(datas.NarratorWithId_4019504, nil)
    this:QuestNarratorTask(datas.NarratorWithId_4019505, nil)
    this:QuestNarratorTask(datas.NarratorWithId_4019513, nil)
    this:QuestNarratorTask(datas.NarratorWithId_4019511, nil)
end

function Quest40195:OnSubStart4019501(arg1)
    print("OnSubStart4019501")
end

function Quest40195:OnSubFinish4019501(arg1)
    print("OnSubFinish4019501")
    this:QuestNarratorTask(datas.NarratorWithId_4019501, nil)
end

function Quest40195:OnSubStart4019502(arg1)
    print("OnSubStart4019502")
    actorMgr:CreateActorWithPos("Q40195Trigger", "Actor/Gadget/Q40195Trigger", 70900002, 0, points._Q40195TriggerPoint_.pos, points._Q40195TriggerPoint_.rot, true, false, 1083)
    this:CreateQuestNpc(arg1, npcs.Npc1076.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1078.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14977.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1076.alias, 40195):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 40195):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1078.alias, 40195):DoFreeStyle(1110, true, nil, true, true, false, false)
    actorMgr:DestroyNpcActorByAlias("Npc107614009")
    actorMgr:DestroyNpcActorByAlias("Npc1378914009")
    this:ActorDestroy("Q14009Trigger4")
    this.uActor:RemoveLocalGadget(70711239, "S2041_1")
    this.uActor:RemoveLocalGadget(70711239, "S2041_2")
    this.uActor:RemoveLocalGadget(70710776, "S2041_3")
end

function Quest40195:OnSubFinish4019502(arg1)
    print("OnSubFinish4019502")
    this:ActionSafeCall(function(arg1_2)
        this:DestroyQuestNpcActor(npcs.Npc1088.alias, 1083)
        this:ClearNarratorTask()
        this:StopNarrator()
        this:TransmitPlayerByData(arg1, 1, datas.KinichTransmitData, nil, nil, nil)
    end)
end

function Quest40195:OnSubStart4019503(arg1)
    print("OnSubStart4019503")
    this:LevelReadySafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q40195Trigger1", "Actor/Gadget/Q40195Trigger1", 70900002, 0, points._Q40195Trigger1Point_.pos, points._Q40195Trigger1Point_.rot, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc15252.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15254.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15255.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15256.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15336.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15337.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15339.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15336.alias, 40195):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc15339.alias, 40195):DoFreeStyle(1280, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc15336.alias, 40195):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15337.alias, 40195):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15339.alias, 40195):DisableInteeHeadCtrl(true)
        this:NotifyTo(npcs.Npc5133.alias, 1, true)
        this:NotifyTo(npcs.Npc5098.alias, 1, true)
        this:BanCrowdNpc(3405, 5, nil, true)
        this:ExitCombatSneakMode()
    end)
end

function Quest40195:OnSubFinish4019503(arg1)
    print("OnSubFinish4019503")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc15254.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15255.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15256.alias, 3)
    end)
end

function Quest40195:OnSubStart4019504(arg1)
    print("OnSubStart4019504")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q40195Trigger10", "Actor/Gadget/Q40195Trigger10", 70900002, 0, points._Q40195Trigger10Point_.pos, points._Q40195Trigger10Point_.rot, true, false, 3)
        this:CreateLocalGadget(70711671, "1", {x = 1625.2, y = 281.3, z = 5032.7}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
        this:NotifyTo(npcs.Npc5133.alias, 1, true)
        this:NotifyTo(npcs.Npc5098.alias, 1, true)
        this:BanCrowdNpc(3405, 5, nil, true)
        this:BanAvatarFreeStyle()
        this:EnableSpecialElementView(true, 40195, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
        globalActor:DisablePaimonInProfilePage(datas.SceneIDList)
        this:DeployStoryByQuest(134019501)
    end)
end

function Quest40195:OnSubFinish4019504(arg1)
    print("OnSubFinish4019504")
    this:RemoveLocalGadget(70711671, "1")
end

function Quest40195:OnSubFailed4019504(arg1)
    print("OnSubFailed4019504")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:ExitCombatSneakMode()
        this:ResumeAvatarFreeStyle()
        this:EnableSpecialElementView(false, 40195, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
        this:CancelStoryByQuest(134019501)
        this:DestroyQuestNpcActor(npcs.Npc15307.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15308.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15309.alias, 3)
        this:RemoveLocalGadget(70711671, "1")
        globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
    end, nil, nil, 0, false, true)
end

function Quest40195:OnSubStart4019514(arg1)
    print("OnSubStart4019514")
    this:BanCrowdNpc(3405, 5, nil, true, nil)
    this:BanAvatarFreeStyle()
    this:EnableSpecialElementView(true, 40195, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    globalActor:DisablePaimonInProfilePage(datas.SceneIDList)
    this:CallDelayByQuest("1", 20, function(arg1)
        this:CreateLocalGadget(70711671, "2", {x = 1628, y = 281.3, z = 5031.4}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
    end)

    this:CreateLocalGadget(70710470, "1", {x = 1636.821, y = 281.8, z = 5031.997}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest40195:OnSubFinish4019514(arg1)
    print("OnSubFinish4019514")
    this:QuestNarratorTask(datas.NarratorWithId_4019514, nil)
    this:RemoveLocalGadget(70711671, "2")
    this:RemoveLocalGadget(70710470, "1")
    this:UnCallDelayByQuest("1")
end

function Quest40195:OnSubFailed4019514(arg1)
    print("OnSubFailed4019514")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:ExitCombatSneakMode()
        this:ResumeAvatarFreeStyle()
        this:EnableSpecialElementView(false, 40195, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
        this:CancelStoryByQuest(134019501)
        this:DestroyQuestNpcActor(npcs.Npc15307.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15308.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15309.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15313.alias, 3)
        globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
        this:RemoveLocalGadget(70711671, "2")
        this:RemoveLocalGadget(70710470, "1")
        this:UnCallDelayByQuest("1")
    end, nil, nil, 0, false, true)
end

function Quest40195:OnSubStart4019515(arg1)
    print("OnSubStart4019515")
    this:CallDelayByQuest("2", 7, function(arg1)
        this:CreateLocalGadget(70711671, "3", {x = 1642.9, y = 281.3, z = 5025.5}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0, true)
    end)

    this:GetQuestNpcActor(npcs.Npc15336.alias, 40195):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15339.alias, 40195):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15336.alias, 40195):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15337.alias, 40195):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15339.alias, 40195):DisableInteeHeadCtrl(true)
    this:BanCrowdNpc(3405, 5, nil, true, nil)
    this:BanAvatarFreeStyle()
    this:EnableSpecialElementView(true, 40195, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    globalActor:DisablePaimonInProfilePage(datas.SceneIDList)
end

function Quest40195:OnSubFinish4019515(arg1)
    print("OnSubFinish4019515")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:ExitCombatSneakMode()
        this:ResumeAvatarFreeStyle()
        this:CancelStoryByQuest(134019501)
        this:DestroyQuestNpcActor(npcs.Npc15307.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15308.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15309.alias, 3)
        this:RemoveLocalGadget(70711671, "3")
        this:UnCallDelayByQuest("2")
        globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
        this:ClearNarratorTask()
        this:StopNarrator()
    end, nil, nil, 0, false, true)
end

function Quest40195:OnSubFailed4019515(arg1)
    print("OnSubFailed4019515")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:ExitCombatSneakMode()
        this:ResumeAvatarFreeStyle()
        this:EnableSpecialElementView(false, 40195, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
        this:CancelStoryByQuest(134019501)
        this:DestroyQuestNpcActor(npcs.Npc15307.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15308.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15309.alias, 3)
        this:RemoveLocalGadget(70711671, "3")
        this:UnCallDelayByQuest("2")
        globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
    end, nil, nil, 0, false, true)
end

function Quest40195:OnSubStart4019505(arg1)
    print("OnSubStart4019505")
    actorMgr:CreateActorWithPos("Q40195Trigger6", "Actor/Gadget/Q40195Trigger6", 70900002, 0, points._Q40195Trigger6Point_.pos, points._Q40195Trigger6Point_.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5133.alias, 1, true)
    this:NotifyTo(npcs.Npc5098.alias, 1, true)
    this:BanCrowdNpc(3405, 5, nil, true, nil)
end

function Quest40195:OnSubFinish4019505(arg1)
    print("OnSubFinish4019505")
    this:ActionSafeCall(function(arg1_2)
        this:DestroyQuestNpcActor(npcs.Npc1088.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15252.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15254.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15255.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15256.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15336.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15337.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15339.alias, 3)
        this:LightNotifyTo(npcs.Npc5133.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5098.alias, 0, true)
        this:BanCrowdNpc(3405, 5, nil, false)
        this:EnableSpecialElementView(false, 40195, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
        this:ClearNarratorTask()
        this:StopNarrator()
        this:TransmitPlayerByData(arg1, 2, datas.KinichTransmitData, nil, nil, nil)
    end)
end

function Quest40195:OnSubFailed4019505(arg1)
    print("OnSubFailed4019505")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1088.alias, 3)
        this:EnableSpecialElementView(false, 40195, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    end, nil, nil, 0, false, true)
end

function Quest40195:OnSubStart4019506(arg1)
    print("OnSubStart4019506")
    this:LevelReadySafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q40195Trigger2", "Actor/Gadget/Q40195Trigger2", 70900002, 0, points._Q40195Trigger2Point_.pos, points._Q40195Trigger2Point_.rot, true, false, 1083)
    end)
end

function Quest40195:OnSubFinish4019506(arg1)
    print("OnSubFinish4019506")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc14977.alias, 1083)
    end)
end

function Quest40195:OnSubStart4019507(arg1)
    print("OnSubStart4019507")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q40195Trigger5", "Actor/Gadget/Q40195Trigger5", 70900002, 0, points._Q40195Trigger5Point_.pos, points._Q40195Trigger5Point_.rot, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1307.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14221.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1076.alias, 40195):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1078.alias, 40195):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1307.alias, 40195):DoFreeStyle(1240, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40195):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1076.alias, 40195):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1078.alias, 40195):DisableInteeHeadCtrl(true)
    end)
end

function Quest40195:OnSubFinish4019507(arg1)
    print("OnSubFinish4019507")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc14221.alias, 1084)
    end)
end

function Quest40195:OnSubStart4019508(arg1)
    print("OnSubStart4019508")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1307.alias, 40195):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40195):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1307.alias, 40195):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40195):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14977.alias, 40195):DisableInteeHeadCtrl(true)
    end)
end

function Quest40195:OnSubFinish4019508(arg1)
    print("OnSubFinish4019508")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1094.alias, 1084)
        this:DestroyQuestNpcActor(npcs.Npc1307.alias, 1084)
        this:DestroyQuestNpcActor(npcs.Npc14977.alias, 1084)
        this:QuestNarratorTask(datas.NarratorWithId_4019508, nil)
    end)
end

function Quest40195:OnSubStart4019509(arg1)
    print("OnSubStart4019509")
    actorMgr:CreateActorWithPos("Q40195Trigger8", "Actor/Gadget/Q40195Trigger8", 70900002, 0, points._Q40195Trigger8Point_.pos, points._Q40195Trigger8Point_.rot, true, false, 1083)
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1076.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1078.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1078.alias, 40195):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 40195):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest40195:OnSubFinish4019509(arg1)
    print("OnSubFinish4019509")
    this:ActionSafeCall(function(arg1_2)
        this:DestroyQuestNpcActor(npcs.Npc1076.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc1088.alias, 1083)
        this:DestroyQuestNpcActor(npcs.Npc1078.alias, 1083)
        this:TransmitPlayerByData(arg1, 3, datas.TransmitData, nil, nil, nil)
    end)
end

function Quest40195:OnSubStart4019510(arg1)
    print("OnSubStart4019510")
    if this:GetQuestVar(4019510, 1) == 0 then
        actorMgr:CreateActorWithPos("Q40195Trigger3", "Actor/Gadget/Q40195Trigger3", 70900002, 0, points._Q40195Trigger3Point_.pos, points._Q40195Trigger3Point_.rot, true, false, 3)
    end

    this:CreateLocalGadget(74017002, "1", {x = -50.616, y = 1.216, z = -15.233}, {x = 267.407, y = -90.735, z = 0.495}, 1083, nil, nil, false, 0, true)
    this:NotifyTo(npcs.Npc5017.alias, 1, true)
    this:NotifyTo(npcs.Npc5020.alias, 1, true)
    this:NotifyTo(npcs.Npc5021.alias, 1, true)
    this:NotifyTo(npcs.Npc5044.alias, 1, true)
end

function Quest40195:OnSubFinish4019510(arg1)
    print("OnSubFinish4019510")
end

function Quest40195:OnSubStart4019511(arg1)
    print("OnSubStart4019511")
    actorMgr:CreateActorWithPos("Q40195Trigger11", "Actor/Gadget/Q40195Trigger11", 70900002, 0, points._Q40195Trigger11Point_.pos, points._Q40195Trigger11Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q40195Trigger7", "Actor/Gadget/Q40195Trigger7", 70900002, 0, points._Q40195Trigger7Point_.pos, points._Q40195Trigger7Point_.rot, true, false, 3)
    this:CreateLocalGadget(74017002, "1", {x = -50.616, y = 1.216, z = -15.233}, {x = 267.407, y = -90.735, z = 0.495}, 1083, nil, nil, false, 0, true)
    this:CreateQuestNpc(arg1, npcs.Npc1307.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14977.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15174.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15174.alias, 40195):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1307.alias, 40195):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc5017.alias, 1, true)
    this:NotifyTo(npcs.Npc5020.alias, 1, true)
    this:NotifyTo(npcs.Npc5021.alias, 1, true)
    this:NotifyTo(npcs.Npc5044.alias, 1, true)
    this:DeployStoryByQuest(134019502)
    globalActor:DisablePaimonInProfilePage(datas.SceneIDList)
end

function Quest40195:OnSubFinish4019511(arg1)
    print("OnSubFinish4019511")
    this:ActionSafeCall(function(arg1_2)
        globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
        this:CancelStoryByQuest(134019502)
        this:DestroyQuestNpcActor(npcs.Npc1307.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14977.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc15174.alias, 3)
        this:LightNotifyTo(npcs.Npc5017.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5020.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5021.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5044.alias, 0, true)
        this:ActorDestroy("Q40195Trigger7")
        this:TransmitPlayerByData(arg1, 4, datas.TransmitData, nil, nil, nil)
    end)
end

function Quest40195:OnSubFailed4019511(arg1)
    print("OnSubFailed4019511")
    this:QuestNarratorTask(datas.NarratorWithId_4019512, nil)
    globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
    this:CancelStoryByQuest(134019502)
    this:DestroyQuestNpcActor(npcs.Npc1307.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14977.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc15174.alias, 3)
    this:LightNotifyTo(npcs.Npc5017.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5020.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5021.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5044.alias, 0, true)
    this:ActorDestroy("Q40195Trigger7")
    this:ActorDestroy("Q40195Trigger11")
end

function Quest40195:OnSubStart4019513(arg1)
    print("OnSubStart4019513")
    actorMgr:CreateActorWithPos("Q40195Trigger4", "Actor/Gadget/Q40195Trigger4", 70900002, 0, points._Q40195Trigger4Point_.pos, points._Q40195Trigger4Point_.rot, true, false, 1083)
    this:CreateQuestNpc(arg1, npcs.Npc1076.id, 0, false, 0)
    this:CreateLocalGadget(74017002, "1", {x = -50.616, y = 1.216, z = -15.233}, {x = 267.407, y = -90.735, z = 0.495}, 1083, nil, nil, false, 0, true)
end

function Quest40195:OnSubFinish4019513(arg1)
    print("OnSubFinish4019513")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1076.alias, 1083)
        this:RemoveLocalGadget(74017002, "1")
    end)
end

function Quest40195:OnSubStart4019512(arg1)
    print("OnSubStart4019512")
end

function Quest40195:OnSubFinish4019512(arg1)
    print("OnSubFinish4019512")
end

return Quest40195
