require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11008 = class("Quest11008", QuestActorProxy)
Quest11008.defaultAlias = "Quest11008"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest11008:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest11008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1100801"] = self.OnSubStart1100801,
        ["1100802"] = self.OnSubStart1100802,
        ["1100803"] = self.OnSubStart1100803,
        ["1100804"] = self.OnSubStart1100804,
        ["1100805"] = self.OnSubStart1100805,
        ["1100816"] = self.OnSubStart1100816,
        ["1100812"] = self.OnSubStart1100812,
        ["1100806"] = self.OnSubStart1100806,
        ["1100813"] = self.OnSubStart1100813,
        ["1100815"] = self.OnSubStart1100815,
        ["1100808"] = self.OnSubStart1100808,
        ["1100814"] = self.OnSubStart1100814,
        ["1100807"] = self.OnSubStart1100807,
        ["1100809"] = self.OnSubStart1100809,
        ["1100810"] = self.OnSubStart1100810,
        ["1100811"] = self.OnSubStart1100811
    }
end

function Quest11008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1100801"] = self.OnSubFinish1100801,
        ["1100802"] = self.OnSubFinish1100802,
        ["1100803"] = self.OnSubFinish1100803,
        ["1100804"] = self.OnSubFinish1100804,
        ["1100805"] = self.OnSubFinish1100805,
        ["1100816"] = self.OnSubFinish1100816,
        ["1100812"] = self.OnSubFinish1100812,
        ["1100806"] = self.OnSubFinish1100806,
        ["1100813"] = self.OnSubFinish1100813,
        ["1100815"] = self.OnSubFinish1100815,
        ["1100808"] = self.OnSubFinish1100808,
        ["1100814"] = self.OnSubFinish1100814,
        ["1100807"] = self.OnSubFinish1100807,
        ["1100809"] = self.OnSubFinish1100809,
        ["1100810"] = self.OnSubFinish1100810,
        ["1100811"] = self.OnSubFinish1100811
    }
end

function Quest11008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1100801"] = self.OnSubFailed1100801,
        ["1100802"] = self.OnSubFailed1100802,
        ["1100803"] = self.OnSubFailed1100803,
        ["1100804"] = self.OnSubFailed1100804,
        ["1100805"] = self.OnSubFailed1100805,
        ["1100816"] = self.OnSubFailed1100816,
        ["1100812"] = self.OnSubFailed1100812,
        ["1100806"] = self.OnSubFailed1100806,
        ["1100813"] = self.OnSubFailed1100813,
        ["1100815"] = self.OnSubFailed1100815,
        ["1100808"] = self.OnSubFailed1100808,
        ["1100814"] = self.OnSubFailed1100814,
        ["1100807"] = self.OnSubFailed1100807,
        ["1100809"] = self.OnSubFailed1100809,
        ["1100810"] = self.OnSubFailed1100810,
        ["1100811"] = self.OnSubFailed1100811
    }
end

function Quest11008:Start()
    print("Start")
end

function Quest11008:OnDestroy()
    print("OnDestroy")
end

function Quest11008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11008:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:EnableElementView(true)
    elseif arg1 == 2 then
        self:EnableElementView(false)
    elseif arg1 == 3 then
        self:SpawnGadgetById(1100807, gadgets.Gadget70710385Data.id, 1)
    elseif arg1 == 4 then
        self:UnSpawn(gadgets.Gadget70710385Data.alias)
    elseif arg1 == 5 then
        self:SpawnGadgetById(1100811, gadgets.Gadget70710384Data.id, 1)
    elseif arg1 == 6 then
        self:UnSpawn(gadgets.Gadget70710384Data.alias)
    end
end

