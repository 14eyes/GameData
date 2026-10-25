require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19084 = class("Quest19084", QuestActorProxy)
Quest19084.defaultAlias = "Quest19084"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19084:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19084:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1908408"] = self.OnSubStart1908408,
        ["1908401"] = self.OnSubStart1908401,
        ["1908410"] = self.OnSubStart1908410,
        ["1908411"] = self.OnSubStart1908411,
        ["1908412"] = self.OnSubStart1908412,
        ["1908402"] = self.OnSubStart1908402,
        ["1908404"] = self.OnSubStart1908404,
        ["1908403"] = self.OnSubStart1908403,
        ["1908405"] = self.OnSubStart1908405,
        ["1908406"] = self.OnSubStart1908406,
        ["1908407"] = self.OnSubStart1908407,
        ["1908409"] = self.OnSubStart1908409
    }
end

function Quest19084:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1908408"] = self.OnSubFinish1908408,
        ["1908401"] = self.OnSubFinish1908401,
        ["1908410"] = self.OnSubFinish1908410,
        ["1908411"] = self.OnSubFinish1908411,
        ["1908412"] = self.OnSubFinish1908412,
        ["1908402"] = self.OnSubFinish1908402,
        ["1908404"] = self.OnSubFinish1908404,
        ["1908403"] = self.OnSubFinish1908403,
        ["1908405"] = self.OnSubFinish1908405,
        ["1908406"] = self.OnSubFinish1908406,
        ["1908407"] = self.OnSubFinish1908407,
        ["1908409"] = self.OnSubFinish1908409
    }
end

function Quest19084:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1908408"] = self.OnSubFailed1908408,
        ["1908401"] = self.OnSubFailed1908401,
        ["1908410"] = self.OnSubFailed1908410,
        ["1908411"] = self.OnSubFailed1908411,
        ["1908412"] = self.OnSubFailed1908412,
        ["1908402"] = self.OnSubFailed1908402,
        ["1908404"] = self.OnSubFailed1908404,
        ["1908403"] = self.OnSubFailed1908403,
        ["1908405"] = self.OnSubFailed1908405,
        ["1908406"] = self.OnSubFailed1908406,
        ["1908407"] = self.OnSubFailed1908407,
        ["1908409"] = self.OnSubFailed1908409
    }
end

function Quest19084:Start()
    print("Start")
end

function Quest19084:OnDestroy()
    print("OnDestroy")
end

function Quest19084:OnMainFinished(arg1)
    local actor = actorMgr:GetActor(datas.Q19084Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q19084Trigger2_.alias)
    if v ~= nil then
        v:DestroySelf()
    end

    local actor2 = actorMgr:GetActor(datas.Q19084Trigger3_.alias)
    if actor2 ~= nil then
        actor2:DestroySelf()
    end

    local actor3 = actorMgr:GetActor(datas.Q19084Trigger4_.alias)
    if actor3 ~= nil then
        actor3:DestroySelf()
    end

    local actor4 = actorMgr:GetActor(datas.Q19084Trigger5_.alias)
    if actor4 ~= nil then
        actor4:DestroySelf()
    end

    local actor5 = actorMgr:GetActor(datas.Q19084Trigger6_.alias)
    if actor5 ~= nil then
        actor5:DestroySelf()
    end
end

function Quest19084:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19084:OnMainCanceled(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc214801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc204701Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc203601Data.alias, 3)
    self:LightNotifyTo("Npc2148", 0, true)
    self:LightNotifyTo("Npc2047", 0, true)
    self:LightNotifyTo("Npc2036", 0, true)
    self:LightNotifyTo("Npc2034", 0, true)
    self:LightNotifyTo("Npc2035", 0, true)
    local actor = actorMgr:GetActor(datas.Q19084Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q19084Trigger2_.alias)
    if v ~= nil then
        v:DestroySelf()
    end

    local actor2 = actorMgr:GetActor(datas.Q19084Trigger3_.alias)
    if actor2 ~= nil then
        actor2:DestroySelf()
    end

    local actor3 = actorMgr:GetActor(datas.Q19084Trigger4_.alias)
    if actor3 ~= nil then
        actor3:DestroySelf()
    end

    local actor4 = actorMgr:GetActor(datas.Q19084Trigger5_.alias)
    if actor4 ~= nil then
        actor4:DestroySelf()
    end

    local actor5 = actorMgr:GetActor(datas.Q19084Trigger6_.alias)
    if actor5 ~= nil then
        actor5:DestroySelf()
    end
end

function Quest19084:createNoel1()
    print("createNoel1")
    self:NotifyTo("Npc2148", 1, true)
    self:NotifyTo("Npc2034", 1, true)
    self:NotifyTo("Npc2035", 1, true)
    self:CreateQuestNpcById(1908401, npcs.Npc1027Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908401)
    self:RequestInteraction(npcs.Npc214801Data.alias)
    self:NotifyTo("Npc2049", 1, true)
end

