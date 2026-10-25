require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73026 = class("Quest73026", QuestActorProxy)
Quest73026.defaultAlias = "Quest73026"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73026:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7302604"] = self.OnSubStart7302604,
        ["7302605"] = self.OnSubStart7302605,
        ["7302606"] = self.OnSubStart7302606,
        ["7302603"] = self.OnSubStart7302603,
        ["7302607"] = self.OnSubStart7302607,
        ["7302616"] = self.OnSubStart7302616,
        ["7302615"] = self.OnSubStart7302615,
        ["7302608"] = self.OnSubStart7302608,
        ["7302609"] = self.OnSubStart7302609,
        ["7302614"] = self.OnSubStart7302614,
        ["7302610"] = self.OnSubStart7302610,
        ["7302611"] = self.OnSubStart7302611,
        ["7302612"] = self.OnSubStart7302612,
        ["7302613"] = self.OnSubStart7302613,
        ["7302601"] = self.OnSubStart7302601,
        ["7302602"] = self.OnSubStart7302602
    }
end

function Quest73026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7302604"] = self.OnSubFinish7302604,
        ["7302605"] = self.OnSubFinish7302605,
        ["7302606"] = self.OnSubFinish7302606,
        ["7302603"] = self.OnSubFinish7302603,
        ["7302607"] = self.OnSubFinish7302607,
        ["7302616"] = self.OnSubFinish7302616,
        ["7302615"] = self.OnSubFinish7302615,
        ["7302608"] = self.OnSubFinish7302608,
        ["7302609"] = self.OnSubFinish7302609,
        ["7302614"] = self.OnSubFinish7302614,
        ["7302610"] = self.OnSubFinish7302610,
        ["7302611"] = self.OnSubFinish7302611,
        ["7302612"] = self.OnSubFinish7302612,
        ["7302613"] = self.OnSubFinish7302613,
        ["7302601"] = self.OnSubFinish7302601,
        ["7302602"] = self.OnSubFinish7302602
    }
end

function Quest73026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73026:Start()
    print("Start")
end

function Quest73026:OnDestroy()
    print("OnDestroy")
end

function Quest73026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73026:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20645Data.alias, 3)
    self:LightNotifyTo(npcs.Npc20601Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q7302611Trigger", 3, false)
end

function Quest73026:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("Accept messages from ability system")
    if arg1.valueString == "TitanDriveFinish" then
    end
end

function Quest73026:OnSubStart7302604(arg1)
    print("OnSubStart7302604")
end

function Quest73026:OnSubFinish7302604(arg1)
    print("OnSubFinish7302604")
end

function Quest73026:OnSubStart7302605(arg1)
    print("OnSubStart7302605")
    self:CreateQuestNpc(arg1, npcs.Npc20645Data.id, 1)
    self:PlayCutsceneIndex(7302605, function(arg1)
        arg1:RequestInteraction(npcs.Npc20645Data.alias)
    end, nil, nil, false)
end

function Quest73026:OnSubFinish7302605(arg1)
    print("OnSubFinish7302605")
end

function Quest73026:OnSubStart7302606(arg1)
    print("OnSubStart7302606")
    self:CreateQuestNpc(arg1, npcs.Npc20645Data.id, 1)
end

function Quest73026:OnSubFinish7302606(arg1)
    print("OnSubFinish7302606")
end

function Quest73026:OnSubStart7302603(arg1)
    print("OnSubStart7302603")
    self:CreateQuestNpc(arg1, npcs.Npc20645Data.id, 1)
    self:RequestInteraction(npcs.Npc20645Data.alias)
end

function Quest73026:OnSubFinish7302603(arg1)
    print("OnSubFinish7302603")
end

function Quest73026:OnSubStart7302607(arg1)
    print("OnSubStart7302607")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20645Data.id, 2)
end

function Quest73026:OnSubFinish7302607(arg1)
    print("OnSubFinish7302607")
    self:SafeDestroyQuestNpc(npcs.Npc20645Data.alias, 3)
end

function Quest73026:OnSubStart7302616(arg1)
    print("OnSubStart7302616")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    self:PlayCutsceneIndex(7302607, function(arg1)
        actorUtils.FinishQuestID(false, 7302616)
    end, nil, nil, false)
end

function Quest73026:OnSubFinish7302616(arg1)
    print("OnSubFinish7302616")
end

function Quest73026:OnSubStart7302615(arg1)
    print("OnSubStart7302615")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73026:OnSubFinish7302615(arg1)
    print("OnSubFinish7302615")
end

function Quest73026:OnSubStart7302608(arg1)
    print("OnSubStart7302608")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73026:OnSubFinish7302608(arg1)
    print("OnSubFinish7302608")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest73026:OnSubStart7302609(arg1)
    print("OnSubStart7302609")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73026:OnSubFinish7302609(arg1)
    print("OnSubFinish7302609")
end

function Quest73026:OnSubStart7302614(arg1)
    print("OnSubStart7302614")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73026:OnSubFinish7302614(arg1)
    print("OnSubFinish7302614")
    self:SafeDestroyQuestNpc(npcs.Npc20601Data.alias, 3)
end

function Quest73026:OnSubStart7302610(arg1)
    print("OnSubStart7302610")
end

function Quest73026:OnSubFinish7302610(arg1)
    print("OnSubFinish7302610")
    self:PlayCutsceneIndex(7302610, nil, nil, nil, false)
end

function Quest73026:OnSubStart7302611(arg1)
    print("OnSubStart7302611")
    self:CreateQuestNpc(arg1, npcs.Npc20645Data.id, 1)
    actorMgr:CreateActorWithPos("Q7302611Trigger", "Actor/Gadget/Q7302611Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_NPCCOCKPIT").pos, sceneData:GetDummyPoint(3, "WQL1_NPCCOCKPIT").rot, true, false, 3)
end

function Quest73026:OnSubFinish7302611(arg1)
    print("OnSubFinish7302611")
    self:SafeDestroyQuestNpc(npcs.Npc20645Data.alias, 3)
end

function Quest73026:OnSubStart7302612(arg1)
    print("OnSubStart7302612")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73026:OnSubFinish7302612(arg1)
    print("OnSubFinish7302612")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(7302612, function(arg1)
            arg1:TransmitPlayerByQuestId(7302612, 1)
        end, nil, nil, false)
    end)
end

function Quest73026:OnSubStart7302613(arg1)
    print("OnSubStart7302613")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73026:OnSubFinish7302613(arg1)
    print("OnSubFinish7302613")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73026)
end

function Quest73026:OnSubStart7302601(arg1)
    print("OnSubStart7302601")
end

function Quest73026:OnSubFinish7302601(arg1)
    print("OnSubFinish7302601")
end

function Quest73026:OnSubStart7302602(arg1)
    print("OnSubStart7302602")
end

function Quest73026:OnSubFinish7302602(arg1)
    print("OnSubFinish7302602")
end

return Quest73026
