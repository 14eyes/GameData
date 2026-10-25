require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14008 = class("Quest14008", QuestActorProxy)
Quest14008.defaultAlias = "Quest14008"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14008:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1400801"] = self.OnSubStart1400801,
        ["1400811"] = self.OnSubStart1400811,
        ["1400802"] = self.OnSubStart1400802,
        ["1400803"] = self.OnSubStart1400803,
        ["1400804"] = self.OnSubStart1400804,
        ["1400805"] = self.OnSubStart1400805,
        ["1400806"] = self.OnSubStart1400806,
        ["1400807"] = self.OnSubStart1400807,
        ["1400808"] = self.OnSubStart1400808,
        ["1400809"] = self.OnSubStart1400809,
        ["1400810"] = self.OnSubStart1400810,
        ["1400812"] = self.OnSubStart1400812
    }
end

function Quest14008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1400801"] = self.OnSubFinish1400801,
        ["1400811"] = self.OnSubFinish1400811,
        ["1400802"] = self.OnSubFinish1400802,
        ["1400803"] = self.OnSubFinish1400803,
        ["1400804"] = self.OnSubFinish1400804,
        ["1400805"] = self.OnSubFinish1400805,
        ["1400806"] = self.OnSubFinish1400806,
        ["1400807"] = self.OnSubFinish1400807,
        ["1400808"] = self.OnSubFinish1400808,
        ["1400809"] = self.OnSubFinish1400809,
        ["1400810"] = self.OnSubFinish1400810,
        ["1400812"] = self.OnSubFinish1400812
    }
end

function Quest14008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1400811"] = self.OnSubFailed1400811,
        ["1400802"] = self.OnSubFailed1400802,
        ["1400803"] = self.OnSubFailed1400803,
        ["1400804"] = self.OnSubFailed1400804,
        ["1400805"] = self.OnSubFailed1400805,
        ["1400806"] = self.OnSubFailed1400806,
        ["1400807"] = self.OnSubFailed1400807
    }
end

function Quest14008:Start()
    print("Start")
end

function Quest14008:OnDestroy()
    print("OnDestroy")
end

function Quest14008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14008:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:DisableMainPageWithConfigByQuest(true, "DisableTorrentMainQuest")
        self:EnableSpecialElementView(true, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
        actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", true, 20200, true)
    elseif arg1 == 2 then
        this:ActionSafeCall(function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc5113Data.alias)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:LookAt({x = 3486.1, y = 462.5, z = 3655.5})
        end)
    end
end

function Quest14008:OnSubStart1400801(arg1)
    print("OnSubStart1400801")
    this:CreateQuestNpc(arg1, npcs.Npc5107Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5106Data.id, 0)
    actorMgr:CreateActorWithPos("Q14008Trigger", "Actor/Gadget/Q14008Trigger", 70900002, 0, points.TPos_Q14008Trigger.pos, points.TPos_Q14008Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q14008Trigger5", "Actor/Gadget/Q14008Trigger5", 70900002, 0, points.TPos_Q14008Trigger5.pos, points.TPos_Q14008Trigger5.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q14008Trigger6", "Actor/Gadget/Q14008Trigger6", 70900002, 0, points.TPos_Q14008Trigger6.pos, points.TPos_Q14008Trigger6.rot, true, false, 3)
    this:CreateLocalGadget(70711241, "3", {x = -54.563, y = 1.499, z = -16.875}, {x = 340.338, y = 102.398, z = 0.39}, 1083, nil, nil, false)
    this:CreateLocalGadget(70711240, "3", {x = -54.623, y = 1.556, z = -14.539}, {x = 0.0, y = 77.772, z = 0.0}, 1083, nil, nil, false)
    this:NotifyTo(npcs.Npc5114Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5118Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5119Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5111Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5115Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5113Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5112Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5104Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5105Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5116Data.alias, 1, true)
    this:NotifyTo(npcs.Npc13489Data.alias, 1, true)
    this:NotifyTo(npcs.Npc13490Data.alias, 1, true)
    this:NotifyTo(npcs.Npc13491Data.alias, 1, true)