function Quest19084:createNoel2()
    print("createNoel2")
    self:NotifyTo("Npc2148", 1, true)
    self:CreateQuestNpcById(1908411, npcs.Npc1027Data.id, 1)
    self:CreateQuestNpcById(1908411, npcs.Npc214801Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908405)
    self:RequestInteraction(npcs.Npc214801Data.alias)
end

function Quest19084:createNoel3()
    print("createNoel3")
    self:CreateQuestNpcById(1908403, npcs.Npc1027Data.id, 1)
    self:CreateQuestNpcById(1908403, npcs.Npc214801Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908402)
    self:RequestInteraction(npcs.Npc214801Data.alias)
end

function Quest19084:destroynpc()
    print("destroynpc")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc214801Data.alias, 3)
end

function Quest19084:destroyNoel()
    print("destroyNoel")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
end

function Quest19084:destroytiantiezhui()
    print("destroytiantiezhui")
    self:SafeDestroyQuestNpc(npcs.Npc214801Data.alias, 3)
    self:NotifyTo("Npc2034", 1, true)
    self:NotifyTo("Npc2035", 1, true)
end

function Quest19084:createNoel4()
    print("createNoel4")
    self:NotifyTo("Npc2148", 1, true)
    self:NotifyTo("Npc2035", 1, true)
    self:NotifyTo("Npc2034", 1, true)
    self:NotifyTo("Npc2036", 1, true)
    self:NotifyTo("Npc2047", 1, true)
    self:CreateQuestNpcById(1908409, npcs.Npc1027Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908404)
    self:RequestInteraction(npcs.Npc214801Data.alias)
    self:GetQuestNpcActor(npcs.Npc204701Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):SitOnChair(0)
end

function Quest19084:createNoel5()
    print("createNoel5")
    actorMgr:CreateActorWithPos(datas.Q19084Trigger2_.alias, datas.Q19084Trigger2_.script, datas.Q19084Trigger2_.id, 0, datas.Q19084Trigger2_.point.pos, datas.Q19084Trigger2_.point.rot, true, false, 3)
    self:NotifyTo("Npc2148", 1, true)
    self:NotifyTo("Npc2047", 1, true)
    self:NotifyTo("Npc2036", 1, true)
    self:NotifyTo("Npc2034", 1, true)
    self:NotifyTo("Npc2035", 1, true)
    self:CreateQuestNpcById(1908407, npcs.Npc214801Data.id, 1)
    self:CreateQuestNpcById(1908407, npcs.Npc204701Data.id, 2)
    self:CreateQuestNpcById(1908407, npcs.Npc203601Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc204701Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):SitOnChair(0)
end

function Quest19084:destroynpcall()
    self:GetQuestNpcActor(npcs.Npc204701Data.alias):StandFromChair(0)
    self:GetQuestNpcActor(npcs.Npc203601Data.alias):StandFromChair(0)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc214801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc204701Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc203601Data.alias, 3)
    self:LightNotifyTo("Npc2148", 0, true)
    self:LightNotifyTo("Npc2047", 0, true)
    self:LightNotifyTo("Npc2036", 0, true)
    self:LightNotifyTo("Npc2034", 0, true)
    self:LightNotifyTo("Npc2035", 0, true)
end

function Quest19084:Narrator1()
    print("Narrator1")
    self:NarratorOnlyTaskByData(datas.Narrator1, nil, 19084)
end

function Quest19084:Narrator4()
    print("Narrator4")
    self:NarratorOnlyTaskByData(datas.Narrator4, nil, 19084)
end

function Quest19084:blackscreen1()
    print("blackscreen1")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoel3, nil, nil, "")
end

function Quest19084:OnSubStart1908408(arg1)
    print("OnSubStart1908408")
    actorMgr:CreateActorWithPos(datas.Q19084Trigger1_.alias, datas.Q19084Trigger1_.script, datas.Q19084Trigger1_.id, 0, datas.Q19084Trigger1_.point.pos, datas.Q19084Trigger1_.point.rot, true, false, 3)
    self:NotifyTo("Npc2148", 1, true)
    self:NotifyTo("Npc2034", 1, true)
    self:NotifyTo("Npc2035", 1, true)
    self:NotifyTo("Npc2049", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc214801Data.id, 1)
end

function Quest19084:OnSubFinish1908408(arg1)
    print("OnSubFinish1908408")
end

function Quest19084:OnSubFailed1908408(arg1)
    print("OnSubFailed1908408")
end

function Quest19084:OnSubStart1908401(arg1)
    print("OnSubStart1908401")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoel1, nil, nil, "")
end

function Quest19084:OnSubFinish1908401(arg1)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroynpc, nil, nil, "")
    self:LightNotifyTo("Npc2049", 0, true)
    actorMgr:CreateActorWithPos(datas.Q19084Trigger4_.alias, datas.Q19084Trigger4_.script, datas.Q19084Trigger4_.id, 0, datas.Q19084Trigger4_.point.pos, datas.Q19084Trigger4_.point.rot, true, false, 3)
end

