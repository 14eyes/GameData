require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40026 = class("Quest40026", QuestActorProxy)
Quest40026.defaultAlias = "Quest40026"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40026:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4002601"] = self.OnSubStart4002601,
        ["4002602"] = self.OnSubStart4002602,
        ["4002603"] = self.OnSubStart4002603,
        ["4002604"] = self.OnSubStart4002604,
        ["4002605"] = self.OnSubStart4002605,
        ["4002606"] = self.OnSubStart4002606,
        ["4002625"] = self.OnSubStart4002625,
        ["4002632"] = self.OnSubStart4002632,
        ["4002624"] = self.OnSubStart4002624,
        ["4002607"] = self.OnSubStart4002607,
        ["4002608"] = self.OnSubStart4002608,
        ["4002609"] = self.OnSubStart4002609,
        ["4002622"] = self.OnSubStart4002622,
        ["4002621"] = self.OnSubStart4002621,
        ["4002610"] = self.OnSubStart4002610,
        ["4002611"] = self.OnSubStart4002611,
        ["4002612"] = self.OnSubStart4002612,
        ["4002613"] = self.OnSubStart4002613,
        ["4002617"] = self.OnSubStart4002617,
        ["4002618"] = self.OnSubStart4002618,
        ["4002626"] = self.OnSubStart4002626,
        ["4002627"] = self.OnSubStart4002627,
        ["4002628"] = self.OnSubStart4002628,
        ["4002629"] = self.OnSubStart4002629,
        ["4002616"] = self.OnSubStart4002616,
        ["4002630"] = self.OnSubStart4002630,
        ["4002619"] = self.OnSubStart4002619,
        ["4002620"] = self.OnSubStart4002620,
        ["4002614"] = self.OnSubStart4002614,
        ["4002631"] = self.OnSubStart4002631,
        ["4002615"] = self.OnSubStart4002615,
        ["4002623"] = self.OnSubStart4002623,
        ["4002633"] = self.OnSubStart4002633
    }
end

function Quest40026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4002601"] = self.OnSubFinish4002601,
        ["4002602"] = self.OnSubFinish4002602,
        ["4002603"] = self.OnSubFinish4002603,
        ["4002604"] = self.OnSubFinish4002604,
        ["4002605"] = self.OnSubFinish4002605,
        ["4002606"] = self.OnSubFinish4002606,
        ["4002625"] = self.OnSubFinish4002625,
        ["4002632"] = self.OnSubFinish4002632,
        ["4002624"] = self.OnSubFinish4002624,
        ["4002607"] = self.OnSubFinish4002607,
        ["4002608"] = self.OnSubFinish4002608,
        ["4002609"] = self.OnSubFinish4002609,
        ["4002622"] = self.OnSubFinish4002622,
        ["4002621"] = self.OnSubFinish4002621,
        ["4002610"] = self.OnSubFinish4002610,
        ["4002611"] = self.OnSubFinish4002611,
        ["4002612"] = self.OnSubFinish4002612,
        ["4002613"] = self.OnSubFinish4002613,
        ["4002617"] = self.OnSubFinish4002617,
        ["4002618"] = self.OnSubFinish4002618,
        ["4002626"] = self.OnSubFinish4002626,
        ["4002627"] = self.OnSubFinish4002627,
        ["4002628"] = self.OnSubFinish4002628,
        ["4002629"] = self.OnSubFinish4002629,
        ["4002616"] = self.OnSubFinish4002616,
        ["4002630"] = self.OnSubFinish4002630,
        ["4002619"] = self.OnSubFinish4002619,
        ["4002620"] = self.OnSubFinish4002620,
        ["4002614"] = self.OnSubFinish4002614,
        ["4002631"] = self.OnSubFinish4002631,
        ["4002615"] = self.OnSubFinish4002615,
        ["4002623"] = self.OnSubFinish4002623,
        ["4002633"] = self.OnSubFinish4002633
    }
end

function Quest40026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40026:Start()
    print("Start")
end

function Quest40026:OnDestroy()
    print("OnDestroy")
end

function Quest40026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40026:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12254Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    local actor = actorMgr:GetActor("40026")
    actor:UnSpawn(gadgets.Gadget70710234Data.alias)
    actor:UnSpawn(gadgets.Gadget70710530Data.alias)
    actorMgr:DestroyEntityActor("Q40026Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40026Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40026Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q40026Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q40026Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q40026Trigger5", 3, false)
    actorMgr:DestroyEntityActor("Q40026Trigger6", 3, false)
    actorMgr:DestroyEntityActor("Q40026Trigger9", 3, false)
    actorMgr:DestroyEntityActor("Q4002613Trigger", 3, false)
end

function Quest40026:OnSubStart4002601(arg1)
    print("OnSubStart4002601")
    self:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q40026Trigger", "Actor/Gadget/Q40026Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q40026_follow01").pos, sceneData:GetDummyPoint(3, "Q40026_follow01").rot, true, false, 3)
        arg1:CallDelay(1, function(arg1)
            if arg1:GetQuestVar(4002601, 0) == 0 then
                arg1:NarratorOnlyTaskByData(datas.NarratorWithId_FP01, nil, 40026)
                arg1:SetQuestVarByMainId(0, 1)
            end
        end)
    end)
