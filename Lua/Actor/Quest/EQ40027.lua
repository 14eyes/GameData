require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40027 = class("Quest40027", QuestActorProxy)
Quest40027.defaultAlias = "Quest40027"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40027:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4002701"] = self.OnSubStart4002701,
        ["4002702"] = self.OnSubStart4002702,
        ["4002704"] = self.OnSubStart4002704,
        ["4002719"] = self.OnSubStart4002719,
        ["4002705"] = self.OnSubStart4002705,
        ["4002703"] = self.OnSubStart4002703,
        ["4002706"] = self.OnSubStart4002706,
        ["4002707"] = self.OnSubStart4002707,
        ["4002708"] = self.OnSubStart4002708,
        ["4002720"] = self.OnSubStart4002720,
        ["4002709"] = self.OnSubStart4002709,
        ["4002710"] = self.OnSubStart4002710,
        ["4002711"] = self.OnSubStart4002711,
        ["4002712"] = self.OnSubStart4002712,
        ["4002713"] = self.OnSubStart4002713,
        ["4002714"] = self.OnSubStart4002714,
        ["4002715"] = self.OnSubStart4002715,
        ["4002716"] = self.OnSubStart4002716,
        ["4002717"] = self.OnSubStart4002717,
        ["4002718"] = self.OnSubStart4002718
    }
end

function Quest40027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4002701"] = self.OnSubFinish4002701,
        ["4002702"] = self.OnSubFinish4002702,
        ["4002704"] = self.OnSubFinish4002704,
        ["4002719"] = self.OnSubFinish4002719,
        ["4002705"] = self.OnSubFinish4002705,
        ["4002703"] = self.OnSubFinish4002703,
        ["4002706"] = self.OnSubFinish4002706,
        ["4002707"] = self.OnSubFinish4002707,
        ["4002708"] = self.OnSubFinish4002708,
        ["4002720"] = self.OnSubFinish4002720,
        ["4002709"] = self.OnSubFinish4002709,
        ["4002710"] = self.OnSubFinish4002710,
        ["4002711"] = self.OnSubFinish4002711,
        ["4002712"] = self.OnSubFinish4002712,
        ["4002713"] = self.OnSubFinish4002713,
        ["4002714"] = self.OnSubFinish4002714,
        ["4002715"] = self.OnSubFinish4002715,
        ["4002716"] = self.OnSubFinish4002716,
        ["4002717"] = self.OnSubFinish4002717,
        ["4002718"] = self.OnSubFinish4002718
    }
end

function Quest40027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4002708"] = self.OnSubFailed4002708,
        ["4002709"] = self.OnSubFailed4002709,
        ["4002710"] = self.OnSubFailed4002710,
        ["4002711"] = self.OnSubFailed4002711
    }
end

function Quest40027:Start()
    print("Start")
end

function Quest40027:OnDestroy()
    print("OnDestroy")
end

function Quest40027:OnMainFinished(arg1)
    print("OnMainFinished")
    self:UnSpawn(gadgets.Gadget70710566Data.alias)
end

function Quest40027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40027:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12256Data.alias, 3)
    local actor = actorMgr:GetActor("40027")
    actor:UnSpawn(gadgets.Gadget70710566Data.alias)
    actor:UnSpawn(gadgets.Gadget70710567Data.alias)
    actor:UnSpawn(gadgets.Gadget70710568Data.alias)
    actor:UnSpawn(gadgets.Gadget70710569Data.alias)
    actor:UnSpawn(gadgets.Gadget70710570Data.alias)
    actor:UnSpawn(gadgets.Gadget70710571Data.alias)
    actor:UnSpawn(gadgets.Gadget70710572Data.alias)
    actor:UnSpawn(gadgets.Gadget70710565Data.alias)
    actorMgr:DestroyEntityActor("Q40027Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40027Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40027Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q40027Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q40027Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q40027Trigger_fail", 3, false)
    actorMgr:DestroyEntityActor("Q4002703_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4002710_Trigger", 3, false)
end

