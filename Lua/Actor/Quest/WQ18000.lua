require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest18000 = class("Quest18000", QuestActorProxy)
Quest18000.defaultAlias = "Quest18000"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest18000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest18000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1800001"] = self.OnSubStart1800001,
        ["1800002"] = self.OnSubStart1800002,
        ["1800003"] = self.OnSubStart1800003,
        ["1800004"] = self.OnSubStart1800004,
        ["1800005"] = self.OnSubStart1800005,
        ["1800006"] = self.OnSubStart1800006,
        ["1800007"] = self.OnSubStart1800007,
        ["1800008"] = self.OnSubStart1800008,
        ["1800009"] = self.OnSubStart1800009,
        ["1800010"] = self.OnSubStart1800010,
        ["1800018"] = self.OnSubStart1800018,
        ["1800021"] = self.OnSubStart1800021,
        ["1800011"] = self.OnSubStart1800011,
        ["1800028"] = self.OnSubStart1800028,
        ["1800012"] = self.OnSubStart1800012,
        ["1800013"] = self.OnSubStart1800013,
        ["1800014"] = self.OnSubStart1800014,
        ["1800015"] = self.OnSubStart1800015,
        ["1800016"] = self.OnSubStart1800016,
        ["1800017"] = self.OnSubStart1800017,
        ["1800019"] = self.OnSubStart1800019,
        ["1800022"] = self.OnSubStart1800022,
        ["1800023"] = self.OnSubStart1800023,
        ["1800024"] = self.OnSubStart1800024,
        ["1800025"] = self.OnSubStart1800025,
        ["1800026"] = self.OnSubStart1800026,
        ["1800020"] = self.OnSubStart1800020,
        ["1800027"] = self.OnSubStart1800027,
        ["1800029"] = self.OnSubStart1800029
    }
end

function Quest18000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1800001"] = self.OnSubFinish1800001,
        ["1800002"] = self.OnSubFinish1800002,
        ["1800003"] = self.OnSubFinish1800003,
        ["1800004"] = self.OnSubFinish1800004,
        ["1800005"] = self.OnSubFinish1800005,
        ["1800006"] = self.OnSubFinish1800006,
        ["1800007"] = self.OnSubFinish1800007,
        ["1800008"] = self.OnSubFinish1800008,
        ["1800009"] = self.OnSubFinish1800009,
        ["1800010"] = self.OnSubFinish1800010,
        ["1800018"] = self.OnSubFinish1800018,
        ["1800021"] = self.OnSubFinish1800021,
        ["1800011"] = self.OnSubFinish1800011,
        ["1800028"] = self.OnSubFinish1800028,
        ["1800012"] = self.OnSubFinish1800012,
        ["1800013"] = self.OnSubFinish1800013,
        ["1800014"] = self.OnSubFinish1800014,
        ["1800015"] = self.OnSubFinish1800015,
        ["1800016"] = self.OnSubFinish1800016,
        ["1800017"] = self.OnSubFinish1800017,
        ["1800019"] = self.OnSubFinish1800019,
        ["1800022"] = self.OnSubFinish1800022,
        ["1800023"] = self.OnSubFinish1800023,
        ["1800024"] = self.OnSubFinish1800024,
        ["1800025"] = self.OnSubFinish1800025,
        ["1800026"] = self.OnSubFinish1800026,
        ["1800020"] = self.OnSubFinish1800020,
        ["1800027"] = self.OnSubFinish1800027,
        ["1800029"] = self.OnSubFinish1800029
    }
end

function Quest18000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1800001"] = self.OnSubFailed1800001,
        ["1800002"] = self.OnSubFailed1800002,
        ["1800003"] = self.OnSubFailed1800003,
        ["1800004"] = self.OnSubFailed1800004,
        ["1800005"] = self.OnSubFailed1800005,
        ["1800006"] = self.OnSubFailed1800006,
        ["1800007"] = self.OnSubFailed1800007,
        ["1800008"] = self.OnSubFailed1800008,
        ["1800009"] = self.OnSubFailed1800009,
        ["1800010"] = self.OnSubFailed1800010,
        ["1800018"] = self.OnSubFailed1800018,
        ["1800021"] = self.OnSubFailed1800021,
        ["1800011"] = self.OnSubFailed1800011,
        ["1800028"] = self.OnSubFailed1800028,
        ["1800012"] = self.OnSubFailed1800012,
        ["1800013"] = self.OnSubFailed1800013,
        ["1800014"] = self.OnSubFailed1800014,
        ["1800015"] = self.OnSubFailed1800015,
        ["1800016"] = self.OnSubFailed1800016,
        ["1800017"] = self.OnSubFailed1800017,
        ["1800019"] = self.OnSubFailed1800019,
        ["1800022"] = self.OnSubFailed1800022,
        ["1800023"] = self.OnSubFailed1800023,
        ["1800024"] = self.OnSubFailed1800024,
        ["1800025"] = self.OnSubFailed1800025,
        ["1800026"] = self.OnSubFailed1800026,
        ["1800020"] = self.OnSubFailed1800020,
        ["1800027"] = self.OnSubFailed1800027,
        ["1800029"] = self.OnSubFailed1800029
    }