end

function Quest40026:OnSubFinish4002601(arg1)
    print("OnSubFinish4002601")
end

function Quest40026:OnSubStart4002602(arg1)
    print("OnSubStart4002602")
    actorMgr:CreateActorWithPos("Q40026Trigger1", "Actor/Gadget/Q40026Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q40026_follow02").pos, sceneData:GetDummyPoint(3, "Q40026_follow02").rot, true, false, 3)
end

function Quest40026:OnSubFinish4002602(arg1)
    print("OnSubFinish4002602")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_FP02, nil, 40026)
end

function Quest40026:OnSubStart4002603(arg1)
    print("OnSubStart4002603")
    actorMgr:CreateActorWithPos("Q40026Trigger2", "Actor/Gadget/Q40026Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q40026_follow03").pos, sceneData:GetDummyPoint(3, "Q40026_follow03").rot, true, false, 3)
end

function Quest40026:OnSubFinish4002603(arg1)
    print("OnSubFinish4002603")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_FP03, nil, 40026)
end

function Quest40026:OnSubStart4002604(arg1)
    print("OnSubStart4002604")
    actorMgr:CreateActorWithPos("Q40026Trigger3", "Actor/Gadget/Q40026Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q40026_follow04").pos, sceneData:GetDummyPoint(3, "Q40026_follow04").rot, true, false, 3)
end

function Quest40026:OnSubFinish4002604(arg1)
    print("OnSubFinish4002604")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_FP04, nil, 40026)
end

function Quest40026:OnSubStart4002605(arg1)
    print("OnSubStart4002605")
    self:UnSpawn(gadgets.Gadget70710234Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710234Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710530Data.alias)
    actorMgr:CreateActorWithPos("Q40026Trigger4", "Actor/Gadget/Q40026Trigger4", 70900002, 0, {x = 1012.968, y = 349.4783, z = -647.506}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40026:OnSubFinish4002605(arg1)
    print("OnSubFinish4002605")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710234Data.alias)
    self:UnSpawn(gadgets.Gadget70710530Data.alias)
end

function Quest40026:OnSubStart4002606(arg1)
    print("OnSubStart4002606")
end

function Quest40026:OnSubFinish4002606(arg1)
    print("OnSubFinish4002606")
end

function Quest40026:OnSubStart4002625(arg1)
    print("OnSubStart4002625")
end

function Quest40026:OnSubFinish4002625(arg1)
    print("OnSubFinish4002625")
    self:NarratorOnlyTaskByData(datas.Narrator_4002606)
end

function Quest40026:OnSubStart4002632(arg1)
    print("OnSubStart4002632")
end

function Quest40026:OnSubFinish4002632(arg1)
    print("OnSubFinish4002632")
end

function Quest40026:OnSubStart4002624(arg1)
    print("OnSubStart4002624")
end

function Quest40026:OnSubFinish4002624(arg1)
    print("OnSubFinish4002624")
    self:NarratorOnlyTaskByData(datas.Narrator_4002605)
end

function Quest40026:OnSubStart4002607(arg1)
    print("OnSubStart4002607")
    actorMgr:CreateActorWithPos("Q40026Trigger5", "Actor/Gadget/Q40026Trigger5", 70900002, 0, {x = 1018.444, y = 350.5137, z = -648.922}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40026:OnSubFinish4002607(arg1)
    print("OnSubFinish4002607")
    self:SafeDestroyQuestNpc(npcs.Npc12254Data.alias, 3)
end

function Quest40026:OnSubStart4002608(arg1)
    print("OnSubStart4002608")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 2)
    actorMgr:CreateActorWithPos("Q40026Trigger6", "Actor/Gadget/Q40026Trigger6", 70900002, 0, {x = 962.0214, y = 342.6865, z = -585.8788}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40026:OnSubFinish4002608(arg1)
    print("OnSubFinish4002608")
end

function Quest40026:OnSubStart4002609(arg1)
    print("OnSubStart4002609")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 2)
end

function Quest40026:OnSubFinish4002609(arg1)
    print("OnSubFinish4002609")
    self:NarratorOnlyTaskByData(datas.Narrator_4002609, nil, 40026)
end

function Quest40026:OnSubStart4002622(arg1)
    print("OnSubStart4002622")
end

function Quest40026:OnSubFinish4002622(arg1)
    print("OnSubFinish4002622")
    self:NarratorOnlyTaskByData(datas.Narrator_4002608, nil, 40026)
end

function Quest40026:OnSubStart4002621(arg1)
    print("OnSubStart4002621")
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 1)
end

function Quest40026:OnSubFinish4002621(arg1)
    print("OnSubFinish4002621")
    self:NarratorOnlyTaskByData(datas.Narrator_4002610, nil, 40026)
end

function Quest40026:OnSubStart4002610(arg1)
    print("OnSubStart4002610")
