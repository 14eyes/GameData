require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73056 = class("Quest73056", QuestActorProxy)
Quest73056.defaultAlias = "Quest73056"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73056:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73056:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7305601"] = self.OnSubStart7305601,
        ["7305613"] = self.OnSubStart7305613,
        ["7305606"] = self.OnSubStart7305606,
        ["7305607"] = self.OnSubStart7305607,
        ["7305609"] = self.OnSubStart7305609,
        ["7305608"] = self.OnSubStart7305608,
        ["7305610"] = self.OnSubStart7305610,
        ["7305612"] = self.OnSubStart7305612,
        ["7305615"] = self.OnSubStart7305615,
        ["7305614"] = self.OnSubStart7305614,
        ["7305602"] = self.OnSubStart7305602,
        ["7305603"] = self.OnSubStart7305603,
        ["7305611"] = self.OnSubStart7305611,
        ["7305604"] = self.OnSubStart7305604,
        ["7305605"] = self.OnSubStart7305605
    }
end

function Quest73056:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7305601"] = self.OnSubFinish7305601,
        ["7305613"] = self.OnSubFinish7305613,
        ["7305606"] = self.OnSubFinish7305606,
        ["7305607"] = self.OnSubFinish7305607,
        ["7305609"] = self.OnSubFinish7305609,
        ["7305608"] = self.OnSubFinish7305608,
        ["7305610"] = self.OnSubFinish7305610,
        ["7305612"] = self.OnSubFinish7305612,
        ["7305615"] = self.OnSubFinish7305615,
        ["7305614"] = self.OnSubFinish7305614,
        ["7305602"] = self.OnSubFinish7305602,
        ["7305603"] = self.OnSubFinish7305603,
        ["7305611"] = self.OnSubFinish7305611,
        ["7305604"] = self.OnSubFinish7305604,
        ["7305605"] = self.OnSubFinish7305605
    }
end

function Quest73056:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73056:Start()
    print("Start")
end

function Quest73056:OnDestroy()
    print("OnDestroy")
end

function Quest73056:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73056:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73056:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73056:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73056:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73056:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest73056:OnSubStart7305601(arg1)
    print("OnSubStart7305601")
    self:CreateQuestNpc(arg1, npcs.Npc20744Data.id, 1)
end

function Quest73056:OnSubFinish7305601(arg1)
    print("OnSubFinish7305601")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20744Data.alias)
end

function Quest73056:OnSubStart7305613(arg1)
    print("OnSubStart7305613")
    actorMgr:CreateActorWithPos("Q7305613Trigger", "Actor/Gadget/Q7305613Trigger", 70900002, 0, {x = 381.904, y = 204.448, z = 2323.821}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73056:OnSubFinish7305613(arg1)
    print("OnSubFinish7305613")
end

function Quest73056:OnSubStart7305606(arg1)
    print("OnSubStart7305606")
    self:CreateQuestNpc(arg1, npcs.Npc20744Data.id, 1)
end

function Quest73056:OnSubFinish7305606(arg1)
    print("OnSubFinish7305606")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20744Data.alias)
end

function Quest73056:OnSubStart7305607(arg1)
    print("OnSubStart7305607")
end

function Quest73056:OnSubFinish7305607(arg1)
    print("OnSubFinish7305607")
end

function Quest73056:OnSubStart7305609(arg1)
    print("OnSubStart7305609")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20744Data.id, 1, npcs.Npc20744Data.alias)
end

function Quest73056:OnSubFinish7305609(arg1)
    print("OnSubFinish7305609")
end

function Quest73056:OnSubStart7305608(arg1)
    print("OnSubStart7305608")
end

function Quest73056:OnSubFinish7305608(arg1)
    print("OnSubFinish7305608")
end

function Quest73056:OnSubStart7305610(arg1)
    print("OnSubStart7305610")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20744Data.id, 1, npcs.Npc20744Data.alias)
end

function Quest73056:OnSubFinish7305610(arg1)
    print("OnSubFinish7305610")
end

function Quest73056:OnSubStart7305612(arg1)
    print("OnSubStart7305612")
end

function Quest73056:OnSubFinish7305612(arg1)
    print("OnSubFinish7305612")
end

function Quest73056:OnSubStart7305615(arg1)
    print("OnSubStart7305615")
end

function Quest73056:OnSubFinish7305615(arg1)
    print("OnSubFinish7305615")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest73056:OnSubStart7305614(arg1)
    print("OnSubStart7305614")
    actorMgr:CreateActorWithPos("Q7305614Trigger", "Actor/Gadget/Q7305614Trigger", 70900002, 0, {x = 581.051, y = 135.171, z = 2567.851}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73056:OnSubFinish7305614(arg1)
    print("OnSubFinish7305614")
end

function Quest73056:OnSubStart7305602(arg1)
    print("OnSubStart7305602")
    self:CreateQuestNpc(arg1, npcs.Npc20744Data.id, 1)
end

function Quest73056:OnSubFinish7305602(arg1)
    print("OnSubFinish7305602")
end

function Quest73056:OnSubStart7305603(arg1)
    print("OnSubStart7305603")
    self:RequestInteraction(npcs.Npc20744Data.alias)
end

function Quest73056:OnSubFinish7305603(arg1)
    print("OnSubFinish7305603")
end

function Quest73056:OnSubStart7305611(arg1)
    print("OnSubStart7305611")
    self:CreateQuestNpc(arg1, npcs.Npc20744Data.id, 1)
end

function Quest73056:OnSubFinish7305611(arg1)
    print("OnSubFinish7305611")
    self:NpcDestroyWithDither(npcs.Npc20744Data.alias, 3)
end

function Quest73056:OnSubStart7305604(arg1)
    print("OnSubStart7305604")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20578Data.id, 1, npcs.Npc20578Data.alias)
end

function Quest73056:OnSubFinish7305604(arg1)
    print("OnSubFinish7305604")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73056:OnSubStart7305605(arg1)
    print("OnSubStart7305605")
end

function Quest73056:OnSubFinish7305605(arg1)
    print("OnSubFinish7305605")
end

return Quest73056