function Quest40027:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:FinishQuestID(false, 4002719)
        print("Call 4002719 finish")
    elseif arg1 == 2 then
        self:FinishQuestID(false, 4002703)
        print("Call 4002703 finish")
    elseif arg1 == 3 then
        self:SetQuestVar(4002711, 1, 1)
        print("SetQuestVar 4002711 1 1")
    elseif arg1 == 4 then
        self:SetQuestVar(4002711, 1, 2)
        print("SetQuestVar 4002711 1 2")
    elseif arg1 == 5 then
        self:SetQuestVar(4002711, 1, 3)
        print("SetQuestVar 4002711 1 3")
    elseif arg1 == 6 then
        self:UnSpawn(gadgets.Gadget70710565Data.alias)
        if self:GetQuestVar(4002711, 1) == 1 then
            self:SpawnGadgetById(4002711, gadgets.Gadget70710570Data.id, 5)
            print("Create 70710570")
        else
            if self:GetQuestVar(4002711, 1) == 2 then
                self:SpawnGadgetById(4002711, gadgets.Gadget70710571Data.id, 6)
                print("Create 70710571")
            else
                if self:GetQuestVar(4002711, 1) == 3 then
                    self:SpawnGadgetById(4002711, gadgets.Gadget70710567Data.id, 2)
                    print("Create 70710567")
                end
            end
        end
    elseif arg1 == 7 then
        self:UnSpawn(gadgets.Gadget70710565Data.alias)
        if self:GetQuestVar(4002711, 1) == 1 then
            self:SpawnGadgetById(4002711, gadgets.Gadget70710572Data.id, 7)
            print("Create 70710572")
        else
            if self:GetQuestVar(4002711, 1) == 2 then
                self:SpawnGadgetById(4002711, gadgets.Gadget70710569Data.id, 4)
                print("Create 70710569")
            else
                if self:GetQuestVar(4002711, 1) == 3 then
                    self:SpawnGadgetById(4002711, gadgets.Gadget70710568Data.id, 3)
                    print("Create 70710568")
                end
            end
        end
    elseif arg1 == 8 then
        print("param 10 arrived")
        self:ActionSafeCall(function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1024Data.alias)
            questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", EmoBackType.NONE, false)
            questNpcActor:LookAt({x = 1200.801, y = 374.2103, z = -792.4894})
        end)
    elseif arg1 == 9 then
        self:UnSpawn(gadgets.Gadget70710567Data.alias)
        self:UnSpawn(gadgets.Gadget70710568Data.alias)
        self:UnSpawn(gadgets.Gadget70710569Data.alias)
        self:UnSpawn(gadgets.Gadget70710570Data.alias)
        self:UnSpawn(gadgets.Gadget70710571Data.alias)
        self:UnSpawn(gadgets.Gadget70710572Data.alias)
        self:SpawnGadgetById(4002711, gadgets.Gadget70710566Data.id, 1)
        print("Create Albedo's paint")
    end
end

function Quest40027:OnSubStart4002701(arg1)
    print("OnSubStart4002701")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1018Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q40027Trigger", "Actor/Gadget/Q40027Trigger", 70900002, 0, {x = 1203.508, y = 374.6555, z = -787.9008}, {x = 0, y = 0, z = 0}, true, false)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(1, function(arg1)
            if arg1:GetQuestVar(4002701, 0) == 0 then
                arg1:NarratorOnlyTaskByData(datas.Narrator_4002701, function(arg1)
                    arg1:SetQuestVarByMainId(0, 1)
                end, 40027)
            end
        end)
    end)
end

function Quest40027:OnSubFinish4002701(arg1)
    print("OnSubFinish4002701")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
end