end

function Quest14008:OnSubFinish1400801(arg1)
    print("OnSubFinish1400801")
    if sceneData.currSceneID ~= 20200 then
        this:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            this:PlayerEnterDungeonPointWithDialogs(1054, 1187, 1400801, 1, datas.DialogsId, 0, nil, nil, true)
            actorMgr:DestroyEntityActor("Q14008Trigger", 3, false)
            actorMgr:DestroyEntityActor("Q14008Trigger5", 3, false)
            actorMgr:DestroyEntityActor("Q14008Trigger6", 3, false)
            this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 3)
            this:DestroyQuestNpcActor(npcs.Npc5107Data.alias, 3)
            this:DestroyQuestNpcActor(npcs.Npc5106Data.alias, 3)
            this:LightNotifyTo(npcs.Npc5114Data.alias, 0, true)
            this:LightNotifyTo(npcs.Npc5118Data.alias, 0, true)
            this:LightNotifyTo(npcs.Npc5119Data.alias, 0, true)
            this:LightNotifyTo(npcs.Npc5111Data.alias, 0, true)
            this:LightNotifyTo(npcs.Npc5115Data.alias, 0, true)
            this:LightNotifyTo(npcs.Npc5113Data.alias, 0, true)
            this:LightNotifyTo(npcs.Npc5112Data.alias, 0, true)
            this:LightNotifyTo(npcs.Npc5104Data.alias, 0, true)
            this:LightNotifyTo(npcs.Npc5105Data.alias, 0, true)
            this:LightNotifyTo(npcs.Npc5116Data.alias, 0, true)
            this:LightNotifyTo(npcs.Npc13489Data.alias, 0, true)
            this:LightNotifyTo(npcs.Npc13490Data.alias, 0, true)
            this:LightNotifyTo(npcs.Npc13491Data.alias, 0, true)
            this:RemoveLocalGadget(70711241, "3")
            this:RemoveLocalGadget(70711240, "3")
        end, nil, nil, "", true, true)
    else
        actorMgr:DestroyEntityActor("Q14008Trigger", 3, false)
        actorMgr:DestroyEntityActor("Q14008Trigger5", 3, false)
        actorMgr:DestroyEntityActor("Q14008Trigger6", 3, false)
        this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5114Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5118Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5119Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5111Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5115Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5113Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5112Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5104Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5105Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5116Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc13489Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc13490Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc13491Data.alias, 0, true)
        this:RemoveLocalGadget(70711241, "3")
        this:RemoveLocalGadget(70711240, "3")
    end
end

function Quest14008:OnSubStart1400811(arg1)
    print("OnSubStart1400811")
    actorMgr:CreateActorWithPos("Q14008Trigger2", "Actor/Gadget/Q14008Trigger2", 70900002, 0, points.TPos_Q14008Trigger2.pos, points.TPos_Q14008Trigger2.rot, true, false, 20200)
end

function Quest14008:OnSubFinish1400811(arg1)
    print("OnSubFinish1400811")
    actorMgr:DestroyEntityActor("Q14008Trigger2", 20200, false)
end

function Quest14008:OnSubFailed1400811(arg1)
    print("OnSubFailed1400811")
    actorMgr:DestroyEntityActor("Q14008Trigger2", 20200, false)
end

function Quest14008:OnSubStart1400802(arg1)
    print("OnSubStart1400802")
    actorMgr:CreateActorWithPos("Q14008Trigger3", "Actor/Gadget/Q14008Trigger3", 70900002, 0, points.TPos_Q14008Trigger3.pos, points.TPos_Q14008Trigger3.rot, true, false, 20200)
    self:DisableMainPageWithConfigByQuest(true, "DisableTorrentMainQuest")
    self:EnableSpecialElementView(true, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", true, 20200, true)
    self:SetNavigationByMainId(14008, true)
    this:SetWeather("BigWorld/Weather_Foggy_MirrorWorld01")
    self:BanAvatarFreeStyle()
end

function Quest14008:OnSubFinish1400802(arg1)
    print("OnSubFinish1400802")
    this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 20200)
    actorMgr:DestroyEntityActor("Q14008Trigger3", 20200, false)
