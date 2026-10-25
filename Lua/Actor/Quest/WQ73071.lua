require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73071 = class("Quest73071", QuestActorProxy)
Quest73071.defaultAlias = "Quest73071"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73071:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73071:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7307106"] = self.OnSubStart7307106,
        ["7307107"] = self.OnSubStart7307107,
        ["7307101"] = self.OnSubStart7307101,
        ["7307102"] = self.OnSubStart7307102,
        ["7307103"] = self.OnSubStart7307103,
        ["7307104"] = self.OnSubStart7307104,
        ["7307108"] = self.OnSubStart7307108,
        ["7307105"] = self.OnSubStart7307105
    }
end

function Quest73071:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7307106"] = self.OnSubFinish7307106,
        ["7307107"] = self.OnSubFinish7307107,
        ["7307101"] = self.OnSubFinish7307101,
        ["7307102"] = self.OnSubFinish7307102,
        ["7307103"] = self.OnSubFinish7307103,
        ["7307104"] = self.OnSubFinish7307104,
        ["7307108"] = self.OnSubFinish7307108,
        ["7307105"] = self.OnSubFinish7307105
    }
end

function Quest73071:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73071:Start()
    print("Start")
end

function Quest73071:OnDestroy()
    print("OnDestroy")
end

function Quest73071:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73071:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73071:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73071:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73071:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73071:OnSubStart7307106(arg1)
    print("OnSubStart7307106")
    actorMgr:CreateActorWithPos("Q73071Trigger", "Actor/Gadget/Q73071Trigger", 70900002, 0, {x = -430.145, y = 121.78, z = 3925.022}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73071:OnSubFinish7307106(arg1)
    print("OnSubFinish7307106")
end

function Quest73071:OnSubStart7307107(arg1)
    print("OnSubStart7307107")
    self:NpcCreate(arg1, npcs.Npc20749Data.id, 1)
    actorMgr:CreateActorWithPos("Q7307103Trigger", "Actor/Gadget/Q7307103Trigger", 70900002, 0, {x = -428.88, y = 122.106, z = 3926.163}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73071:OnSubFinish7307107(arg1)
    print("OnSubFinish7307107")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20749Data.alias)
end

function Quest73071:OnSubStart7307101(arg1)
    print("OnSubStart7307101")
    self:NpcCreate(arg1, npcs.Npc20749Data.id, 1)
    actorMgr:CreateActorWithPos("Q7307103Trigger", "Actor/Gadget/Q7307103Trigger", 70900002, 0, {x = -428.88, y = 122.106, z = 3926.163}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73071:OnSubFinish7307101(arg1)
    print("OnSubFinish7307101")
end

function Quest73071:OnSubStart7307102(arg1)
    print("OnSubStart7307102")
    self:NpcCreate(arg1, npcs.Npc20749Data.id, 1)
end

function Quest73071:OnSubFinish7307102(arg1)
    print("OnSubFinish7307102")
end

function Quest73071:OnSubStart7307103(arg1)
    print("OnSubStart7307103")
end

function Quest73071:OnSubFinish7307103(arg1)
    print("OnSubFinish7307103")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20749Data.alias)
end

function Quest73071:OnSubStart7307104(arg1)
    print("OnSubStart7307104")
end

function Quest73071:OnSubFinish7307104(arg1)
    print("OnSubFinish7307104")
    self:ShowBlackScreen(0.5, 1, 1, nil, nil, nil, "", false, true)
end

function Quest73071:OnSubStart7307108(arg1)
    print("OnSubStart7307108")
    self:NpcCreate(arg1, npcs.Npc20749Data.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20749Data.alias):ShowNpcWithLevelTagId(39, false)
        actorMgr:CreateActorWithPos("Q73071Trigger_08", "Actor/Gadget/Q73071Trigger_08", 70900002, 0, {x = -217.82, y = 216.637, z = 3638.157}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest73071:OnSubFinish7307108(arg1)
    print("OnSubFinish7307108")
    self:ShowBlackScreen(0.5, 1, 1, nil, nil, nil, "", false, true)
end

function Quest73071:OnSubStart7307105(arg1)
    print("OnSubStart7307105")
    self:NpcCreate(arg1, npcs.Npc20749Data.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20749Data.alias):ShowNpcWithLevelTagId(39, false)
        actorMgr:CreateActorWithPos("Q73071Trigger_01", "Actor/Gadget/Q73071Trigger_01", 70900002, 0, {x = -217.187, y = 209.837, z = 3661.675}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest73071:OnSubFinish7307105(arg1)
    print("OnSubFinish7307105")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20749Data.alias)
end

return Quest73071