end

function Quest18000:Start()
    print("Start")
end

function Quest18000:OnDestroy()
    print("OnDestroy")
end

function Quest18000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest18000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest18000:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1439", 0, true)
    self:NotifyTo("Npc1417", 0, true)
    self:NotifyTo("Npc1465", 0, true)
    self:NotifyTo("Npc1512", 0, true)
    self:UnSpawn("investigate1")
    self:UnSpawn("investigate3")
    self:UnSpawn("Dandelion_Bundle")
    self:UnSpawn("GuardianFootprint")
    self:NotifyTo("Npc1477", 0, true)
end

function Quest18000:RepeatCheckSit()
    Quest18000:CallOnAvatarSit(Quest18000.CheckSitPos)
end

function Quest18000:CheckSitPos()
    local pos = sceneData:GetDummyPoint(1009, "Q18000seat").pos
    local avatarPos = actorUtils.GetAvatarPos()
    if math.abs(pos.x - avatarPos.x) < 2 then
        if math.abs(pos.z - avatarPos.z) < 2 then
            if math.abs(pos.y - avatarPos.y) < 2 then
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                if actor ~= nil then
                    actor:FinishQuestID(false, 1800005)
                end
            end
        end
    else
        Quest18000:CallOnAvatarStand(Quest18000.RepeatCheckSit)
    end
end

function Quest18000:destorycatherine()
    self:LightNotifyTo("NPC1512", 0, true)
    self:DestroyQuestNpcActorByAlias(npcs.Npc151201Data.alias, false)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest18000:interacion1800018()
    print("interacion1800018")
    self:CreateQuestNpcById(1800018, npcs.Npc1022Data.id, 1)
    self:RequestInteraction(npcs.Npc1022Data.alias)
end

function Quest18000:InvokeOnInteraction(arg1)
    if arg1 == 1 or arg1 == 2 then
        self:SetQuestVar(1800007, 1, 0)
        local n = self:GetQuestVar(1800007, 1) + 0
        self:SetQuestVar(1800007, 1, n)
    elseif arg1 == 3 then
        self:SetQuestVar(1800007, 1, 0)
        local n = self:GetQuestVar(1800007, 1) + 1
        self:SetQuestVar(1800007, 1, n)
    elseif arg1 == 4 or arg1 == 5 then
        local n = self:GetQuestVar(1800007, 1) + 0
        self:SetQuestVar(1800007, 1, n)
    elseif arg1 == 6 then
        local n = self:GetQuestVar(1800007, 1) + 1
        self:SetQuestVar(1800007, 1, n)
    elseif arg1 == 7 or arg1 == 8 then
        local n = self:GetQuestVar(1800007, 1) + 0
        self:SetQuestVar(1800007, 1, n)
    elseif arg1 == 9 then
        local n = self:GetQuestVar(1800007, 1) + 1
        self:SetQuestVar(1800007, 1, n)
    end
end

function Quest18000:narrator()
    print("narrator")
    self:NarratorOnlyTaskByData(datas.paimonarratorbeforewind, nil, 18000)
end

function Quest18000:destroywagena()
    self:DestroyQuestNpcActorByAlias(npcs.Npc141701Data.alias, false)
    self:DestroyQuestNpcActorByAlias(npcs.Npc143901Data.alias, false)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:NotifyTo("Npc1417", 0, true)
    self:NotifyTo("Npc1439", 0, true)
end

