require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23000 = class("Quest23000", QuestActorProxy)
Quest23000.defaultAlias = "Quest23000"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2300001"] = self.OnSubStart2300001,
        ["2300002"] = self.OnSubStart2300002,
        ["2300003"] = self.OnSubStart2300003,
        ["2300004"] = self.OnSubStart2300004
    }
end

function Quest23000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2300001"] = self.OnSubFinish2300001,
        ["2300002"] = self.OnSubFinish2300002,
        ["2300003"] = self.OnSubFinish2300003,
        ["2300004"] = self.OnSubFinish2300004
    }
end

function Quest23000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23000:Start()
    print("Start")
end

function Quest23000:OnDestroy()
    print("OnDestroy")
end

function Quest23000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23000:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4003Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4003Data.alias, 1074)
    self:SafeDestroyQuestNpc(npcs.Npc4004Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4000Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4001Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4005Data.alias, 3)
    actorMgr:DestroyEntityActor("Q23000Trigger", 1074, false)
end

function Quest23000:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23000:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:SetQuestVar(2300001, 0, 0)
    end

    if arg1 == 2 then
        self:SetQuestVar(2300001, 0, 1)
    end

    if arg1 == 3 then
        self:SetQuestVar(2300001, 0, 2)
    end

    if arg1 == 4 then
        local n = self:GetQuestVar(2300001, 1) + 1
        self:SetQuestVar(2300001, 1, n)
    end
end

function Quest23000:OnSubStart2300001(arg1)
    print("OnSubStart2300001")
    self:CreateQuestNpc(arg1, npcs.Npc4003Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4003Data.alias):DoFreeStyle(1160, true, 1190, true, true, false)
    self:SetQuestVarByMainId(0, 0)
    self:SetQuestVarByMainId(1, 0)
end

function Quest23000:OnSubFinish2300001(arg1)
    print("OnSubFinish2300001")
    self:ActionSafeCall(function(arg1)
        arg1:NpcDestroyWithBlackscreen(3, npcs.Npc4003Data.alias)
    end)
end

function Quest23000:OnSubStart2300002(arg1)
    print("OnSubStart2300002")
end

function Quest23000:OnSubFinish2300002(arg1)
    print("OnSubFinish2300002")
end

function Quest23000:OnSubStart2300003(arg1)
    print("OnSubStart2300003")
    self:ActionSafeCall(function(arg1)
        arg1:LevelLoadFinishSafeCall(function(arg1)
            actorMgr:CreateActorWithPos("Q23000Trigger", "Actor/Gadget/Q23000Trigger", 70900002, 0, {x = 2.738, y = -0.182, z = 8.535}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1074)
        end)
    end)
end

function Quest23000:OnSubFinish2300003(arg1)
    print("OnSubFinish2300003")
end

function Quest23000:OnSubStart2300004(arg1)
    print("OnSubStart2300004")
    self:CreateQuestNpc(arg1, npcs.Npc4003Data.id, 0)
    self:RequestInteraction(npcs.Npc4003Data.alias)
end

function Quest23000:OnSubFinish2300004(arg1)
    print("OnSubFinish2300004")
    self:NpcDestroyWithBlackscreen(1074, npcs.Npc4003Data.alias)
end

return Quest23000