end

function Quest14008:OnSubFailed1400802(arg1)
    print("OnSubFailed1400802")
    this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 20200)
    actorMgr:DestroyEntityActor("Q14008Trigger3", 20200, false)
    self:DisableMainPageWithConfigByQuest(false, "DisableTorrentMainQuest")
    self:EnableSpecialElementView(false, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", false, 0, false)
    this:CancelWeather()
    self:ResumeAvatarFreeStyle()
end

function Quest14008:OnSubStart1400803(arg1)
    print("OnSubStart1400803")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14008Trigger10", "Actor/Gadget/Q14008Trigger10", 70900002, 0, points.TPos_Q14008Trigger10.pos, points.TPos_Q14008Trigger10.rot, true, false, 20200)
        this:CreateQuestNpc(arg1, npcs.Npc13840Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13504Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13504Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:LookAt({x = 3699.49, y = 487.3029, z = 3625.761})
        this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
        local v = this:GetQuestNpcActor(npcs.Npc1076Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:DoFreeStyle(1190, true, nil, true, true, false, false)
        v:LookAt({x = 3699.942, y = 486.6303, z = 3624.343})
        arg1_2:DisableMainPageWithConfigByQuest(true, "DisableTorrentMainQuest")
        arg1_2:EnableSpecialElementView(true, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
        actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", true, 20200, true)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc1076Data.alias)
        arg1_2:NpcForceAvatarWalkByDist(questNpcActor2, 8, 8)
        arg1_2:SetNavigationByMainId(14008, true)
        this:SetWeather("BigWorld/Weather_Foggy_MirrorWorld01")
        arg1_2:BanAvatarFreeStyle()
    end)
end

function Quest14008:OnSubFinish1400803(arg1)
    print("OnSubFinish1400803")
    this:DestroyQuestNpcActor(npcs.Npc13840Data.alias, 20200)
    this:GetQuestNpcActor(npcs.Npc13504Data.alias):DestroyWithDitherEx(1)
    this:GetQuestNpcActor(npcs.Npc1076Data.alias):DestroyWithDitherEx(1)
    actorMgr:DestroyEntityActor("Q14008Trigger10", 20200, false)
end

function Quest14008:OnSubFailed1400803(arg1)
    print("OnSubFailed1400803")
    this:DestroyQuestNpcActor(npcs.Npc13840Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13504Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 20200)
    actorMgr:DestroyEntityActor("Q14008Trigger10", 20200, false)
    self:DisableMainPageWithConfigByQuest(false, "DisableTorrentMainQuest")
    self:EnableSpecialElementView(false, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", false, 0, false)
    this:CancelWeather()
    self:ResumeAvatarFreeStyle()
end

function Quest14008:OnSubStart1400804(arg1)
    print("OnSubStart1400804")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14008Trigger11", "Actor/Gadget/Q14008Trigger11", 70900002, 0, points.TPos_Q14008Trigger11.pos, points.TPos_Q14008Trigger11.rot, true, false, 20200)
        this:CreateQuestNpc(arg1, npcs.Npc13840Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13656Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13656Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:LookAt({x = 3635.792, y = 477, z = 3583.119})
        this:CreateQuestNpc(arg1, npcs.Npc13560Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13560Data.alias):DisableInteeHeadCtrl(true)
        arg1_2:DisableMainPageWithConfigByQuest(true, "DisableTorrentMainQuest")
        arg1_2:EnableSpecialElementView(true, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
        actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", true, 20200, true)
        local v = this:GetQuestNpcActor(npcs.Npc13656Data.alias)
        arg1_2:NpcForceAvatarWalkByDist(v, 8, 8)
        arg1_2:SetNavigationByMainId(14008, true)
        this:SetWeather("BigWorld/Weather_Foggy_MirrorWorld01")
        arg1_2:BanAvatarFreeStyle()
    end)
end

function Quest14008:OnSubFinish1400804(arg1)
    print("OnSubFinish1400804")
    this:DestroyQuestNpcActor(npcs.Npc13840Data.alias, 20200)
    this:GetQuestNpcActor(npcs.Npc13656Data.alias):DestroyWithDitherEx(1)
    this:GetQuestNpcActor(npcs.Npc13560Data.alias):DestroyWithDitherEx(1)
    this:GetQuestNpcActor(npcs.Npc13561Data.alias):DestroyWithDitherEx(1)
    this:GetQuestNpcActor(npcs.Npc13562Data.alias):DestroyWithDitherEx(1)
    this:GetQuestNpcActor(npcs.Npc13563Data.alias):DestroyWithDitherEx(1)
    actorMgr:DestroyEntityActor("Q14008Trigger11", 20200, false)
end

function Quest14008:OnSubFailed1400804(arg1)
    print("OnSubFailed1400804")
    this:DestroyQuestNpcActor(npcs.Npc13840Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13656Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13560Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13561Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13562Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13563Data.alias, 20200)
    actorMgr:DestroyEntityActor("Q14008Trigger11", 20200, false)
    self:DisableMainPageWithConfigByQuest(false, "DisableTorrentMainQuest")
    self:EnableSpecialElementView(false, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", false, 0, false)
    this:CancelWeather()
    self:ResumeAvatarFreeStyle()
end

function Quest14008:OnSubStart1400805(arg1)
    print("OnSubStart1400805")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14008Trigger12", "Actor/Gadget/Q14008Trigger12", 70900002, 0, points.TPos_Q14008Trigger12.pos, points.TPos_Q14008Trigger12.rot, true, false, 20200)
        this:CreateQuestNpc(arg1, npcs.Npc13840Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1076Data.alias):DisableInteeHeadCtrl(true)
        this:CreateQuestNpc(arg1, npcs.Npc13657Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13657Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:LookAt({x = 3529.133, y = 472.0278, z = 3604.57})
        this:CreateQuestNpc(arg1, npcs.Npc13658Data.id, 0)
        local v = this:GetQuestNpcActor(npcs.Npc13658Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:DoFreeStyle(1170, true, nil, true, true, false, false)
        arg1_2:DisableMainPageWithConfigByQuest(true, "DisableTorrentMainQuest")
        arg1_2:EnableSpecialElementView(true, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
        actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", true, 20200, true)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc1076Data.alias)
        arg1_2:NpcForceAvatarWalkByDist(questNpcActor2, 8, 8)
        arg1_2:SetNavigationByMainId(14008, true)
        this:SetWeather("BigWorld/Weather_Foggy_MirrorWorld01")
        arg1_2:BanAvatarFreeStyle()
    end)
end

function Quest14008:OnSubFinish1400805(arg1)
    print("OnSubFinish1400805")
    this:DestroyQuestNpcActor(npcs.Npc13840Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13657Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13658Data.alias, 20200)
    actorMgr:DestroyEntityActor("Q14008Trigger12", 20200, false)
end

function Quest14008:OnSubFailed1400805(arg1)
    print("OnSubFailed1400805")
    this:DestroyQuestNpcActor(npcs.Npc13840Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13657Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13658Data.alias, 20200)
    actorMgr:DestroyEntityActor("Q14008Trigger12", 20200, false)
    self:DisableMainPageWithConfigByQuest(false, "DisableTorrentMainQuest")
    self:EnableSpecialElementView(false, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", false, 0, false)
    this:CancelWeather()
    self:ResumeAvatarFreeStyle()
end

function Quest14008:OnSubStart1400806(arg1)
    print("OnSubStart1400806")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14008Trigger13", "Actor/Gadget/Q14008Trigger13", 70900002, 0, points.TPos_Q14008Trigger13.pos, points.TPos_Q14008Trigger13.rot, true, false, 20200)
        if arg1_2:GetQuestVar(1400806, 1) == 0 then
            actorMgr:CreateActorWithPos("Q14008Trigger7", "Actor/Gadget/Q14008Trigger7", 70900002, 0, {x = 3500.396, y = 466.623, z = 3632.119}, {x = 1.886, y = 315.773, z = -0.004}, true, false, 20200)
            this:CreateLocalGadget(70711250, "1", {x = 3502.726, y = 466.94, z = 3636.766}, {x = 0.0, y = 0.0, z = 0.0}, 20200, nil, nil, false)
            this:CreateQuestNpc(arg1, npcs.Npc13767Data.id, 0)
            this:CreateQuestNpc(arg1, npcs.Npc13564Data.id, 0)
            this:CreateQuestNpc(arg1, npcs.Npc13765Data.id, 0)
            this:CreateQuestNpc(arg1, npcs.Npc13766Data.id, 0)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc13767Data.alias)
            arg1_2:NpcForceAvatarWalkByDist(questNpcActor, 10, 10)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
            this:GetQuestNpcActor(npcs.Npc13564Data.alias):DisableInteeHeadCtrl(true)
            local v = this:GetQuestNpcActor(npcs.Npc13765Data.alias)
            v:DisableInteeHeadCtrl(true)
            v:DoFreeStyle(1120, true, nil, true, true, false, false)
            local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc13766Data.alias)
            questNpcActor2:DisableInteeHeadCtrl(true)
            questNpcActor2:DoFreeStyle(1230, true, nil, true, true, false, false)
        end

        if arg1_2:GetQuestVar(1400806, 2) == 0 then
            actorMgr:CreateActorWithPos("Q14008Trigger8", "Actor/Gadget/Q14008Trigger8", 70900002, 0, {x = 3484.938, y = 464.901, z = 3648.233}, {x = 0.0, y = 315.438, z = 0.0}, true, false, 20200)
            this:CreateLocalGadget(70711250, "2", {x = 3480.67, y = 466.03, z = 3646.36}, {x = 0.0, y = 0.0, z = 0.0}, 20200, nil, nil, false)
            this:CreateQuestNpc(arg1, npcs.Npc13677Data.id, 0)
            this:CreateQuestNpc(arg1, npcs.Npc13768Data.id, 0)
            this:CreateQuestNpc(arg1, npcs.Npc13769Data.id, 0)
            this:CreateQuestNpc(arg1, npcs.Npc13565Data.id, 0)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc13677Data.alias)
            arg1_2:NpcForceAvatarWalkByDist(questNpcActor, 10, 10)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:DoFreeStyle(1070, true, nil, true, true, false, false)
            local v = this:GetQuestNpcActor(npcs.Npc13768Data.alias)
            v:DisableInteeHeadCtrl(true)
            v:DoFreeStyle(1120, true, nil, true, true, false, false)
            local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc13769Data.alias)
            questNpcActor2:DisableInteeHeadCtrl(true)
            questNpcActor2:DoFreeStyle(1230, true, nil, true, true, false, false)
            this:GetQuestNpcActor(npcs.Npc13565Data.alias):DisableInteeHeadCtrl(true)
        end

        if arg1_2:GetQuestVar(1400806, 3) == 0 then
            actorMgr:CreateActorWithPos("Q14008Trigger9", "Actor/Gadget/Q14008Trigger9", 70900002, 0, {x = 3468.88, y = 459.0, z = 3667.381}, {x = 0.0, y = 312.403, z = 0.0}, true, false, 20200)
            this:CreateLocalGadget(70711250, "3", {x = 3471.11, y = 464.43, z = 3668.83}, {x = 0.0, y = 0.0, z = 0.0}, 20200, nil, nil, false)
            this:CreateQuestNpc(arg1, npcs.Npc13562Data.id, 0)
            this:CreateQuestNpc(arg1, npcs.Npc13678Data.id, 0)
            this:CreateQuestNpc(arg1, npcs.Npc13770Data.id, 0)
            this:CreateQuestNpc(arg1, npcs.Npc13771Data.id, 0)
            this:GetQuestNpcActor(npcs.Npc13562Data.alias):DisableInteeHeadCtrl(true)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc13678Data.alias)
            arg1_2:NpcForceAvatarWalkByDist(questNpcActor, 10, 10)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:DoFreeStyle(1070, true, nil, true, true, false, false)
            local v = this:GetQuestNpcActor(npcs.Npc13770Data.alias)
            v:DisableInteeHeadCtrl(true)
            v:DoFreeStyle(1230, true, nil, true, true, false, false)
            local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc13771Data.alias)
            questNpcActor2:DisableInteeHeadCtrl(true)
            questNpcActor2:DoFreeStyle(1120, true, nil, true, true, false, false)
        end

        this:CreateQuestNpc(arg1, npcs.Npc13840Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13658Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13566Data.id, 0)
        arg1_2:DisableMainPageWithConfigByQuest(true, "DisableTorrentMainQuest")
        arg1_2:EnableSpecialElementView(true, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
        actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", true, 20200, true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13566Data.alias)
        arg1_2:NpcForceAvatarWalkByDist(questNpcActor, 8, 8)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
        local v = this:GetQuestNpcActor(npcs.Npc13658Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:DoFreeStyle(1190, true, nil, true, true, false, false)
        arg1_2:SetNavigationByMainId(14008, true)
        this:SetWeather("BigWorld/Weather_Storm_MirrorWorld01")
        arg1_2:BanAvatarFreeStyle()
        this:CreateLocalGadget(70711352, "1", {x = 3487.775, y = 465.0416, z = 3646.01}, {x = 0.0, y = 0.0, z = 0.0}, 20200, nil, nil, false)
    end)
end

function Quest14008:OnSubFinish1400806(arg1)
    print("OnSubFinish1400806")
    this:GetQuestNpcActor(npcs.Npc13562Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13564Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13565Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13677Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13678Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13765Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13766Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13767Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13768Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13769Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13770Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13771Data.alias):DisableInteeHeadCtrl(false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13658Data.alias)
    questNpcActor:DisableInteeHeadCtrl(false)
    questNpcActor:DestroyWithDitherEx(1)
    local v = this:GetQuestNpcActor(npcs.Npc13566Data.alias)
    v:DisableInteeHeadCtrl(false)
    v:DestroyWithDitherEx(1)
    this:DestroyQuestNpcActor(npcs.Npc13840Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13562Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13564Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13565Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13677Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13678Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13765Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13766Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13767Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13768Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13769Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13770Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13771Data.alias, 20200)
    this:RemoveLocalGadget(70711250, "1")
    this:RemoveLocalGadget(70711250, "2")
    this:RemoveLocalGadget(70711250, "3")
    this:RemoveLocalGadget(70711352, "1")
    actorMgr:DestroyEntityActor("Q14008Trigger7", 20200, false)
    actorMgr:DestroyEntityActor("Q14008Trigger8", 20200, false)
    actorMgr:DestroyEntityActor("Q14008Trigger9", 20200, false)
    actorMgr:DestroyEntityActor("Q14008Trigger13", 20200, false)
end

function Quest14008:OnSubFailed1400806(arg1)
    print("OnSubFailed1400806")
    this:SetQuestVarByMainId(1, 0)
    this:SetQuestVarByMainId(2, 0)
    this:SetQuestVarByMainId(3, 0)
    this:GetQuestNpcActor(npcs.Npc13562Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13564Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13565Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13677Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13678Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13765Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13766Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13767Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13768Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13769Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13770Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13771Data.alias):DisableInteeHeadCtrl(false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13658Data.alias)
    questNpcActor:DisableInteeHeadCtrl(false)
    questNpcActor:DestroyWithDitherEx(1)
    local v = this:GetQuestNpcActor(npcs.Npc13566Data.alias)
    v:DisableInteeHeadCtrl(false)
    v:DestroyWithDitherEx(1)
    this:DestroyQuestNpcActor(npcs.Npc13840Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13562Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13564Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13565Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13677Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13678Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13765Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13766Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13767Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13768Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13769Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13770Data.alias, 20200)
    this:DestroyQuestNpcActor(npcs.Npc13771Data.alias, 20200)
    this:RemoveLocalGadget(70711250, "1")
    this:RemoveLocalGadget(70711250, "2")
    this:RemoveLocalGadget(70711250, "3")
    this:RemoveLocalGadget(70711352, "1")
    actorMgr:DestroyEntityActor("Q14008Trigger7", 20200, false)
    actorMgr:DestroyEntityActor("Q14008Trigger8", 20200, false)
    actorMgr:DestroyEntityActor("Q14008Trigger9", 20200, false)
    actorMgr:DestroyEntityActor("Q14008Trigger13", 20200, false)
    self:DisableMainPageWithConfigByQuest(false, "DisableTorrentMainQuest")
    self:EnableSpecialElementView(false, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", false, 0, false)
    this:CancelWeather()
    self:ResumeAvatarFreeStyle()
end

function Quest14008:OnSubStart1400807(arg1)
    print("OnSubStart1400807")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q14008Trigger4", "Actor/Gadget/Q14008Trigger4", 70900002, 0, points.TPos_Q14008Trigger4.pos, points.TPos_Q14008Trigger4.rot, true, false, 20201)
        arg1:DisableMainPageWithConfigByQuest(true, "DisableTorrentMainQuest")
        arg1:EnableSpecialElementView(true, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
        actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", true, 20200, true)
        arg1:SetNavigationByMainId(14008, true)
        this:SetWeather("BigWorld/Weather_Storm_MirrorWorld01")
        arg1:BanAvatarFreeStyle()
    end)
end

function Quest14008:OnSubFinish1400807(arg1)
    print("OnSubFinish1400807")
    this:DestroyQuestNpcActor(npcs.Npc13560Data.alias, 20201)
    actorMgr:DestroyEntityActor("Q14008Trigger4", 20201, false)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId_01, 0, nil, nil)
    self:DisableMainPageWithConfigByQuest(false, "DisableTorrentMainQuest")
    self:EnableSpecialElementView(false, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", false, 0, false)
    this:CancelWeather()
    self:ResumeAvatarFreeStyle()
end

function Quest14008:OnSubFailed1400807(arg1)
    print("OnSubFailed1400807")
    this:SetQuestVarByMainId(1, 0)
    this:SetQuestVarByMainId(2, 0)
    this:SetQuestVarByMainId(3, 0)
    this:DestroyQuestNpcActor(npcs.Npc13560Data.alias, 20201)
    actorMgr:DestroyEntityActor("Q14008Trigger4", 20201, false)
    self:DisableMainPageWithConfigByQuest(false, "DisableTorrentMainQuest")
    self:EnableSpecialElementView(false, 14008, 1, M.Color(0.9254901960784314, 0.8470588235294118, 0.7607843137254902, 0.25), 10000, {{targetType = EActorTargetType.Avatar}})
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", false, 0, false)
    this:CancelWeather()
    self:ResumeAvatarFreeStyle()
end

function Quest14008:OnSubStart1400808(arg1)
    print("OnSubStart1400808")
    actorMgr:CreateActorWithPos("Q14008Trigger1", "Actor/Gadget/Q14008Trigger1", 70900002, 0, {x = 3485.255, y = 460.482, z = 3648.808}, {x = 0.0, y = 314.882, z = 0.0}, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc5106Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13509Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5116Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13607Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13443Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5113Data.id, 0)
    this:NotifyTo(npcs.Npc5118Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5119Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5111Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5115Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5112Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5104Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5105Data.alias, 1, true)
    this:NotifyTo(npcs.Npc13489Data.alias, 1, true)
    this:NotifyTo(npcs.Npc13490Data.alias, 1, true)
    this:NotifyTo(npcs.Npc13491Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5114Data.alias, 1, true)
end

function Quest14008:OnSubFinish1400808(arg1)
    print("OnSubFinish1400808")
    this:DestroyQuestNpcActor(npcs.Npc1076Data.alias, 3)
end

function Quest14008:OnSubStart1400809(arg1)
    print("OnSubStart1400809")
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc5114Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5118Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5119Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5111Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5115Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5112Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5104Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5105Data.alias, 1, true)
        this:NotifyTo(npcs.Npc13489Data.alias, 1, true)
        this:NotifyTo(npcs.Npc13490Data.alias, 1, true)
        this:NotifyTo(npcs.Npc13491Data.alias, 1, true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc5106Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
        local v = this:GetQuestNpcActor(npcs.Npc5116Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:DoFreeStyle(1230, true, nil, true, true, false, true)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc5113Data.alias)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:LookAt({x = 3486.1, y = 462.5, z = 3655.5})
        local questNpcActor3 = this:GetQuestNpcActor(npcs.Npc13509Data.alias)
        questNpcActor3:DisableInteeHeadCtrl(true)
        questNpcActor3:DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc13443Data.alias):DisableInteeHeadCtrl(true)
        local questNpcActor4 = this:GetQuestNpcActor(npcs.Npc13607Data.alias)
        questNpcActor4:DisableInteeHeadCtrl(true)
        questNpcActor4:DoFreeStyle(1170, true, nil, true, true, false, true)
        if sceneData.currSceneID == 1083 then
            arg1:FinishQuestID(false, 1400809)
        end
    end)
end

function Quest14008:OnSubFinish1400809(arg1)
    print("OnSubFinish1400809")
    this:GetQuestNpcActor(npcs.Npc5106Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5116Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5113Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13509Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13443Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13607Data.alias):DisableInteeHeadCtrl(false)
    this:DestroyQuestNpcActor(npcs.Npc5106Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13509Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5116Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13607Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13443Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5113Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5114Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5118Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5119Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5111Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5115Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5112Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5104Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5105Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc13489Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc13490Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc13491Data.alias, 0, true)
end

function Quest14008:OnSubStart1400810(arg1)
    print("OnSubStart1400810")
end

function Quest14008:OnSubFinish1400810(arg1)
    print("OnSubFinish1400810")
end

function Quest14008:OnSubStart1400812(arg1)
    print("OnSubStart1400812")
    actorMgr:CreateActorWithPos("Q14008Trigger14", "Actor/Gadget/Q14008Trigger14", 70900002, 0, {x = 3524.616, y = 421.0, z = 4609.433}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:CreateLocalGadget(707111127, "1", {x = 3526.731, y = 422.185, z = 4606.201}, {x = 0.0, y = -211.688, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(707111127, "2", {x = 3525.772, y = 422.185, z = 4606.291}, {x = 0.0, y = 60.299, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(707111127, "3", {x = 3525.889, y = 422.185, z = 4607.269}, {x = 0.0, y = 124.501, z = 0.0}, 3, nil, nil, false)
    this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13608Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13609Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13506Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5064Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5065Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1075Data.alias)
    questNpcActor:SitOnChair(8013, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc13608Data.alias)
    v:SitOnChair(8040, true)
    v:DisableInteeHeadCtrl(true)
    local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc13609Data.alias)
    questNpcActor2:SitOnChair(8040, true)
    questNpcActor2:DisableInteeHeadCtrl(true)
    local questNpcActor3 = this:GetQuestNpcActor(npcs.Npc13506Data.alias)
    questNpcActor3:SitOnChair(0, true)
    questNpcActor3:DisableInteeHeadCtrl(true)
    local questNpcActor4 = this:GetQuestNpcActor(npcs.Npc5065Data.alias)
    questNpcActor4:DoFreeStyle(1120, true, nil, true, true, false, false)
    questNpcActor4:DisableInteeHeadCtrl(true)
    local questNpcActor5 = this:GetQuestNpcActor(npcs.Npc5064Data.alias)
    questNpcActor5:DisableInteeHeadCtrl(true)
    questNpcActor5:DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc5054Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5055Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5043Data.alias, 1, true)
end

function Quest14008:OnSubFinish1400812(arg1)
    print("OnSubFinish1400812")
    this:ActionSafeCall(function(arg1)
        this:RemoveLocalGadget(707111127, "1")
        this:RemoveLocalGadget(707111127, "2")
        this:RemoveLocalGadget(707111127, "3")
        this:GetQuestNpcActor(npcs.Npc1075Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc13608Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc13609Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc13506Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc5064Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc5065Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc1075Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13608Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13609Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13506Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5064Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5065Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5053Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5054Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5055Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5043Data.alias, 0, true)
    end)
end

return Quest14008