function Quest18000:createpaimon()
    print("createpaimon")
    self:CreateQuestNpcById(1800006, npcs.PaimonData.id, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest18000:narrator2()
    print("narrator2")
    self:NarratorOnlyTaskByData(datas.paimonnarratorinfeixubeforekill, nil, 18000)
end

function Quest18000:narrator3()
    print("narrator3")
    self:NarratorOnlyTaskByData(datas.paimonnarrator452, nil, 18000)
end

function Quest18000:destroydainsleif()
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 3)
end

function Quest18000:showblackscreen1800018()
    print("showblackscreen1800018")
    self:ShowBlackScreen(0.5, 1, 0.5, self.interacion1800018, nil, nil, "")
end

function Quest18000:interacion1800024()
    print("interacion1800024")
    self:CreateQuestNpcById(1800024, npcs.Npc1022Data.id, 1)
    self:RequestInteraction(npcs.Npc1022Data.alias)
end

function Quest18000:showblackscreen1800024()
    print("showblackscreen1800024")
    self:ShowBlackScreen(0.5, 1, 0.5, self.interacion1800024, nil, nil, "")
end

function Quest18000:interaction()
    print("interaction")
    self:RequestInteraction(npcs.Npc1022Data.alias)
end

function Quest18000:createcatherine()
    print("createcatherine")
    self:NotifyTo("NPC1512", 1, true)
    self:CreateQuestNpcById(1800001, npcs.Npc151201Data.id, 1)
end

function Quest18000:createloruns()
    print("createloruns")
    self:NotifyTo("Npc1439", 1, true)
    self:CreateQuestNpcById(1800002, npcs.Npc143901Data.id, 1)
end

function Quest18000:createwagena()
    print("createwagena")
    self:NotifyTo("Npc1439", 1, true)
    self:NotifyTo("Npc1417", 1, true)
    self:CreateQuestNpcById(1800003, npcs.Npc141701Data.id, 1)
end

function Quest18000:createcharles()
    print("createcharles")
    self:CreateQuestNpcById(1800004, npcs.Npc146501Data.id, 1)
    self:NotifyTo("Npc1465", 1, true)
    self:NotifyTo("Npc1477", 1, true)
end

function Quest18000:WeatherControl()
    local actor = actorMgr:GetActor(datas.Q18000Trigger5_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    self:CallDelay(1, function()
        actorMgr:CreateActorWithPos(datas.Q18000Trigger5_.alias, datas.Q18000Trigger5_.script, datas.Q18000Trigger5_.id, 0, datas.Q18000Trigger5_.point.pos, datas.Q18000Trigger5_.point.rot, true, false, 3)
    end)
end

function Quest18000:OnSubStart1800001(arg1)
    print("OnSubStart1800001")
    self:ActionSafeCall(self.createcatherine)
end

function Quest18000:OnSubFinish1800001(arg1)
    print("OnSubFinish1800001")
    self:ShowBlackScreen(0.5, 2, 0.5, self.destorycatherine, nil, nil, "")
end

function Quest18000:OnSubFailed1800001(arg1)
    print("OnSubFailed1800001")
end

function Quest18000:OnSubStart1800002(arg1)
    print("OnSubStart1800002")
    self:ActionSafeCall(self.createloruns)
end

function Quest18000:OnSubFinish1800002(arg1)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest18000:OnSubFailed1800002(arg1)
    print("OnSubFailed1800002")
end

function Quest18000:OnSubStart1800003(arg1)
    print("OnSubStart1800003")
    self:ActionSafeCall(self.createwagena)
end

function Quest18000:OnSubFinish1800003(arg1)
    print("OnSubFinish1800003")
    self:ShowBlackScreen(0, 1.5, 0, self.destroywagena, nil, nil, "")
end

function Quest18000:OnSubFailed1800003(arg1)
    print("OnSubFailed1800003")
end

function Quest18000:OnSubStart1800004(arg1)
    print("OnSubStart1800004")
    self:ActionSafeCall(self.createcharles)
end

function Quest18000:OnSubFinish1800004(arg1)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest18000:OnSubFailed1800004(arg1)
    print("OnSubFailed1800004")
end

function Quest18000:OnSubStart1800005(arg1)
    print("OnSubStart1800005")
    self:RepeatCheckSit()
    self:NotifyTo("Npc1477", 1, true)
    self:NotifyTo("Npc1465", 1, true)
end

function Quest18000:OnSubFinish1800005(arg1)
    print("OnSubFinish1800005")
end

function Quest18000:OnSubFailed1800005(arg1)
    print("OnSubFailed1800005")
end

function Quest18000:OnSubStart1800006(arg1)
    print("OnSubStart1800006")
    self:NotifyTo("Npc1477", 1, true)
    self:NotifyTo("Npc1465", 1, true)
    self:ShowBlackScreen(0.5, 3, 0.5, self.createpaimon, nil, nil, "QUEST_Message_Q1800005")
end

function Quest18000:OnSubFinish1800006(arg1)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:SafeDestroyQuestNpc(npcs.Npc146501Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1022Data.alias, 1009)
end

function Quest18000:OnSubFailed1800006(arg1)
    print("OnSubFailed1800006")
end

function Quest18000:OnSubStart1800007(arg1)
    print("OnSubStart1800007")
    self:NotifyTo("Npc1465", 0, true)
    self:SetQuestVar(1800007, 1, 0)
    self:CreateQuestNpc(arg1, npcs.Npc102201Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc102201Data.alias)
    questNpcActor:SitOnChair(0)
    questNpcActor:EnableHeadCtrl(false)
    self:NotifyTo("Npc1477", 1, true)
end

function Quest18000:OnSubFinish1800007(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc102201Data.alias, 1009)
    self:DestroyQuestNpcActor(npcs.Npc1022Data.alias, 1009)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest18000:OnSubFailed1800007(arg1)
    print("OnSubFailed1800007")
end

function Quest18000:OnSubStart1800008(arg1)
    print("OnSubStart1800008")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
        arg1_2:NotifyTo("Npc1477", 1, true)
    end)
