require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8007 = class("Quest8007", QuestActorProxy)
Quest8007.defaultAlias = "Quest8007"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest8007:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest8007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["800701"] = self.OnSubStart800701,
        ["800711"] = self.OnSubStart800711,
        ["800702"] = self.OnSubStart800702,
        ["800703"] = self.OnSubStart800703,
        ["800713"] = self.OnSubStart800713,
        ["800704"] = self.OnSubStart800704,
        ["800705"] = self.OnSubStart800705,
        ["800706"] = self.OnSubStart800706,
        ["800707"] = self.OnSubStart800707,
        ["800708"] = self.OnSubStart800708,
        ["800712"] = self.OnSubStart800712,
        ["800709"] = self.OnSubStart800709,
        ["800710"] = self.OnSubStart800710
    }
end

function Quest8007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["800701"] = self.OnSubFinish800701,
        ["800711"] = self.OnSubFinish800711,
        ["800702"] = self.OnSubFinish800702,
        ["800703"] = self.OnSubFinish800703,
        ["800713"] = self.OnSubFinish800713,
        ["800704"] = self.OnSubFinish800704,
        ["800705"] = self.OnSubFinish800705,
        ["800706"] = self.OnSubFinish800706,
        ["800707"] = self.OnSubFinish800707,
        ["800708"] = self.OnSubFinish800708,
        ["800712"] = self.OnSubFinish800712,
        ["800709"] = self.OnSubFinish800709,
        ["800710"] = self.OnSubFinish800710
    }
end

function Quest8007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest8007:Start()
    print("Start")
end

function Quest8007:OnDestroy()
    print("OnDestroy")
end

function Quest8007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8007:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12424Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12425Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12454Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12515Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12516Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12517Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12518Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12519Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12520Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12574Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12575Data.alias, 6)
    actorMgr:GetActor("8007"):UnSpawn(gadgets.Gadget70710707Data.alias)
    actorMgr:DestroyEntityActor("Q800701_TriggerIn", 6, false)
    actorMgr:DestroyEntityActor("Q800708_TriggerIn_Room1", 6, false)
    actorMgr:DestroyEntityActor("Q800708_TriggerIn_Room2", 6, false)
    actorMgr:DestroyEntityActor("Q800708_TriggerIn_Room3", 6, false)
    actorMgr:DestroyEntityActor("Q800708_TriggerIn_Room4", 6, false)
    actorMgr:DestroyEntityActor("Q800708_TriggerIn_RoomCenter", 6, false)
    actorMgr:DestroyEntityActor("Q800708_TriggerOut", 6, false)
    actorMgr:DestroyEntityActor("Q800709_TriggerIn", 6, false)
end

function Quest8007:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest8007:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 800711 then
        self:TransmitPlayerByQuestId(800701, 1)
    elseif arg1 == 800712 then
        self:TransmitPlayerByQuestId(800701, 2)
    elseif arg1 == 800713 then
        self:TransmitPlayerByQuestId(800701, 3)
    elseif arg1 == 800714 then
        self:TransmitPlayerByQuestId(800701, 4)
    elseif arg1 == 800715 then
        self:TransmitPlayerByQuestId(800701, 5)
    elseif arg1 == 800716 then
        self:TransmitPlayerByQuestId(800701, 6)
    elseif arg1 == 800717 then
        self:TransmitPlayerByQuestId(800701, 7)
    elseif arg1 == 800718 then
        self:TransmitPlayerByQuestId(800701, 8)
    end
end

function Quest8007:CheckDistance()
    print("CheckDistance")
    if self:GetSubQuestState(800708) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local n = sceneData:GetDummyPoint(6, "Q800708_guide").pos.y - avatarPos.y
        if 65 < n and n <= 140 then
            local actor = actorMgr:GetActor("8007")
            local questVar = actor:GetQuestVar(800708, 0)
            local v = actor:GetQuestVar(800708, 1)
            local n2 = questVar + 1
            if v == 0 then
                print("QuestVar = ", n2)
                self:SetQuestVar(800708, 1, 1)
                actor:TransmitPlayerByQuestId(800708, n2, self.returnVar)
            end
        end

        print("currLen = ", n)
        self:CallDelay(1, self.NormalCheck)
    end
