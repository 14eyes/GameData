require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70008 = class("Quest70008", QuestActorProxy)
Quest70008.defaultAlias = "Quest70008"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas
local gadgets
local n = 0

function Quest70008:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
    gadgets = clientData.Gadgets
end

function Quest70008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7000801"] = self.OnSubStart7000801,
        ["7000816"] = self.OnSubStart7000816,
        ["7000802"] = self.OnSubStart7000802,
        ["7000803"] = self.OnSubStart7000803,
        ["7000804"] = self.OnSubStart7000804,
        ["7000805"] = self.OnSubStart7000805,
        ["7000806"] = self.OnSubStart7000806,
        ["7000807"] = self.OnSubStart7000807,
        ["7000808"] = self.OnSubStart7000808,
        ["7000817"] = self.OnSubStart7000817,
        ["7000815"] = self.OnSubStart7000815,
        ["7000809"] = self.OnSubStart7000809,
        ["7000810"] = self.OnSubStart7000810,
        ["7000818"] = self.OnSubStart7000818,
        ["7000819"] = self.OnSubStart7000819,
        ["7000811"] = self.OnSubStart7000811,
        ["7000812"] = self.OnSubStart7000812,
        ["7000813"] = self.OnSubStart7000813,
        ["7000814"] = self.OnSubStart7000814
    }
end

function Quest70008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7000801"] = self.OnSubFinish7000801,
        ["7000816"] = self.OnSubFinish7000816,
        ["7000802"] = self.OnSubFinish7000802,
        ["7000803"] = self.OnSubFinish7000803,
        ["7000804"] = self.OnSubFinish7000804,
        ["7000805"] = self.OnSubFinish7000805,
        ["7000806"] = self.OnSubFinish7000806,
        ["7000807"] = self.OnSubFinish7000807,
        ["7000808"] = self.OnSubFinish7000808,
        ["7000817"] = self.OnSubFinish7000817,
        ["7000815"] = self.OnSubFinish7000815,
        ["7000809"] = self.OnSubFinish7000809,
        ["7000810"] = self.OnSubFinish7000810,
        ["7000818"] = self.OnSubFinish7000818,
        ["7000819"] = self.OnSubFinish7000819,
        ["7000811"] = self.OnSubFinish7000811,
        ["7000812"] = self.OnSubFinish7000812,
        ["7000813"] = self.OnSubFinish7000813,
        ["7000814"] = self.OnSubFinish7000814
    }
end

function Quest70008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7000801"] = self.OnSubFailed7000801,
        ["7000816"] = self.OnSubFailed7000816,
        ["7000802"] = self.OnSubFailed7000802,
        ["7000803"] = self.OnSubFailed7000803,
        ["7000804"] = self.OnSubFailed7000804,
        ["7000805"] = self.OnSubFailed7000805,
        ["7000806"] = self.OnSubFailed7000806,
        ["7000807"] = self.OnSubFailed7000807,
        ["7000808"] = self.OnSubFailed7000808,
        ["7000817"] = self.OnSubFailed7000817,
        ["7000815"] = self.OnSubFailed7000815,
        ["7000809"] = self.OnSubFailed7000809,
        ["7000810"] = self.OnSubFailed7000810,
        ["7000818"] = self.OnSubFailed7000818,
        ["7000819"] = self.OnSubFailed7000819,
        ["7000811"] = self.OnSubFailed7000811,
        ["7000812"] = self.OnSubFailed7000812,
        ["7000813"] = self.OnSubFailed7000813,
        ["7000814"] = self.OnSubFailed7000814
    }
end

function Quest70008:Start()
    print("Start")
end

function Quest70008:OnDestroy()
    print("OnDestroy")
end

function Quest70008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70008:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor(datas.Q70008Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q70008Trigger2_.alias, 3, false)
    self.ActionSafeCall(self, function()
        self:UnSpawn(gadgets.Gadget70300118Data.alias)
        self:DestroyQuestNpcActor(npcs.Npc143101Data.alias, 3)
        self:NotifyTo("Npc1461", 0, true)
        self:NotifyTo("Npc1445", 0, true)
        self:NotifyTo("Npc1601", 0, true)
        self:NotifyTo("Npc1431", 0, true)
    end)
end

function Quest70008:OnSubStart7000801(arg1)
    print("OnSubStart7000801")
end

function Quest70008:OnSubFinish7000801(arg1)
    print("OnSubFinish7000801")
end

function Quest70008:OnSubFailed7000801(arg1)
    print("OnSubFailed7000801")
end