end

function Quest18000:OnSubFinish1800008(arg1)
    print("OnSubFinish1800008")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 3)
    self:NotifyTo("Npc1477", 0, true)
end

function Quest18000:OnSubFailed1800008(arg1)
    print("OnSubFailed1800008")
end

function Quest18000:OnSubStart1800009(arg1)
    print("OnSubStart1800009")
end

function Quest18000:OnSubFinish1800009(arg1)
    print("OnSubFinish1800009")
end

function Quest18000:OnSubFailed1800009(arg1)
    print("OnSubFailed1800009")
end

function Quest18000:OnSubStart1800010(arg1)
    print("OnSubStart1800010")
end

function Quest18000:OnSubFinish1800010(arg1)
    print("OnSubFinish1800010")
end

function Quest18000:OnSubFailed1800010(arg1)
    print("OnSubFailed1800010")
end

function Quest18000:OnSubStart1800018(arg1)
    print("OnSubStart1800018")
    self:CallDelay(2, self.showblackscreen1800018)
end

function Quest18000:OnSubFinish1800018(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest18000:OnSubFailed1800018(arg1)
    print("OnSubFailed1800018")
end

function Quest18000:OnSubStart1800021(arg1)
    print("OnSubStart1800021")
end

function Quest18000:OnSubFinish1800021(arg1)
    print("OnSubFinish1800021")
end

function Quest18000:OnSubFailed1800021(arg1)
    print("OnSubFailed1800021")
end

function Quest18000:OnSubStart1800011(arg1)
    print("OnSubStart1800011")
    actorMgr:CreateActorWithPos(datas.Q18000Trigger1_.alias, datas.Q18000Trigger1_.script, datas.Q18000Trigger1_.id, 0, datas.Q18000Trigger1_.point.pos, datas.Q18000Trigger1_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1022Data.alias):DoFreeStyle(1190, true, nil, true, true)
    self:WeatherControl()
end

function Quest18000:OnSubFinish1800011(arg1)
    print("OnSubFinish1800011")
    self:NarratorOnlyTaskByData(datas.paimonnarratorbeforebenlangling, nil, 18000)
end

function Quest18000:OnSubFailed1800011(arg1)
    print("OnSubFailed1800011")
end

function Quest18000:OnSubStart1800028(arg1)
    print("OnSubStart1800028")
    self:GetQuestNpcActor(npcs.Npc1022Data.alias):DoFreeStyle(1190, true, nil, true, true)
    self:WeatherControl()
end

function Quest18000:OnSubFinish1800028(arg1)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest18000:OnSubFailed1800028(arg1)
    print("OnSubFailed1800028")
end

function Quest18000:OnSubStart1800012(arg1)
    actorMgr:CreateActorWithPos(datas.Q18000Trigger3_.alias, datas.Q18000Trigger3_.script, datas.Q18000Trigger3_.id, 0, datas.Q18000Trigger3_.point.pos, datas.Q18000Trigger3_.point.rot, true, false, 3)
    actorMgr:CreateActorWithPos(datas.Q18000Trigger4_.alias, datas.Q18000Trigger4_.script, datas.Q18000Trigger4_.id, 0, datas.Q18000Trigger4_.point.pos, datas.Q18000Trigger4_.point.rot, true, false, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1022Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true)
    questNpcActor:EnableHeadCtrl(false)
    self:WeatherControl()
end

function Quest18000:OnSubFinish1800012(arg1)
    print("OnSubFinish1800012")
    self:NarratorOnlyTaskByData(datas.paimonnarrator433, nil, 18000)
    actorMgr:DestroyEntityActor(datas.Q18000Trigger3_.alias, 3, false)
end

function Quest18000:OnSubFailed1800012(arg1)
    print("OnSubFailed1800012")
end

function Quest18000:OnSubStart1800013(arg1)
    print("OnSubStart1800013")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1022Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true)
    self:WeatherControl()
    questNpcActor:EnableHeadCtrl(false)