end

function Quest8007:NormalCheck()
    print("NormalCheck")
    self:CheckDistance()
end

function Quest8007:returnVar()
    print("returnVar")
    self:SetQuestVar(800708, 1, 0)
end

function Quest8007:OnSubStart800701(arg1)
    print("OnSubStart800701")
    self:CreateQuestNpc(arg1, npcs.Npc12425Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12425Data.alias):DoFreeStyle(2, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12454Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12515Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12516Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12517Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12518Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc12519Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc12520Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc12574Data.id, 10)
    self:CreateQuestNpc(arg1, npcs.Npc12575Data.id, 11)
    self:SetQuestVar(800703, 2, 0)
    actorMgr:CreateActorWithPos("Q800701_TriggerIn", "Actor/Gadget/Q800701_TriggerIn", 70900002, 0, {x = 457.4525, y = 497.3358, z = 523.1968}, {x = 0, y = 0, z = 0}, true, false, 6)
    actorMgr:CreateActorWithPos("Q800701_TriggerIn_Down", "Actor/Gadget/Q800701_TriggerIn_Down", 70900002, 0, {x = 457.4525, y = 483.275, z = 523.1802}, {x = 0, y = 0, z = 0}, true, false, 6)
    self:UnSpawn(gadgets.Gadget70710707Data.alias)
    self:SetQuestVar(800701, 3, 0)
end

function Quest8007:OnSubFinish800701(arg1)
    print("OnSubFinish800701")
    self:SafeDestroyQuestNpc(npcs.Npc12454Data.alias, 6)
    actorMgr:DestroyEntityActor(datas.Q800709_TriggerIn.alias, 6, false)
    actorMgr:DestroyEntityActor(datas.Q800701_TriggerIn_Down.alias, 6, false)
end

function Quest8007:OnSubStart800711(arg1)
    print("OnSubStart800711")
    self:UnSpawn(gadgets.Gadget70710707Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710707Data.id, 1, 0)
    self:RequestInteraction(npcs.Npc12425Data.alias)
end

function Quest8007:OnSubFinish800711(arg1)
    print("OnSubFinish800711")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12425Data.alias, 6)
end

function Quest8007:OnSubStart800702(arg1)
    print("OnSubStart800702")
    self:UnSpawn(gadgets.Gadget70710707Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710707Data.id, 1, 0)
end

function Quest8007:OnSubFinish800702(arg1)
    print("OnSubFinish800702")
end

function Quest8007:OnSubStart800703(arg1)
    print("OnSubStart800703")
    self:UnSpawn(gadgets.Gadget70710707Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710707Data.id, 1, 0)
    self:CallDelay(1.5, function(arg1_2)
        local questVar = arg1_2:GetQuestVar(800703, 2)
        print("QuestVar = ", questVar)
        if questVar == 0 then
            arg1_2:SetQuestVar(800703, 2, 1)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
            arg1_2:RequestInteraction(npcs.Npc1022Data.alias)
        else
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
        end
    end)
end

function Quest8007:OnSubFinish800703(arg1)
    print("OnSubFinish800703")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
end

function Quest8007:OnSubStart800713(arg1)
    print("OnSubStart800713")
    actorUtils.FinishQuestID(false, 800713)
end

function Quest8007:OnSubFinish800713(arg1)
    print("OnSubFinish800713")
end

function Quest8007:OnSubStart800704(arg1)
    print("OnSubStart800704")
end

function Quest8007:OnSubFinish800704(arg1)
    print("OnSubFinish800704")
end

function Quest8007:OnSubStart800705(arg1)
    print("OnSubStart800705")
end

function Quest8007:OnSubFinish800705(arg1)
    print("OnSubFinish800705")
end

