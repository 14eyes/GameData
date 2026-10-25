require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40020 = class("Quest40020", QuestActorProxy)
Quest40020.defaultAlias = "Quest40020"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40020:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4002001"] = self.OnSubStart4002001,
        ["4002002"] = self.OnSubStart4002002,
        ["4002020"] = self.OnSubStart4002020,
        ["4002003"] = self.OnSubStart4002003,
        ["4002004"] = self.OnSubStart4002004,
        ["4002005"] = self.OnSubStart4002005,
        ["4002006"] = self.OnSubStart4002006,
        ["4002007"] = self.OnSubStart4002007,
        ["4002008"] = self.OnSubStart4002008,
        ["4002009"] = self.OnSubStart4002009,
        ["4002019"] = self.OnSubStart4002019,
        ["4002022"] = self.OnSubStart4002022,
        ["4002010"] = self.OnSubStart4002010,
        ["4002011"] = self.OnSubStart4002011,
        ["4002012"] = self.OnSubStart4002012,
        ["4002013"] = self.OnSubStart4002013,
        ["4002023"] = self.OnSubStart4002023,
        ["4002027"] = self.OnSubStart4002027,
        ["4002014"] = self.OnSubStart4002014,
        ["4002024"] = self.OnSubStart4002024,
        ["4002021"] = self.OnSubStart4002021,
        ["4002016"] = self.OnSubStart4002016,
        ["4002018"] = self.OnSubStart4002018,
        ["4002017"] = self.OnSubStart4002017,
        ["4002025"] = self.OnSubStart4002025,
        ["4002015"] = self.OnSubStart4002015,
        ["4002026"] = self.OnSubStart4002026
    }
end

function Quest40020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4002001"] = self.OnSubFinish4002001,
        ["4002002"] = self.OnSubFinish4002002,
        ["4002020"] = self.OnSubFinish4002020,
        ["4002003"] = self.OnSubFinish4002003,
        ["4002004"] = self.OnSubFinish4002004,
        ["4002005"] = self.OnSubFinish4002005,
        ["4002006"] = self.OnSubFinish4002006,
        ["4002007"] = self.OnSubFinish4002007,
        ["4002008"] = self.OnSubFinish4002008,
        ["4002009"] = self.OnSubFinish4002009,
        ["4002019"] = self.OnSubFinish4002019,
        ["4002022"] = self.OnSubFinish4002022,
        ["4002010"] = self.OnSubFinish4002010,
        ["4002011"] = self.OnSubFinish4002011,
        ["4002012"] = self.OnSubFinish4002012,
        ["4002013"] = self.OnSubFinish4002013,
        ["4002023"] = self.OnSubFinish4002023,
        ["4002027"] = self.OnSubFinish4002027,
        ["4002014"] = self.OnSubFinish4002014,
        ["4002024"] = self.OnSubFinish4002024,
        ["4002021"] = self.OnSubFinish4002021,
        ["4002016"] = self.OnSubFinish4002016,
        ["4002018"] = self.OnSubFinish4002018,
        ["4002017"] = self.OnSubFinish4002017,
        ["4002025"] = self.OnSubFinish4002025,
        ["4002015"] = self.OnSubFinish4002015,
        ["4002026"] = self.OnSubFinish4002026
    }
end

function Quest40020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4002001"] = self.OnSubFailed4002001,
        ["4002002"] = self.OnSubFailed4002002,
        ["4002020"] = self.OnSubFailed4002020,
        ["4002003"] = self.OnSubFailed4002003,
        ["4002004"] = self.OnSubFailed4002004,
        ["4002005"] = self.OnSubFailed4002005,
        ["4002006"] = self.OnSubFailed4002006,
        ["4002007"] = self.OnSubFailed4002007,
        ["4002008"] = self.OnSubFailed4002008,
        ["4002009"] = self.OnSubFailed4002009,
        ["4002019"] = self.OnSubFailed4002019,
        ["4002022"] = self.OnSubFailed4002022,
        ["4002010"] = self.OnSubFailed4002010,
        ["4002011"] = self.OnSubFailed4002011,
        ["4002012"] = self.OnSubFailed4002012,
        ["4002013"] = self.OnSubFailed4002013,
        ["4002023"] = self.OnSubFailed4002023,
        ["4002027"] = self.OnSubFailed4002027,
        ["4002014"] = self.OnSubFailed4002014,
        ["4002024"] = self.OnSubFailed4002024,
        ["4002021"] = self.OnSubFailed4002021,
        ["4002016"] = self.OnSubFailed4002016,
        ["4002018"] = self.OnSubFailed4002018,
        ["4002017"] = self.OnSubFailed4002017,
        ["4002025"] = self.OnSubFailed4002025,
        ["4002015"] = self.OnSubFailed4002015,
        ["4002026"] = self.OnSubFailed4002026
    }