function Quest40027:OnSubStart4002702(arg1)
    print("OnSubStart4002702")
    actorMgr:CreateActorWithPos("Q40027Trigger1", "Actor/Gadget/Q40027Trigger1", 70900002, 0, {x = 1221.151, y = 388.0719, z = -744.7521}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40027:OnSubFinish4002702(arg1)
    print("OnSubFinish4002702")
    self:NarratorOnlyTaskByData(datas.Narrator_4002702)
end

function Quest40027:OnSubStart4002704(arg1)
    print("OnSubStart4002704")
    actorMgr:CreateActorWithPos("Q40027Trigger2", "Actor/Gadget/Q40027Trigger2", 70900002, 0, {x = 1191.052, y = 391.5923, z = -713.9369}, {x = 0, y = 18.68848, z = 0}, true, false)
end

function Quest40027:OnSubFinish4002704(arg1)
    print("OnSubFinish4002704")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
end

function Quest40027:OnSubStart4002719(arg1)
    print("OnSubStart4002719")
end

function Quest40027:OnSubFinish4002719(arg1)
    print("OnSubFinish4002719")
end

function Quest40027:OnSubStart4002705(arg1)
    print("OnSubStart4002705")
    actorMgr:CreateActorWithPos("Q40027Trigger3", "Actor/Gadget/Q40027Trigger3", 70900002, 0, {x = 1198.753, y = 374.2501, z = -791.4095}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40027:OnSubFinish4002705(arg1)
    print("OnSubFinish4002705")
end

function Quest40027:OnSubStart4002703(arg1)
    print("OnSubStart4002703")
end

function Quest40027:OnSubFinish4002703(arg1)
    print("OnSubFinish4002703")
end

function Quest40027:OnSubStart4002706(arg1)
    print("OnSubStart4002706")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.AmborData.id, 2)
    self:GetQuestNpcActor(npcs.AmborData.alias):DoFreeStyle(1220, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1029Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 4)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1024Data.alias)
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false)
        questNpcActor:ClearLookAt()
        if questNpcActor.ForceFinishEmoSync ~= nil then
            questNpcActor:ForceFinishEmoSync(0)
        end
    end)
end

function Quest40027:OnSubFinish4002706(arg1)
    print("OnSubFinish4002706")
end