function Quest11008:OnSubStart1100801(arg1)
    print("OnSubStart1100801")
    self:CreateQuestNpc(arg1, npcs.Npc2093Data.id, 2)
    actorMgr:CreateActorWithPos("Q11008Trigger1", "Actor/Gadget/Q11008Trigger1", 70900002, 0, {x = -539.3131, y = 248.11, z = 443.7698}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest11008:OnSubFinish1100801(arg1)
    print("OnSubFinish1100801")
end

function Quest11008:OnSubFailed1100801(arg1)
    print("OnSubFailed1100801")
end

function Quest11008:OnSubStart1100802(arg1)
    print("OnSubStart1100802")
    self:CreateQuestNpc(arg1, npcs.Npc10014Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
end

function Quest11008:OnSubFinish1100802(arg1)
    print("OnSubFinish1100802")
    self:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
end

function Quest11008:OnSubFailed1100802(arg1)
    print("OnSubFailed1100802")
end

function Quest11008:OnSubStart1100803(arg1)
    print("OnSubStart1100803")
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
end

function Quest11008:OnSubFinish1100803(arg1)
    print("OnSubFinish1100803")
end

function Quest11008:OnSubFailed1100803(arg1)
    print("OnSubFailed1100803")
end

function Quest11008:OnSubStart1100804(arg1)
    print("OnSubStart1100804")
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
    self:CreateQuestNpc(arg1, npcs.Npc10015Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10015Data.alias):DoFreeStyle(1240, true, nil, true, true)
end

function Quest11008:OnSubFinish1100804(arg1)
    print("OnSubFinish1100804")
end

function Quest11008:OnSubFailed1100804(arg1)
    print("OnSubFailed1100804")
end

function Quest11008:OnSubStart1100805(arg1)
    print("OnSubStart1100805")
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
end

function Quest11008:OnSubFinish1100805(arg1)
    print("OnSubFinish1100805")
end

function Quest11008:OnSubFailed1100805(arg1)
    print("OnSubFailed1100805")
end

function Quest11008:OnSubStart1100806(arg1)
    print("OnSubStart1100806")
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
    self:NotifyTo("Npc2026", 1, true)
end

function Quest11008:OnSubFinish1100806(arg1)
    print("OnSubFinish1100806")
end

function Quest11008:OnSubFailed1100806(arg1)
    print("OnSubFailed1100806")
end

function Quest11008:OnSubStart1100807(arg1)
    print("OnSubStart1100807")
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
end

function Quest11008:OnSubFinish1100807(arg1)
    print("OnSubFinish1100807")
end

function Quest11008:OnSubFailed1100807(arg1)
    print("OnSubFailed1100807")
end

function Quest11008:OnSubStart1100808(arg1)
    print("OnSubStart1100808")
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
end

function Quest11008:OnSubFinish1100808(arg1)
    print("OnSubFinish1100808")
end

function Quest11008:OnSubFailed1100808(arg1)
    print("OnSubFailed1100808")
end

function Quest11008:OnSubStart1100809(arg1)
    print("OnSubStart1100809")
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
    self:CreateQuestNpc(arg1, npcs.Npc10234Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc10234Data.alias):DoFreeStyle(1170, true, nil, true, true)
end

function Quest11008:OnSubFinish1100809(arg1)
    print("OnSubFinish1100809")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest11008:OnSubFailed1100809(arg1)
    print("OnSubFailed1100809")
end

function Quest11008:OnSubStart1100810(arg1)
    print("OnSubStart1100810")
    self:CreateQuestNpc(arg1, npcs.Npc10014Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
end

function Quest11008:OnSubFinish1100810(arg1)
    print("OnSubFinish1100810")
    self:SafeDestroyQuestNpc(npcs.Npc10234Data.alias, 3)
end

function Quest11008:OnSubFailed1100810(arg1)
    print("OnSubFailed1100810")
end

function Quest11008:OnSubStart1100811(arg1)
    print("OnSubStart1100811")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10014Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true)
    local v = self:GetQuestNpcActor(npcs.Npc10015Data.alias)
    v:DoFreeStyle(1170, true, nil, true, true)
    self:CreateQuestNpc(arg1, npcs.Npc2093Data.id, 2)
    questNpcActor:EnableHeadCtrl(false)
    v:EnableHeadCtrl(false)
end

function Quest11008:OnSubFinish1100811(arg1)
    print("OnSubFinish1100811")
    self:SafeDestroyQuestNpc(npcs.Npc10014Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10015Data.alias, 3)
end

function Quest11008:OnSubFailed1100811(arg1)
    print("OnSubFailed1100811")
end

function Quest11008:OnSubStart1100812(arg1)
    print("OnSubStart1100812")
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1030Data.alias)
    end, nil, nil, "")

    self:NotifyTo("Npc2026", 1, true)
end

function Quest11008:OnSubFinish1100812(arg1)
    print("OnSubFinish1100812")
end

function Quest11008:OnSubFailed1100812(arg1)
    print("OnSubFailed1100812")
end

function Quest11008:OnSubStart1100813(arg1)
    print("OnSubStart1100813")
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
    self:UnSpawn(gadgets.Gadget70710359Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710359Data.id, 1, 0)
    self:LightNotifyTo("Npc2026", 0, true)
end

function Quest11008:OnSubFinish1100813(arg1)
    print("OnSubFinish1100813")
end

function Quest11008:OnSubFailed1100813(arg1)
    print("OnSubFailed1100813")
end

function Quest11008:OnSubStart1100815(arg1)
    print("OnSubStart1100815")
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1030Data.alias)
    end, nil, nil, "")
end

function Quest11008:OnSubFinish1100815(arg1)
    print("OnSubFinish1100815")
end

function Quest11008:OnSubFailed1100815(arg1)
    print("OnSubFailed1100815")
end

function Quest11008:OnSubStart1100814(arg1)
    print("OnSubStart1100814")
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
end

function Quest11008:OnSubFinish1100814(arg1)
    print("OnSubFinish1100814")
end

function Quest11008:OnSubFailed1100814(arg1)
    print("OnSubFailed1100814")
end

function Quest11008:OnSubStart1100816(arg1)
    print("OnSubStart1100816")
    self:GetQuestNpcActor(npcs.Npc10014Data.alias):DoFreeStyle(1230, true, nil, true, true)
    actorMgr:CreateActorWithPos("Q11008Trigger", "Actor/Gadget/Q11008Trigger", 70900002, 0, {x = -643.7956, y = 222.3562, z = 245.7433}, {x = 0, y = 0, z = 0}, true, false)
    self:NotifyTo("Npc2026", 1, true)
end

function Quest11008:OnSubFinish1100816(arg1)
    print("OnSubFinish1100816")
end

function Quest11008:OnSubFailed1100816(arg1)
    print("OnSubFailed1100816")
end

return Quest11008