end

function Quest40020:Start()
    print("Start")
end

function Quest40020:OnDestroy()
    print("OnDestroy")
end

function Quest40020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40020:OnMainCanceled(arg1)
    self:LightNotifyTo("Npc3055", 0, true)
    self:LightNotifyTo("Npc3059", 0, true)
    self:LightNotifyTo("Npc3025", 0, true)
    self:LightNotifyTo("Npc3056", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc3058Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3004Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1042Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1038Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12172Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc30067Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710524Data1.alias)
    self:UnSpawn(gadgets.Gadget70710524Data2.alias)
    self:UnSpawn(gadgets.Gadget70710532Data.alias)
    local actor = actorMgr:GetActor(datas.Q40020Trigger1_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q40020Trigger2_.alias)
    if v ~= nil then
        v:DestroySelf()
    end

    local actor2 = actorMgr:GetActor(datas.Q40020Trigger3_.alias)
    if actor2 ~= nil then
        actor2:DestroySelf()
    end

    local actor3 = actorMgr:GetActor(datas.Q40020Trigger4_.alias)
    if actor3 ~= nil then
        actor3:DestroySelf()
    end

    local actor4 = actorMgr:GetActor(datas.Q40020Trigger5_.alias)
    if actor4 ~= nil then
        actor4:DestroySelf()
    end

    local actor5 = actorMgr:GetActor(datas.Q40020Trigger6_.alias)
    if actor5 ~= nil then
        actor5:DestroySelf()
    end
end

function Quest40020:destroycatherine()
    print("destroycatherine")
    self:DestroyQuestNpcActorByAlias(npcs.Npc3004Data.alias, false)
end

function Quest40020:destroyshaluo()
    self:DestroyQuestNpcActorByAlias(npcs.Npc1038Data.alias, false)
    self:LightNotifyTo("Npc3055", 0, true)
    self:LightNotifyTo("Npc3056", 0, true)
end

function Quest40020:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:FinishQuestID(false, 4002011)
    elseif arg1 == 2 then
        self:FinishQuestID(false, 4002023)
    elseif arg1 == 3 then
        self:FinishQuestID(false, 4002016)
    end
end

function Quest40020:createshidajiang()
    print("createshidajiang")
    self:CreateQuestNpcById(4002010, npcs.Npc1042Data.id, 1)
    self:RequestInteraction(npcs.Npc1042Data.alias)
end

function Quest40020:createshidajiang2()
    print("createshidajiang2")
    self:CreateQuestNpcById(4002013, npcs.Npc10200Data.id, 0)
    self:RequestInteraction(npcs.Npc10200Data.alias)
end

function Quest40020:createshidajiang3()
    print("createshidajiang3")
    self:CreateQuestNpcById(4002021, npcs.Npc30067Data.id, 0)
    self:RequestInteraction(npcs.Npc30067Data.alias)
    self:UnSpawn(gadgets.Gadget70710524Data2.alias)
    self:SpawnGadgetById(4002021, gadgets.Gadget70710524Data2.id, 1)
end

function Quest40020:createxinyan()
    print("createxinyan")
    self:CreateQuestNpcById(4002017, npcs.Npc1042Data.id, 0)
    self:RequestInteraction(npcs.Npc1042Data.alias)
end

function Quest40020:destroyxinyan()
    print("destroyxinyan")
    self:DestroyQuestNpcActorByAlias(npcs.Npc1042Data.alias, false)
end

function Quest40020:OnSubStart4002001(arg1)
    self.CreateQuestNpc(self, arg1, npcs.Npc3004Data.id, 1)
    if self.GetQuestVar(self, 4002001, 4) == 0 then
        self.NarratorOnlyTaskByData(self, datas.paimonnarrator1, function()
            self:SetQuestVar(4002001, 4, 1)
        end, 40020)
    end
end

function Quest40020:OnSubFinish4002001(arg1)
    print("OnSubFinish4002001")
    self:ShowBlackScreen(0.5, 1, 0.5, self.destroycatherine, nil, nil, "", false, true)