function Quest70008:OnSubStart7000816(arg1)
    print("OnSubStart7000816")
    self:NotifyTo("Npc1431", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc143101Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc143101Data.alias):DoFreeStyle(1190, true, nil, true, true)
end

function Quest70008:OnSubFinish7000816(arg1)
    print("OnSubFinish7000816")
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            self:DestroyQuestNpcActor(npcs.Npc143101Data.alias, 3)
        end)
    end)
end

function Quest70008:OnSubFailed7000816(arg1)
    print("OnSubFailed7000816")
end

function Quest70008:OnSubStart7000802(arg1)
    print("OnSubStart7000802")
    self:NotifyTo("Npc1431", 1, true)
    actorMgr:CreateActorWithPos(datas.Q70008Trigger_.alias, datas.Q70008Trigger_.script, datas.Q70008Trigger_.id, 0, datas.Q70008Trigger_.point.pos, datas.Q70008Trigger_.point.rot, true, false, 3)
end

function Quest70008:OnSubFinish7000802(arg1)
    print("OnSubFinish7000802")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
    self:EnterSceneLookCamera({x = 2572.475, y = 364.98, z = -1748.786}, 0, 2, false, false)
end

function Quest70008:OnSubFailed7000802(arg1)
    print("OnSubFailed7000802")
end

function Quest70008:OnSubStart7000803(arg1)
    print("OnSubStart7000803")
end

function Quest70008:OnSubFinish7000803(arg1)
    print("OnSubFinish7000803")
end

function Quest70008:OnSubFailed7000803(arg1)
    print("OnSubFailed7000803")
end

function Quest70008:OnSubStart7000804(arg1)
    print("OnSubStart7000804")
end

function Quest70008:OnSubFinish7000804(arg1)
    print("OnSubFinish7000804")
end

function Quest70008:OnSubFailed7000804(arg1)
    print("OnSubFailed7000804")
end

function Quest70008:OnSubStart7000805(arg1)
    print("OnSubStart7000805")
    self:NotifyTo("Npc1431", 1, true)
    actorMgr:CreateActorWithPos(datas.Q70008Trigger2_.alias, datas.Q70008Trigger2_.script, datas.Q70008Trigger2_.id, 0, datas.Q70008Trigger2_.point.pos, datas.Q70008Trigger2_.point.rot, true, false, 3)
end

function Quest70008:OnSubFinish7000805(arg1)
    print("OnSubFinish7000805")
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
    self:EnterSceneLookCamera({x = 1955.242, y = 197.81, z = -1327.05}, 0, 2, false, false)
end

function Quest70008:OnSubFailed7000805(arg1)
    print("OnSubFailed7000805")
end

function Quest70008:OnSubStart7000806(arg1)
    print("OnSubStart7000806")
end

function Quest70008:OnSubFinish7000806(arg1)
    print("OnSubFinish7000806")
end

function Quest70008:OnSubFailed7000806(arg1)
    print("OnSubFailed7000806")
end

function Quest70008:OnSubStart7000807(arg1)
    print("OnSubStart7000807")
end

function Quest70008:OnSubFinish7000807(arg1)
    print("OnSubFinish7000807")
end

function Quest70008:OnSubFailed7000807(arg1)
    print("OnSubFailed7000807")
end

function Quest70008:OnSubStart7000808(arg1)
    print("OnSubStart7000808")
    self:NotifyTo("Npc1431", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc143101Data.id, 1)
end

function Quest70008:OnSubFinish7000808(arg1)
    print("OnSubFinish7000808")
end

function Quest70008:OnSubFailed7000808(arg1)
    print("OnSubFailed7000808")
end

function Quest70008:OnSubStart7000817(arg1)
    print("OnSubStart7000817")
end

function Quest70008:OnSubFinish7000817(arg1)
    print("OnSubFinish7000817")
    self:NotifyTo("Npc1431", 1, true)
end

function Quest70008:OnSubFailed7000817(arg1)
    print("OnSubFailed7000817")
end

function Quest70008:OnSubStart7000815(arg1)
    print("OnSubStart7000815")
    self:NotifyTo("Npc1431", 1, true)
end

function Quest70008:OnSubFinish7000815(arg1)
    print("OnSubFinish7000815")
end

function Quest70008:OnSubFailed7000815(arg1)
    print("OnSubFailed7000815")
end

function Quest70008:OnSubStart7000809(arg1)
    print("OnSubStart7000809")
    self:NotifyTo("Npc1431", 1, true)
    n = 0
    self:CreateQuestNpc(arg1, npcs.Npc10029Data.id, 1)
    self:SpawnGadget(arg1, gadgets.Gadget70300118Data.id, 1)
end