end

function Quest40026:OnSubFinish4002610(arg1)
    print("OnSubFinish4002610")
end

function Quest40026:OnSubStart4002611(arg1)
    print("OnSubStart4002611")
    self:RequestInteraction(npcs.Npc1024Data.alias)
end

function Quest40026:OnSubFinish4002611(arg1)
    print("OnSubFinish4002611")
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
end

function Quest40026:OnSubStart4002612(arg1)
    print("OnSubStart4002612")
    actorMgr:CreateActorWithPos("Q40026Trigger9", "Actor/Gadget/Q40026Trigger9", 70900002, 0, {x = 982.8817, y = 345.267, z = -644.7015}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40026:OnSubFinish4002612(arg1)
    print("OnSubFinish4002612")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
end

function Quest40026:OnSubStart4002613(arg1)
    print("OnSubStart4002613")
    actorMgr:CreateActorWithPos("Q4002613Trigger", "Actor/Gadget/Q4002613Trigger", 70900002, 0, {x = 1200.97, y = 374.4326, z = -790.4737}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40026:OnSubFinish4002613(arg1)
    print("OnSubFinish4002613")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
end

function Quest40026:OnSubStart4002617(arg1)
    print("OnSubStart4002617")
end

function Quest40026:OnSubFinish4002617(arg1)
    print("OnSubFinish4002617")
end

function Quest40026:OnSubStart4002618(arg1)
    print("OnSubStart4002618")
end

function Quest40026:OnSubFinish4002618(arg1)
    print("OnSubFinish4002618")
end

function Quest40026:OnSubStart4002626(arg1)
    print("OnSubStart4002626")
end

function Quest40026:OnSubFinish4002626(arg1)
    print("OnSubFinish4002626")
end

function Quest40026:OnSubStart4002627(arg1)
    print("OnSubStart4002627")
end

function Quest40026:OnSubFinish4002627(arg1)
    print("OnSubFinish4002627")
end

function Quest40026:OnSubStart4002628(arg1)
    print("OnSubStart4002628")
end

function Quest40026:OnSubFinish4002628(arg1)
    print("OnSubFinish4002628")
end

function Quest40026:OnSubStart4002629(arg1)
    print("OnSubStart4002629")
end

function Quest40026:OnSubFinish4002629(arg1)
    print("OnSubFinish4002629")
    self:NarratorOnlyTaskByData(datas.Narrator_4002607)
end

function Quest40026:OnSubStart4002616(arg1)
    print("OnSubStart4002616")
end

function Quest40026:OnSubFinish4002616(arg1)
    print("OnSubFinish4002616")
end

function Quest40026:OnSubStart4002630(arg1)
    print("OnSubStart4002630")
    self:CallDelay(0.5, function(arg1)
        arg1:FinishQuestID(false, 4002630)
    end)

    self:ShowBlackScreen(0.3, 0.5, 0.3, nil, nil, nil, "", false, true)
end

function Quest40026:OnSubFinish4002630(arg1)
    print("OnSubFinish4002630")
end

function Quest40026:OnSubStart4002619(arg1)
    print("OnSubStart4002619")
end

function Quest40026:OnSubFinish4002619(arg1)
    print("OnSubFinish4002619")
end

function Quest40026:OnSubStart4002620(arg1)
    print("OnSubStart4002620")
    self:CallDelay(0.5, function(arg1)
        arg1:FinishQuestID(false, 4002620)
    end)
end

function Quest40026:OnSubFinish4002620(arg1)
    print("OnSubFinish4002620")
end

function Quest40026:OnSubStart4002614(arg1)
    print("OnSubStart4002614")
    self:CallDelay(0.5, function(arg1)
        arg1:FinishQuestID(false, 4002614)
    end)
end

function Quest40026:OnSubFinish4002614(arg1)
    print("OnSubFinish4002614")
end

function Quest40026:OnSubStart4002631(arg1)
    print("OnSubStart4002631")
    self:CallDelay(0.5, function(arg1)
        arg1:FinishQuestID(false, 4002631)
    end)

    self:ShowBlackScreen(0.3, 0.5, 0.3, nil, nil, nil, "", false, true)
end

function Quest40026:OnSubFinish4002631(arg1)
    print("OnSubFinish4002631")
end

function Quest40026:OnSubStart4002615(arg1)
    print("OnSubStart4002615")
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc1018Data.alias)
    end)
end

function Quest40026:OnSubFinish4002615(arg1)
    print("OnSubFinish4002615")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:CallDelay(6, function(arg1)
            actorUtils.ShowActivityPage(2009)
        end)
    end)
end

function Quest40026:OnSubStart4002623(arg1)
    print("OnSubStart4002623")
end

function Quest40026:OnSubFinish4002623(arg1)
    print("OnSubFinish4002623")
end

function Quest40026:OnSubStart4002633(arg1)
    print("OnSubStart4002633")
end

function Quest40026:OnSubFinish4002633(arg1)
    print("OnSubFinish4002633")
end

return Quest40026