end

function Quest40020:OnSubFailed4002001(arg1)
    print("OnSubFailed4002001")
end

function Quest40020:OnSubStart4002002(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc3058Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q40020Trigger1_.alias, datas.Q40020Trigger1_.script, datas.Q40020Trigger1_.id, 0, datas.Q40020Trigger1_.point.pos, datas.Q40020Trigger1_.point.rot, true, false, 3)
    self:NotifyTo("Npc3025", 1, true)
    self:GetQuestNpcActor(npcs.Npc1042Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:NotifyTo("Npc3055", 1, true)
    self:NotifyTo("Npc3059", 1, true)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40020:OnSubFinish4002002(arg1)
    print("OnSubFinish4002002")
    self:NarratorOnlyTaskByData(datas.paimonnarrator6, nil, 40020)
end

function Quest40020:OnSubFailed4002002(arg1)
    print("OnSubFailed4002002")
end

function Quest40020:OnSubStart4002020(arg1)
    print("OnSubStart4002020")
    self:NotifyTo("Npc3025", 1, true)
    self:GetQuestNpcActor(npcs.Npc1042Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:NotifyTo("Npc3055", 1, true)
    self:NotifyTo("Npc3059", 1, true)
    actorMgr:CreateActorWithPos(datas.Q40020Trigger5_.alias, datas.Q40020Trigger5_.script, datas.Q40020Trigger5_.id, 0, datas.Q40020Trigger5_.point.pos, datas.Q40020Trigger5_.point.rot, true, false, 3)
end

function Quest40020:OnSubFinish4002020(arg1)
    print("OnSubFinish4002020")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyxinyan, nil, nil, "", false, true)
end

function Quest40020:OnSubFailed4002020(arg1)
    print("OnSubFailed4002020")
end

function Quest40020:OnSubStart4002003(arg1)
    print("OnSubStart4002003")
    self:NotifyTo("Npc3025", 1, true)
    self:NotifyTo("Npc3055", 1, true)
    self:NotifyTo("Npc3059", 1, true)
end

function Quest40020:OnSubFinish4002003(arg1)
    print("OnSubFinish4002003")
end

function Quest40020:OnSubFailed4002003(arg1)
    print("OnSubFailed4002003")
end

function Quest40020:OnSubStart4002004(arg1)
    print("OnSubStart4002004")
    actorMgr:CreateActorWithPos(datas.Q40020Trigger2_.alias, datas.Q40020Trigger2_.script, datas.Q40020Trigger2_.id, 0, datas.Q40020Trigger2_.point.pos, datas.Q40020Trigger2_.point.rot, true, false, 3)
    self:NotifyTo("Npc3055", 1, true)
    self:NotifyTo("Npc3059", 1, true)
    self:NotifyTo("Npc3025", 1, true)
    self:NotifyTo("Npc3056", 1, true)
end

function Quest40020:OnSubFinish4002004(arg1)
    print("OnSubFinish4002004")
    self:NarratorOnlyTaskByData(datas.paimonnarrator4, nil, 40020)
end

function Quest40020:OnSubFailed4002004(arg1)
    print("OnSubFailed4002004")
end

function Quest40020:OnSubStart4002005(arg1)
    print("OnSubStart4002005")
    self:NotifyTo("Npc3055", 1, true)
    self:NotifyTo("Npc3059", 1, true)
    self:NotifyTo("Npc3025", 1, true)
    self:NotifyTo("Npc3056", 1, true)
    actorMgr:CreateActorWithPos(datas.Q40020Trigger6_.alias, datas.Q40020Trigger6_.script, datas.Q40020Trigger6_.id, 0, datas.Q40020Trigger6_.point.pos, datas.Q40020Trigger6_.point.rot, true, false, 3)
end

function Quest40020:OnSubFinish4002005(arg1)
    print("OnSubFinish4002005")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyshaluo, nil, nil, "", false, true)
end

function Quest40020:OnSubFailed4002005(arg1)
    print("OnSubFailed4002005")
end

function Quest40020:OnSubStart4002006(arg1)
    print("OnSubStart4002006")
    actorMgr:CreateActorWithPos(datas.Q40020Trigger3_.alias, datas.Q40020Trigger3_.script, datas.Q40020Trigger3_.id, 0, datas.Q40020Trigger3_.point.pos, datas.Q40020Trigger3_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12172Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc12172Data.alias):DoFreeStyle(1240, true, nil, true, true, false)
    self:NotifyTo("Npc3059", 1, true)
    self:NotifyTo("Npc3025", 1, true)
