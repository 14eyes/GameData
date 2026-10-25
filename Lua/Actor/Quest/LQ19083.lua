require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19083 = class("Quest19083", QuestActorProxy)
Quest19083.defaultAlias = "Quest19083"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19083:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19083:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1908301"] = self.OnSubStart1908301,
        ["1908302"] = self.OnSubStart1908302,
        ["1908303"] = self.OnSubStart1908303,
        ["1908312"] = self.OnSubStart1908312,
        ["1908304"] = self.OnSubStart1908304,
        ["1908305"] = self.OnSubStart1908305,
        ["1908306"] = self.OnSubStart1908306,
        ["1908307"] = self.OnSubStart1908307,
        ["1908308"] = self.OnSubStart1908308,
        ["1908310"] = self.OnSubStart1908310,
        ["1908311"] = self.OnSubStart1908311,
        ["1908313"] = self.OnSubStart1908313,
        ["1908309"] = self.OnSubStart1908309
    }
end

function Quest19083:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1908301"] = self.OnSubFinish1908301,
        ["1908302"] = self.OnSubFinish1908302,
        ["1908303"] = self.OnSubFinish1908303,
        ["1908312"] = self.OnSubFinish1908312,
        ["1908304"] = self.OnSubFinish1908304,
        ["1908305"] = self.OnSubFinish1908305,
        ["1908306"] = self.OnSubFinish1908306,
        ["1908307"] = self.OnSubFinish1908307,
        ["1908308"] = self.OnSubFinish1908308,
        ["1908310"] = self.OnSubFinish1908310,
        ["1908311"] = self.OnSubFinish1908311,
        ["1908313"] = self.OnSubFinish1908313,
        ["1908309"] = self.OnSubFinish1908309
    }
end

function Quest19083:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1908301"] = self.OnSubFailed1908301,
        ["1908302"] = self.OnSubFailed1908302,
        ["1908303"] = self.OnSubFailed1908303,
        ["1908312"] = self.OnSubFailed1908312,
        ["1908304"] = self.OnSubFailed1908304,
        ["1908305"] = self.OnSubFailed1908305,
        ["1908306"] = self.OnSubFailed1908306,
        ["1908307"] = self.OnSubFailed1908307,
        ["1908308"] = self.OnSubFailed1908308,
        ["1908310"] = self.OnSubFailed1908310,
        ["1908311"] = self.OnSubFailed1908311,
        ["1908313"] = self.OnSubFailed1908313,
        ["1908309"] = self.OnSubFailed1908309
    }
end

function Quest19083:Start()
    print("Start")
end

function Quest19083:OnDestroy()
    print("OnDestroy")
end

function Quest19083:OnMainFinished(arg1)
    print("OnMainFinished")
    local actor = actorMgr:GetActor(datas.Q19083Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q19083Trigger2_.alias)
    if v ~= nil then
        v:DestroySelf()
    end

    local actor2 = actorMgr:GetActor(datas.Q19083Trigger3_.alias)
    if actor2 ~= nil then
        actor2:DestroySelf()
    end

    local actor3 = actorMgr:GetActor(datas.Q19083Trigger4_.alias)
    if actor3 ~= nil then
        actor3:DestroySelf()
    end

    local actor4 = actorMgr:GetActor(datas.Q19083Trigger5_.alias)
    if actor4 ~= nil then
        actor4:DestroySelf()
    end

    local actor5 = actorMgr:GetActor(datas.Q19083Trigger6_.alias)
    if actor5 ~= nil then
        actor5:DestroySelf()
    end

    local actor6 = actorMgr:GetActor(datas.Q19083Trigger7_.alias)
    if actor6 ~= nil then
        actor6:DestroySelf()
    end
end

function Quest19083:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19083:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc11006Data.alias, 3)
    local actor = actorMgr:GetActor(datas.Q19083Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q19083Trigger2_.alias)
    if v ~= nil then
        v:DestroySelf()
    end

    local actor2 = actorMgr:GetActor(datas.Q19083Trigger3_.alias)
    if actor2 ~= nil then
        actor2:DestroySelf()
    end

    local actor3 = actorMgr:GetActor(datas.Q19083Trigger4_.alias)
    if actor3 ~= nil then
        actor3:DestroySelf()
    end

    local actor4 = actorMgr:GetActor(datas.Q19083Trigger5_.alias)
    if actor4 ~= nil then
        actor4:DestroySelf()
    end

    local actor5 = actorMgr:GetActor(datas.Q19083Trigger6_.alias)
    if actor5 ~= nil then
        actor5:DestroySelf()
    end

    local actor6 = actorMgr:GetActor(datas.Q19083Trigger7_.alias)
    if actor6 ~= nil then
        actor6:DestroySelf()
    end