function Quest40027:OnSubStart4002707(arg1)
    print("OnSubStart4002707")
    self:GetQuestNpcActor(npcs.AmborData.alias):DoFreeStyle(1220, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1029Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest40027:OnSubFinish4002707(arg1)
    print("OnSubFinish4002707")
end

function Quest40027:OnSubStart4002708(arg1)
    print("OnSubStart4002708")
    self:GetQuestNpcActor(npcs.AmborData.alias):DoFreeStyle(1220, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1029Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q40027Trigger_fail", "Actor/Gadget/Q40027Trigger_fail", 70900002, 0, {x = 1198.124, y = 387.8377, z = -748.8282}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40027:OnSubFinish4002708(arg1)
    print("OnSubFinish4002708")
    local actor = actorMgr:GetActor("Q40027Trigger_fail")
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40027:OnSubFailed4002708(arg1)
    print("OnSubFailed4002708")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    local actor = actorMgr:GetActor("Q40027Trigger_fail")
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40027:OnSubStart4002720(arg1)
    print("OnSubStart4002720")
end

function Quest40027:OnSubFinish4002720(arg1)
    print("OnSubFinish4002720")
end

function Quest40027:OnSubStart4002709(arg1)
    print("OnSubStart4002709")
    actorMgr:CreateActorWithPos("Q40027Trigger_fail", "Actor/Gadget/Q40027Trigger_fail", 70900002, 0, {x = 1198.124, y = 387.8377, z = -748.8282}, {x = 0, y = 0, z = 0}, true, false)
    self:CallDelay(1, function(arg1)
        arg1:RequestInteraction(npcs.AmborData.alias)
    end)
end

function Quest40027:OnSubFinish4002709(arg1)
    print("OnSubFinish4002709")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    local actor = actorMgr:GetActor("Q40027Trigger_fail")
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40027:OnSubFailed4002709(arg1)
    print("OnSubFailed4002709")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    local actor = actorMgr:GetActor("Q40027Trigger_fail")
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40027:OnSubStart4002710(arg1)
    print("OnSubStart4002710")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 2)
    actorMgr:CreateActorWithPos("Q4002710_Trigger", "Actor/Gadget/Q4002710_Trigger", 70900002, 0, {x = 1213.349, y = 387.2278, z = -726.2739}, {x = 0, y = 0, z = 0}, true, false)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1024Data.alias)
        questNpcActor:SitOnChair(8010)
        questNpcActor:LookAt({x = 1200.801, y = 374.2103, z = -792.4894})
        questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false)
    end)

    actorMgr:CreateActorWithPos("Q40027Trigger_fail", "Actor/Gadget/Q40027Trigger_fail", 70900002, 0, {x = 1198.124, y = 387.8377, z = -748.8282}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40027:OnSubFinish4002710(arg1)
    print("OnSubFinish4002710")
    local actor = actorMgr:GetActor("Q40027Trigger_fail")
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40027:OnSubFailed4002710(arg1)
    print("OnSubFailed4002710")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    local actor = actorMgr:GetActor("Q40027Trigger_fail")
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40027:OnSubStart4002711(arg1)
    print("OnSubStart4002711")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12256Data.id, 3)
    self:UnSpawn(gadgets.Gadget70710565Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710565Data.id, 8, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1024Data.alias)
    questNpcActor:SitOnChair(0)
    questNpcActor:LookAt({x = 1200.801, y = 374.2103, z = -792.4894})
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false)
    self:UnSpawn(gadgets.Gadget70710566Data.alias)
    self:UnSpawn(gadgets.Gadget70710567Data.alias)
    self:UnSpawn(gadgets.Gadget70710568Data.alias)
    self:UnSpawn(gadgets.Gadget70710569Data.alias)
    self:UnSpawn(gadgets.Gadget70710570Data.alias)
    self:UnSpawn(gadgets.Gadget70710571Data.alias)
    self:UnSpawn(gadgets.Gadget70710572Data.alias)
    actorMgr:CreateActorWithPos("Q40027Trigger_fail", "Actor/Gadget/Q40027Trigger_fail", 70900002, 0, {x = 1198.124, y = 387.8377, z = -748.8282}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40027:OnSubFinish4002711(arg1)
    print("OnSubFinish4002711")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12256Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710566Data.alias)
    self:UnSpawn(gadgets.Gadget70710567Data.alias)
    self:UnSpawn(gadgets.Gadget70710568Data.alias)
    self:UnSpawn(gadgets.Gadget70710569Data.alias)
    self:UnSpawn(gadgets.Gadget70710570Data.alias)
    self:UnSpawn(gadgets.Gadget70710571Data.alias)
    self:UnSpawn(gadgets.Gadget70710572Data.alias)
    self:UnSpawn(gadgets.Gadget70710565Data.alias)
    self:GetQuestNpcActor(npcs.Npc1024Data.alias):ForceFinishEmoSync(0)
    local actor = actorMgr:GetActor("Q40027Trigger_fail")
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40027:OnSubFailed4002711(arg1)
    print("OnSubFailed4002711")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    local actor = actorMgr:GetActor("Q40027Trigger_fail")
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40027:OnSubStart4002712(arg1)
    print("OnSubStart4002712")
end

function Quest40027:OnSubFinish4002712(arg1)
    print("OnSubFinish4002712")
end

function Quest40027:OnSubStart4002713(arg1)
    print("OnSubStart4002713")
end

function Quest40027:OnSubFinish4002713(arg1)
    print("OnSubFinish4002713")
end

function Quest40027:OnSubStart4002714(arg1)
    print("OnSubStart4002714")
end

function Quest40027:OnSubFinish4002714(arg1)
    print("OnSubFinish4002714")
end

function Quest40027:OnSubStart4002715(arg1)
    print("OnSubStart4002715")
end

function Quest40027:OnSubFinish4002715(arg1)
    print("OnSubFinish4002715")
end

function Quest40027:OnSubStart4002716(arg1)
    print("OnSubStart4002716")
end

function Quest40027:OnSubFinish4002716(arg1)
    print("OnSubFinish4002716")
end

function Quest40027:OnSubStart4002717(arg1)
    print("OnSubStart4002717")
end

function Quest40027:OnSubFinish4002717(arg1)
    print("OnSubFinish4002717")
end

function Quest40027:OnSubStart4002718(arg1)
    print("OnSubStart4002718")
end

function Quest40027:OnSubFinish4002718(arg1)
    print("OnSubFinish4002718")
end

return Quest40027