function Quest70008:OnSubFinish7000809(arg1)
    print("OnSubFinish7000809")
    self:UnSpawn(gadgets.Gadget70300118Data.alias)
end

function Quest70008:OnSubFailed7000809(arg1)
    print("OnSubFailed7000809")
end

function Quest70008:OnSubStart7000810(arg1)
    print("OnSubStart7000810")
    self:NotifyTo("Npc1431", 1, true)
end

function Quest70008:OnSubFinish7000810(arg1)
    print("OnSubFinish7000810")
end

function Quest70008:OnSubFailed7000810(arg1)
    print("OnSubFailed7000810")
end

function Quest70008:OnSubStart7000818(arg1)
    print("OnSubStart7000818")
    self:NotifyTo("Npc1431", 1, true)
end

function Quest70008:OnSubFinish7000818(arg1)
    print("OnSubFinish7000818")
end

function Quest70008:OnSubFailed7000818(arg1)
    print("OnSubFailed7000818")
end

function Quest70008:OnSubStart7000819(arg1)
    print("OnSubStart7000819")
    self:NotifyTo("Npc1431", 1, true)
end

function Quest70008:OnSubFinish7000819(arg1)
    print("OnSubFinish7000819")
end

function Quest70008:OnSubFailed7000819(arg1)
    print("OnSubFailed7000819")
end

function Quest70008:OnSubStart7000811(arg1)
    print("OnSubStart7000811")
    self:NotifyTo("Npc1431", 1, true)
    self:NotifyTo("Npc1461", 2, true)
    self:NotifyTo("Npc1445", 2, true)
    self:NotifyTo("Npc1601", 2, true)
end

function Quest70008:OnSubFinish7000811(arg1)
    print("OnSubFinish7000811")
end

function Quest70008:OnSubFailed7000811(arg1)
    print("OnSubFailed7000811")
end

function Quest70008:OnSubStart7000812(arg1)
    print("OnSubStart7000812")
    self:NotifyTo("Npc1431", 1, true)
    self:NotifyTo("Npc1461", 2, true)
    self:NotifyTo("Npc1445", 2, true)
    self:NotifyTo("Npc1601", 2, true)
end

function Quest70008:OnSubFinish7000812(arg1)
    print("OnSubFinish7000812")
end

function Quest70008:OnSubFailed7000812(arg1)
    print("OnSubFailed7000812")
end

function Quest70008:OnSubStart7000813(arg1)
    print("OnSubStart7000813")
    self:NotifyTo("Npc1431", 1, true)
    self:NotifyTo("Npc1461", 2, true)
    self:NotifyTo("Npc1445", 2, true)
    self:NotifyTo("Npc1601", 2, true)
end

function Quest70008:OnSubFinish7000813(arg1)
    print("OnSubFinish7000813")
end

function Quest70008:OnSubFailed7000813(arg1)
    print("OnSubFailed7000813")
end

function Quest70008:OnSubStart7000814(arg1)
    print("OnSubStart7000814")
    self:NotifyTo("Npc1431", 1, true)
end

function Quest70008:OnSubFinish7000814(arg1)
    print("OnSubFinish7000814")
    self.NotifyTo(self, "Npc1431", 0, true)
    self.NotifyTo(self, "Npc1461", 0, true)
    self.NotifyTo(self, "Npc1445", 0, true)
    self.NotifyTo(self, "Npc1601", 0, true)
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            self:DestroyQuestNpcActor(npcs.Npc143101Data.alias, 3)
        end)
    end)
end

function Quest70008:OnSubFailed7000814(arg1)
    print("OnSubFailed7000814")
end

function Quest70008:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk 7000801 Invoke")
        self:SetQuestVar(7000801, 0, 1)
    end

    if arg1 == 2 then
        print("Talk 7000801 Invoke")
        self:SetQuestVar(7000801, 0, 2)
    end

    if arg1 == 11 then
        print("Talk 7000809 Invoke")
        n = n + 1
    end

    if arg1 == 12 then
        print("Talk 7000809 Invoke")
        n = n + 1
    end

    if arg1 == 13 then
        print("Talk 7000809 Invoke")
        n = n + 1
    end

    if arg1 == 14 then
        print("Talk 7000809 Invoke")
        n = n + 1
    end

    if arg1 == 15 then
        print("Talk 7000809 Invoke")
        n = n + 1
    end

    if arg1 == 16 then
        print("Talk 7000809 Invoke")
        print("n = " .. n)
        if n == 5 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 7000820)
            end
        else
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 7000821)
            end
        end
    end

    if arg1 == 17 then
        print("Talk 7000801 Invoke")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 7000821)
        end
    end
end

return Quest70008