end

function Quest19083:weathercontrol()
    print("weathercontrol")
    local actor = actorMgr:GetActor(datas.Q19083Trigger5_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    self:CallDelay(1, function()
        actorMgr:CreateActorWithPos(datas.Q19083Trigger5_.alias, datas.Q19083Trigger5_.script, datas.Q19083Trigger5_.id, 0, datas.Q19083Trigger5_.point.pos, datas.Q19083Trigger5_.point.rot, true, false, 3)
    end)
end

function Quest19083:createNoel4()
    print("createNoel4")
    this:CreateQuestNpcById(1908310, npcs.Npc1027Data.id, 1)
    this:RequestCoopInteractionFromSubStartPoint(103402, 1908305)
    this:RequestInteraction(npcs.Npc1027Data.alias)
end

function Quest19083:blackscreen1()
    print("blackscreen1")
    this:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoel3, nil, nil, "")
end

function Quest19083:destroyshayin()
    print("destroyshayin")
    this:SafeDestroyQuestNpc(npcs.Npc11006Data.alias, 3)
end

function Quest19083:destroyNoel()
    print("destroyNoel")
    this:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
end

function Quest19083:destroynpc()
    print("destroynpc")
    this:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc11006Data.alias, 3)
end

function Quest19083:createNoel3()
    print("createNoel3")
    this:CreateQuestNpcById(1908307, npcs.Npc1027Data.id, 1)
    this:CreateQuestNpcById(1908307, npcs.Npc11006Data.id, 2)
    this:RequestCoopInteractionFromSubStartPoint(103402, 1908304)
    this:RequestInteraction(npcs.Npc11006Data.alias)
end

function Quest19083:createNoel2()
    print("createNoel2")
    this:CreateQuestNpcById(1908305, npcs.Npc1027Data.id, 1)
    this:RequestCoopInteractionFromSubStartPoint(103402, 1908303)
    this:RequestInteraction(npcs.Npc1027Data.alias)
end

function Quest19083:createNoel1()
    print("createNoel1")
    this:CreateQuestNpcById(1908312, npcs.Npc1027Data.id, 1)
    this:RequestCoopInteractionFromSubStartPoint(103402, 1908302)
end

function Quest19083:createshayin()
    print("createshayin")
    this:CreateQuestNpcById(1908302, npcs.Npc1027Data.id, 1)
    this:CreateQuestNpcById(1908302, npcs.Npc11006Data.id, 2)
    this:RequestCoopInteractionFromSubStartPoint(103402, 1908301)
    this:RequestInteraction(npcs.Npc11006Data.alias)
end

function Quest19083:narrator1()
    print("narrator1")
    this:NarratorOnlyTaskByData(datas.narrator1, nil, 19083)
end

function Quest19083:OnSubStart1908301(arg1)
    print("OnSubStart1908301")
    actorMgr:CreateActorWithPos(datas.Q19083Trigger1_.alias, datas.Q19083Trigger1_.script, datas.Q19083Trigger1_.id, 0, datas.Q19083Trigger1_.point.pos, datas.Q19083Trigger1_.point.rot, true, false, 3)
    this:NotifyTo("Npc2049", 1, true)
end

function Quest19083:OnSubFinish1908301(arg1)
    print("OnSubFinish1908301")
end

function Quest19083:OnSubFailed1908301(arg1)
    print("OnSubFailed1908301")
end

function Quest19083:OnSubStart1908302(arg1)
    print("OnSubStart1908302")
    this:ShowBlackScreen(0.5, 0.5, 0.5, self.createshayin, nil, nil, "")
    this:NotifyTo("Npc2049", 1, true)
end

function Quest19083:OnSubFinish1908302(arg1)
    print("OnSubFinish1908302")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
    self:LightNotifyTo("Npc2049", 0, true)
end

function Quest19083:OnSubFailed1908302(arg1)
    print("OnSubFailed1908302")
end

function Quest19083:OnSubStart1908303(arg1)
    print("OnSubStart1908303")
    actorMgr:CreateActorWithPos(datas.Q19083Trigger3_.alias, datas.Q19083Trigger3_.script, datas.Q19083Trigger3_.id, 0, datas.Q19083Trigger3_.point.pos, datas.Q19083Trigger3_.point.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc11006Data.id, 1)
end