function Quest19084:OnSubFailed1908401(arg1)
    print("OnSubFailed1908401")
end

function Quest19084:OnSubStart1908410(arg1)
    actorMgr:CreateActorWithPos(datas.Q19084Trigger3_.alias, datas.Q19084Trigger3_.script, datas.Q19084Trigger3_.id, 0, datas.Q19084Trigger3_.point.pos, datas.Q19084Trigger3_.point.rot, true, false, 3)
    self:NotifyTo("Npc2148", 1, true)
    self:NotifyTo("Npc2035", 1, true)
    self:NotifyTo("Npc2034", 1, true)
    globalActor:EnablePlayerInput(true)
end

function Quest19084:OnSubFinish1908410(arg1)
    self:LightNotifyTo("Npc2034", 0, true)
    self:LightNotifyTo("Npc2035", 0, true)
end

function Quest19084:OnSubFailed1908410(arg1)
    print("OnSubFailed1908410")
end

function Quest19084:OnSubStart1908411(arg1)
    print("OnSubStart1908411")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoel2, nil, nil, "")
    actorMgr:CreateActorWithPos(datas.Q19084Trigger6_.alias, datas.Q19084Trigger6_.script, datas.Q19084Trigger6_.id, 0, datas.Q19084Trigger6_.point.pos, datas.Q19084Trigger6_.point.rot, true, false, 3)
end

function Quest19084:OnSubFinish1908411(arg1)
    print("OnSubFinish1908411")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroynpc, self.Narrator4, nil, "")
end

function Quest19084:OnSubFailed1908411(arg1)
    print("OnSubFailed1908411")
end

function Quest19084:OnSubStart1908412(arg1)
    print("OnSubStart1908412")
    self:NotifyTo("Npc2148", 1, true)
    actorMgr:CreateActorWithPos(datas.Q19084Trigger5_.alias, datas.Q19084Trigger5_.script, datas.Q19084Trigger5_.id, 0, datas.Q19084Trigger5_.point.pos, datas.Q19084Trigger5_.point.rot, true, false, 3)
end

function Quest19084:OnSubFinish1908412(arg1)
    print("OnSubFinish1908412")
end

function Quest19084:OnSubFailed1908412(arg1)
    print("OnSubFailed1908412")
end

function Quest19084:OnSubStart1908402(arg1)
    print("OnSubStart1908402")
    self:NotifyTo("Npc2148", 1, true)
end

function Quest19084:OnSubFinish1908402(arg1)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1908404camera").pos, 2, 2, true, true)
    self:NarratorOnlyTaskByData(datas.Narrator2, nil, 19084)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(2, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest19084:OnSubFailed1908402(arg1)
    print("OnSubFailed1908402")
end

function Quest19084:OnSubStart1908404(arg1)
    print("OnSubStart1908404")
    self:NotifyTo("Npc2148", 1, true)
end

function Quest19084:OnSubFinish1908404(arg1)
    print("OnSubFinish1908404")
    self:NarratorOnlyTaskByData(datas.Narrator1, nil, 19084)
end

function Quest19084:OnSubFailed1908404(arg1)
    print("OnSubFailed1908404")
end

function Quest19084:OnSubStart1908403(arg1)
    self:CallDelay(2, self.blackscreen1)
    self:NotifyTo("Npc2148", 1, true)
    globalActor:EnablePlayerInput(true)
end

function Quest19084:OnSubFinish1908403(arg1)
    print("OnSubFinish1908403")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19084:OnSubFailed1908403(arg1)
    print("OnSubFailed1908403")
end

function Quest19084:OnSubStart1908405(arg1)
    print("OnSubStart1908405")
    self:NotifyTo("Npc2148", 1, true)
end

function Quest19084:OnSubFinish1908405(arg1)
    print("OnSubFinish1908405")
end

function Quest19084:OnSubFailed1908405(arg1)
    print("OnSubFailed1908405")
end

function Quest19084:OnSubStart1908406(arg1)
    print("OnSubStart1908406")
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908403)
    self:NotifyTo("Npc2148", 1, true)
    self:RequestInteraction(npcs.Npc214801Data.alias)
end

function Quest19084:OnSubFinish1908406(arg1)
    print("OnSubFinish1908406")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19084:OnSubFailed1908406(arg1)
    print("OnSubFailed1908406")
end

function Quest19084:OnSubStart1908407(arg1)
    print("OnSubStart1908407")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoel5, nil, nil, "")
end

function Quest19084:OnSubFinish1908407(arg1)
    print("OnSubFinish1908407")
end

function Quest19084:OnSubFailed1908407(arg1)
    print("OnSubFailed1908407")
end

function Quest19084:OnSubStart1908409(arg1)
    print("OnSubStart1908409")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoel4, nil, nil, "")
end

function Quest19084:OnSubFinish1908409(arg1)
    print("OnSubFinish1908409")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroynpcall, nil, nil, "")
end

function Quest19084:OnSubFailed1908409(arg1)
    print("OnSubFailed1908409")
end

return Quest19084