function Quest8007:OnSubStart800706(arg1)
    print("OnSubStart800706")
end

function Quest8007:OnSubFinish800706(arg1)
    print("OnSubFinish800706")
end

function Quest8007:OnSubStart800707(arg1)
    print("OnSubStart800707")
end

function Quest8007:OnSubFinish800707(arg1)
    print("OnSubFinish800707")
end

function Quest8007:OnSubStart800708(arg1)
    print("OnSubStart800708")
    self:UnSpawn(gadgets.Gadget70710707Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710707Data.id, 1, 0)
    self:SetQuestVar(800708, 0, 0)
    self:SetQuestVar(800708, 1, 0)
    actorMgr:CreateActorWithPos("Q800708_TriggerIn_Room1", "Actor/Gadget/Q800708_TriggerIn_Room1", 70900002, 0, {x = 456.4144, y = 492.151, z = 455.5321}, {x = 0, y = 0, z = 0}, true, false, 6)
    actorMgr:CreateActorWithPos("Q800708_TriggerIn_Room2", "Actor/Gadget/Q800708_TriggerIn_Room2", 70900002, 0, {x = 516.28, y = 483.6035, z = 521.0685}, {x = 0, y = 0, z = 0}, true, false, 6)
    actorMgr:CreateActorWithPos("Q800708_TriggerIn_Room3", "Actor/Gadget/Q800708_TriggerIn_Room3", 70900002, 0, {x = 456.4216, y = 487.7422, z = 587.7479}, {x = 0, y = 0, z = 0}, true, false, 6)
    actorMgr:CreateActorWithPos("Q800708_TriggerIn_Room4", "Actor/Gadget/Q800708_TriggerIn_Room4", 70900002, 0, {x = 391.8411, y = 487.6129, z = 527.9469}, {x = 0, y = 0, z = 0}, true, false, 6)
    actorMgr:CreateActorWithPos("Q800708_TriggerIn_RoomCenter", "Actor/Gadget/Q800708_TriggerIn_RoomCenter", 70900002, 0, {x = 457.2893, y = 493.0052, z = 523.5494}, {x = 0, y = 0, z = 0}, true, false, 6)
    self:CheckDistance()
end

function Quest8007:OnSubFinish800708(arg1)
    print("OnSubFinish800708")
    self:SafeDestroyQuestNpc(npcs.Npc12515Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12516Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12517Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12518Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12519Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12520Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12574Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12575Data.alias, 6)
    self:NarratorOnlyTaskByData(datas.NarratorWithId_800703)
    actorMgr:DestroyEntityActor(datas.Q800708_TriggerIn_Room1.alias, 6, false)
    actorMgr:DestroyEntityActor(datas.Q800708_TriggerIn_Room2.alias, 6, false)
    actorMgr:DestroyEntityActor(datas.Q800708_TriggerIn_Room3.alias, 6, false)
    actorMgr:DestroyEntityActor(datas.Q800708_TriggerIn_Room4.alias, 6, false)
    actorMgr:DestroyEntityActor(datas.Q800708_TriggerOut.alias, 3, false)
end

function Quest8007:OnSubStart800712(arg1)
    print("OnSubStart800712")
    actorUtils.FinishQuestID(false, 800712)
end

function Quest8007:OnSubFinish800712(arg1)
    print("OnSubFinish800712")
end

function Quest8007:OnSubStart800709(arg1)
    print("OnSubStart800709")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
    self:UnSpawn(gadgets.Gadget70710707Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710707Data.id, 1, 0)
end

function Quest8007:OnSubFinish800709(arg1)
    print("OnSubFinish800709")
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
    self:UnSpawn(gadgets.Gadget70710707Data.alias)
end

function Quest8007:OnSubStart800710(arg1)
    print("OnSubStart800710")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1022Data.id, 1, npcs.Npc1022Data.alias)
end

function Quest8007:OnSubFinish800710(arg1)
    print("OnSubFinish800710")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
end

return Quest8007