function Quest19083:OnSubFinish1908303(arg1)
    print("OnSubFinish1908303")
end

function Quest19083:OnSubFailed1908303(arg1)
    print("OnSubFailed1908303")
end

function Quest19083:OnSubStart1908312(arg1)
    print("OnSubStart1908312")
    this:RequestCoopInteractionFromSubStartPoint(103402, 1908302)
end

function Quest19083:OnSubFinish1908312(arg1)
    print("OnSubFinish1908312")
    this:ShowBlackScreen(0.5, 0.5, 0.5, self.destroynpc, nil, nil, "")
end

function Quest19083:OnSubFailed1908312(arg1)
    print("OnSubFailed1908312")
end

function Quest19083:OnSubStart1908304(arg1)
    print("OnSubStart1908304")
    actorMgr:CreateActorWithPos(datas.Q19083Trigger2_.alias, datas.Q19083Trigger2_.script, datas.Q19083Trigger2_.id, 0, datas.Q19083Trigger2_.point.pos, datas.Q19083Trigger2_.point.rot, true, false, 3)
end

function Quest19083:OnSubFinish1908304(arg1)
    print("OnSubFinish1908304")
end

function Quest19083:OnSubFailed1908304(arg1)
    print("OnSubFailed1908304")
end

function Quest19083:OnSubStart1908305(arg1)
    print("OnSubStart1908305")
    this:ShowBlackScreen(0.5, 1, 0.5, self.createNoel2, nil, nil, "")
end

function Quest19083:OnSubFinish1908305(arg1)
    print("OnSubFinish1908305")
    this:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, self.narrator1, nil, "")
end

function Quest19083:OnSubFailed1908305(arg1)
    print("OnSubFailed1908305")
end

function Quest19083:OnSubStart1908306(arg1)
    print("OnSubStart1908306")
end

function Quest19083:OnSubFinish1908306(arg1)
    print("OnSubFinish1908306")
end

function Quest19083:OnSubFailed1908306(arg1)
    print("OnSubFailed1908306")
end

function Quest19083:OnSubStart1908307(arg1)
    print("OnSubStart1908307")
    this:CallDelay(2, self.blackscreen1)
end

function Quest19083:OnSubFinish1908307(arg1)
    print("OnSubFinish1908307")
    this:ShowBlackScreen(0.5, 0.5, 0.5, self.destroynpc, nil, nil, "")
end

function Quest19083:OnSubFailed1908307(arg1)
    print("OnSubFailed1908307")
end

function Quest19083:OnSubStart1908308(arg1)
    print("OnSubStart1908308")
    actorMgr:CreateActorWithPos(datas.Q19083Trigger4_.alias, datas.Q19083Trigger4_.script, datas.Q19083Trigger4_.id, 0, datas.Q19083Trigger4_.point.pos, datas.Q19083Trigger4_.point.rot, true, false, 3)
    this:weathercontrol()
end

function Quest19083:OnSubFinish1908308(arg1)
    print("OnSubFinish1908308")
end

function Quest19083:OnSubFailed1908308(arg1)
    print("OnSubFailed1908308")
end

function Quest19083:OnSubStart1908310(arg1)
    print("OnSubStart1908310")
    this:ShowBlackScreen(0.5, 0.5, 0.5, self.createNoel4, nil, nil, "")
    this:weathercontrol()
end

function Quest19083:OnSubFinish1908310(arg1)
    print("OnSubFinish1908310")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
    local actor = actorMgr:GetActor(datas.Q19083Trigger5_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    globalActor:LeaveWeather()
end

function Quest19083:OnSubFailed1908310(arg1)
    print("OnSubFailed1908310")
end

function Quest19083:OnSubStart1908311(arg1)
    print("OnSubStart1908311")
end

function Quest19083:OnSubFinish1908311(arg1)
    print("OnSubFinish1908311")
end

function Quest19083:OnSubFailed1908311(arg1)
    print("OnSubFailed1908311")
end

function Quest19083:OnSubStart1908313(arg1)
    print("OnSubStart1908313")
end

function Quest19083:OnSubFinish1908313(arg1)
    print("OnSubFinish1908313")
end

function Quest19083:OnSubFailed1908313(arg1)
    print("OnSubFailed1908313")
end

function Quest19083:OnSubStart1908309(arg1)
    print("OnSubStart1908309")
end

function Quest19083:OnSubFinish1908309(arg1)
    print("OnSubFinish1908309")
end

function Quest19083:OnSubFailed1908309(arg1)
    print("OnSubFailed1908309")
end

return Quest19083