end

function Quest18000:OnSubFinish1800013(arg1)
    print("OnSubFinish1800013")
    self:NarratorOnlyTaskByData(datas.paimonnarrator432, nil, 18000)
    self:UnSpawn(gadgets.GadgetData1.alias)
    self:DelaySpawnGadget(arg1, gadgets.GadgetData1.id, 1, 0)
end

function Quest18000:OnSubFailed1800013(arg1)
    print("OnSubFailed1800013")
end

function Quest18000:OnSubStart1800014(arg1)
    print("OnSubStart1800014")
    self:UnSpawn(gadgets.GadgetData3.alias)
    self:DelaySpawnGadget(arg1, gadgets.GadgetData3.id, 1, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1022Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true)
    self:WeatherControl()
    questNpcActor:EnableHeadCtrl(false)
end

function Quest18000:OnSubFinish1800014(arg1)
    print("OnSubFinish1800014")
    self:CallDelay(0.5, self.narrator3)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q18000camera").pos, 1.5, 2, true, true)
    actorMgr:DestroyEntityActor(datas.Q18000Trigger4_.alias, 3, false)
end

function Quest18000:OnSubFailed1800014(arg1)
    print("OnSubFailed1800014")
end

function Quest18000:OnSubStart1800015(arg1)
    print("OnSubStart1800015")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1022Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true)
    self:WeatherControl()
    questNpcActor:EnableHeadCtrl(false)
end

function Quest18000:OnSubFinish1800015(arg1)
    print("OnSubFinish1800015")
end

function Quest18000:OnSubFailed1800015(arg1)
    print("OnSubFailed1800015")
end

function Quest18000:OnSubStart1800016(arg1)
    print("OnSubStart1800016")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1022Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true)
    self:WeatherControl()
    questNpcActor:EnableHeadCtrl(false)
end

function Quest18000:OnSubFinish1800016(arg1)
    print("OnSubFinish1800016")
    self:UnSpawn(gadgets.GadgetData1.alias)
    self:UnSpawn(gadgets.GadgetData3.alias)
end

function Quest18000:OnSubFailed1800016(arg1)
    print("OnSubFailed1800016")
end

function Quest18000:OnSubStart1800017(arg1)
    print("OnSubStart1800017")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1022Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true)
    self:WeatherControl()
    questNpcActor:EnableHeadCtrl(true)
end

function Quest18000:OnSubFinish1800017(arg1)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest18000:OnSubFailed1800017(arg1)
    print("OnSubFailed1800017")
end