end

function Quest40020:OnSubFinish4002006(arg1)
    self:NarratorOnlyTaskByData(datas.paimonnarrator2, nil, 40020)
    self:DestroyQuestNpcActor(npcs.Npc3058Data.alias, 3)
    self:LightNotifyTo("Npc3059", 0, true)
    self:LightNotifyTo("Npc3025", 0, true)
end

function Quest40020:OnSubFailed4002006(arg1)
    print("OnSubFailed4002006")
end

function Quest40020:OnSubStart4002007(arg1)
    print("OnSubStart4002007")
    self:GetQuestNpcActor(npcs.Npc12172Data.alias):DoFreeStyle(1240, true, nil, true, true, false)
end

function Quest40020:OnSubFinish4002007(arg1)
    print("OnSubFinish4002007")
    self:GetQuestNpcActor(npcs.Npc12172Data.alias):DoFreeStateTrigger()
end

function Quest40020:OnSubFailed4002007(arg1)
    print("OnSubFailed4002007")
end

function Quest40020:OnSubStart4002008(arg1)
    print("OnSubStart4002008")
    self:UnSpawn(gadgets.Gadget70710524Data1.alias)
    self:SpawnGadget(arg1, gadgets.Gadget70710524Data1.id, 1)
end

function Quest40020:OnSubFinish4002008(arg1)
    print("OnSubFinish4002008")
end

function Quest40020:OnSubFailed4002008(arg1)
    print("OnSubFailed4002008")
end

function Quest40020:OnSubStart4002009(arg1)
    print("OnSubStart4002009")
    self:NarratorOnlyTaskByData(datas.paimonnarrator3, nil, 40020)
end

function Quest40020:OnSubFinish4002009(arg1)
    print("OnSubFinish4002009")
end

function Quest40020:OnSubFailed4002009(arg1)
    print("OnSubFailed4002009")
end

function Quest40020:OnSubStart4002019(arg1)
    print("OnSubStart4002019")
end

function Quest40020:OnSubFinish4002019(arg1)
    print("OnSubFinish4002019")
end

function Quest40020:OnSubFailed4002019(arg1)
    print("OnSubFailed4002019")
end

function Quest40020:OnSubStart4002022(arg1)
    print("OnSubStart4002022")
    self:NarratorOnlyTaskByData(datas.paimonnarrator5, nil, 40020)
    self:UnSpawn(gadgets.Gadget70710532Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710532Data.id, 1, 0)
end

function Quest40020:OnSubFinish4002022(arg1)
    print("OnSubFinish4002022")
    self:UnSpawn(gadgets.Gadget70710532Data.alias)
end

function Quest40020:OnSubFailed4002022(arg1)
    print("OnSubFailed4002022")
end

function Quest40020:OnSubStart4002010(arg1)
    print("OnSubStart4002010")
    self:ShowBlackScreen(0.5, 1, 0.5, self.createshidajiang, nil, nil, "", false, true)
end

function Quest40020:OnSubFinish4002010(arg1)
    print("OnSubFinish4002010")
    self:ShowBlackScreen(0.5, 1, 0.5, self.destroyxinyan, nil, nil, "", false, true)
end

function Quest40020:OnSubFailed4002010(arg1)
    print("OnSubFailed4002010")
end

function Quest40020:OnSubStart4002011(arg1)
    print("OnSubStart4002011")
end

function Quest40020:OnSubFinish4002011(arg1)
    print("OnSubFinish4002011")
    self:UnSpawn(gadgets.Gadget70710524Data1.alias)
end

function Quest40020:OnSubFailed4002011(arg1)
    print("OnSubFailed4002011")
end

function Quest40020:OnSubStart4002012(arg1)
    print("OnSubStart4002012")
end

function Quest40020:OnSubFinish4002012(arg1)
    print("OnSubFinish4002012")
end

function Quest40020:OnSubFailed4002012(arg1)
    print("OnSubFailed4002012")
end

function Quest40020:OnSubStart4002013(arg1)
    print("OnSubStart4002013")
    self:ShowBlackScreen(0.5, 1, 0.5, self.createshidajiang2, nil, nil, "", false, true)
end

function Quest40020:OnSubFinish4002013(arg1)
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 47001)
        self:ShowTutorialDialog(1037)
    end)
end

function Quest40020:OnSubFailed4002013(arg1)
    print("OnSubFailed4002013")
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 47001)
end

function Quest40020:OnSubStart4002023(arg1)
    print("OnSubStart4002023")
end

function Quest40020:OnSubFinish4002023(arg1)
    print("OnSubFinish4002023")
end

function Quest40020:OnSubFailed4002023(arg1)
    print("OnSubFailed4002023")
end

function Quest40020:OnSubStart4002027(arg1)
    print("OnSubStart4002027")
end

function Quest40020:OnSubFinish4002027(arg1)
    print("OnSubFinish4002027")
end

function Quest40020:OnSubFailed4002027(arg1)
    print("OnSubFailed4002027")
end

function Quest40020:OnSubStart4002014(arg1)
    print("OnSubStart4002014")
end

function Quest40020:OnSubFinish4002014(arg1)
    print("OnSubFinish4002014")
end

function Quest40020:OnSubFailed4002014(arg1)
    print("OnSubFailed4002014")
end

function Quest40020:OnSubStart4002024(arg1)
    print("OnSubStart4002024")
end

function Quest40020:OnSubFinish4002024(arg1)
    print("OnSubFinish4002024")
end

function Quest40020:OnSubFailed4002024(arg1)
    print("OnSubFailed4002024")
end

function Quest40020:OnSubStart4002021(arg1)
    print("OnSubStart4002021")
    self:ShowBlackScreen(0.5, 1, 0.5, self.createshidajiang3, nil, nil, "", false, true)
end

function Quest40020:OnSubFinish4002021(arg1)
    print("OnSubFinish4002021")
    self:UnSpawn(gadgets.Gadget70710524Data2.alias)
end

function Quest40020:OnSubFailed4002021(arg1)
    print("OnSubFailed4002021")
    self:UnSpawn(gadgets.Gadget70710524Data2.alias)
end

function Quest40020:OnSubStart4002016(arg1)
    print("OnSubStart4002016")
end

function Quest40020:OnSubFinish4002016(arg1)
    print("OnSubFinish4002016")
    self:UnSpawn(gadgets.Gadget70710524Data2.alias)
end

function Quest40020:OnSubFailed4002016(arg1)
    print("OnSubFailed4002016")
    self:UnSpawn(gadgets.Gadget70710524Data2.alias)
end

function Quest40020:OnSubStart4002018(arg1)
    print("OnSubStart4002018")
    actorMgr:CreateActorWithPos(datas.Q40020Trigger4_.alias, datas.Q40020Trigger4_.script, datas.Q40020Trigger4_.id, 0, datas.Q40020Trigger4_.point.pos, datas.Q40020Trigger4_.point.rot, true, false, 3)
end

function Quest40020:OnSubFinish4002018(arg1)
    print("OnSubFinish4002018")
end

function Quest40020:OnSubFailed4002018(arg1)
    print("OnSubFailed4002018")
end

function Quest40020:OnSubStart4002017(arg1)
    print("OnSubStart4002017")
    self:ShowBlackScreen(0, 1, 1, self.createxinyan, nil, nil, "", false, true)
end

function Quest40020:OnSubFinish4002017(arg1)
    print("OnSubFinish4002017")
    self:DestroyQuestNpcActor(npcs.Npc1042Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12172Data.alias, 3)
end

function Quest40020:OnSubFailed4002017(arg1)
    print("OnSubFailed4002017")
end

function Quest40020:OnSubStart4002025(arg1)
    print("OnSubStart4002025")
end

function Quest40020:OnSubFinish4002025(arg1)
    print("OnSubFinish4002025")
end

function Quest40020:OnSubFailed4002025(arg1)
    print("OnSubFailed4002025")
end

function Quest40020:OnSubStart4002015(arg1)
    print("OnSubStart4002015")
end

function Quest40020:OnSubFinish4002015(arg1)
    print("OnSubFinish4002015")
end

function Quest40020:OnSubFailed4002015(arg1)
    print("OnSubFailed4002015")
end

function Quest40020:OnSubStart4002026(arg1)
    print("OnSubStart4002026")
end

function Quest40020:OnSubFinish4002026(arg1)
    print("OnSubFinish4002026")
end

function Quest40020:OnSubFailed4002026(arg1)
    print("OnSubFailed4002026")
end

return Quest40020