function Quest18000:OnSubStart1800019(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1022Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:EnableHeadCtrl(true)
    self:WeatherControl()
end

function Quest18000:OnSubFinish1800019(arg1)
    self:DestroyQuestNpcActor(npcs.Npc1022Data.alias, 3)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest18000:OnSubFailed1800019(arg1)
    print("OnSubFailed1800019")
end

function Quest18000:OnSubStart1800022(arg1)
    actorMgr:CreateActorWithPos(datas.Q18000Trigger2_.alias, datas.Q18000Trigger2_.script, datas.Q18000Trigger2_.id, 0, datas.Q18000Trigger2_.point.pos, datas.Q18000Trigger2_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc1022Data.alias):EnableHeadCtrl(true)
    local actor = actorMgr:GetActor(datas.Q18000Trigger5_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    globalActor:LeaveWeather()
end

function Quest18000:OnSubFinish1800022(arg1)
    print("OnSubFinish1800022")
end

function Quest18000:OnSubFailed1800022(arg1)
    print("OnSubFailed1800022")
end

function Quest18000:OnSubStart1800023(arg1)
    self.CallDelay(self, 2, function()
        self:NarratorOnlyTaskByData(datas.paimonnarratorinfeixubeforekill, nil, 18000)
    end)

    self.EnterSceneLookCamera(self, sceneData:GetDummyPoint(3, "Q18000monster").pos, 10, 2, true, true)
    self.GetQuestNpcActor(self, npcs.Npc1022Data.alias):EnableHeadCtrl(true)
end

function Quest18000:OnSubFinish1800023(arg1)
    print("OnSubFinish1800023")
end

function Quest18000:OnSubFailed1800023(arg1)
    print("OnSubFailed1800023")
end

function Quest18000:OnSubStart1800024(arg1)
    print("OnSubStart1800024")
    self:CallDelay(2, self.showblackscreen1800024)
    self:GetQuestNpcActor(npcs.Npc1022Data.alias):EnableHeadCtrl(true)
end

function Quest18000:OnSubFinish1800024(arg1)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:CallDelay(2, self.narrator)
end

function Quest18000:OnSubFailed1800024(arg1)
    print("OnSubFailed1800024")
end

function Quest18000:OnSubStart1800025(arg1)
    print("OnSubStart1800025")
    self:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1022Data.alias):EnableHeadCtrl(true)
end

function Quest18000:OnSubFinish1800025(arg1)
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest18000:OnSubFailed1800025(arg1)
    print("OnSubFailed1800025")
end

function Quest18000:OnSubStart1800026(arg1)
    self.CreateQuestNpc(self, arg1, npcs.Npc1022Data.id, 1)
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1022Data.alias)
    questNpcActor:EnableInteraction(false)
    questNpcActor:EnableHeadCtrl(true)
    self.NpcWalkToTask(self, questNpcActor, sceneData:GetDummyPoint(3, "Q18000target").pos, function(arg1_2, arg2)
        arg1_2:NarratorOnlyTaskByData(datas.daiyinnarrator2, function()
            self:CreateQuestNpc(arg1, npcs.Npc11005Data.id, 1)
            self:FinishQuestID(false, 1800026)
        end, 18000)
    end, nil, nil, function(arg1)
        arg1:SyncPos(2)
    end)

    self.NarratorOnlyTaskByData(self, datas.daiyinnarrator1, nil, 18000)
    self.CallDelay(self, 15, function()
        self:CreateQuestNpc(arg1, npcs.Npc11005Data.id, 1)
        self:FinishQuestID(false, 1800026)
    end)
end

function Quest18000:OnSubFinish1800026(arg1)
    print("OnSubFinish1800026")
end

function Quest18000:OnSubFailed1800026(arg1)
    print("OnSubFailed1800026")
end

function Quest18000:OnSubStart1800020(arg1)
    print("OnSubStart1800020")
    self:GetQuestNpcActor(npcs.Npc1022Data.alias):EnableHeadCtrl(true)
end

function Quest18000:OnSubFinish1800020(arg1)
    print("OnSubFinish1800020")
end

function Quest18000:OnSubFailed1800020(arg1)
    print("OnSubFailed1800020")
end

function Quest18000:OnSubStart1800027(arg1)
    print("OnSubStart1800027")
    self:ActionSafeCall(self.interaction)
    self:GetQuestNpcActor(npcs.Npc1022Data.alias):EnableHeadCtrl(true)
end

function Quest18000:OnSubFinish1800027(arg1)
    print("OnSubFinish1800027")
    self:ShowBlackScreen(0.5, 1, 0.5, self.destroydainsleif, nil, nil, "")
end

function Quest18000:OnSubFailed1800027(arg1)
    print("OnSubFailed1800027")
end

function Quest18000:OnSubStart1800029(arg1)
    print("OnSubStart1800029")
end

function Quest18000:OnSubFinish1800029(arg1)
    print("OnSubFinish1800029")
end

function Quest18000:OnSubFailed1800029(arg1)
    print("OnSubFailed1800029")
end

return Quest18000
