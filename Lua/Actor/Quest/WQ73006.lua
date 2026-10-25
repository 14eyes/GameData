require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73006 = class("Quest73006", QuestActorProxy)
Quest73006.defaultAlias = "Quest73006"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73006:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7300601"] = self.OnSubStart7300601,
        ["7300602"] = self.OnSubStart7300602,
        ["7300603"] = self.OnSubStart7300603,
        ["7300604"] = self.OnSubStart7300604,
        ["7300605"] = self.OnSubStart7300605,
        ["7300614"] = self.OnSubStart7300614,
        ["7300606"] = self.OnSubStart7300606,
        ["7300612"] = self.OnSubStart7300612,
        ["7300607"] = self.OnSubStart7300607,
        ["7300608"] = self.OnSubStart7300608,
        ["7300609"] = self.OnSubStart7300609,
        ["7300610"] = self.OnSubStart7300610,
        ["7300613"] = self.OnSubStart7300613,
        ["7300611"] = self.OnSubStart7300611
    }
end

function Quest73006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7300601"] = self.OnSubFinish7300601,
        ["7300602"] = self.OnSubFinish7300602,
        ["7300603"] = self.OnSubFinish7300603,
        ["7300604"] = self.OnSubFinish7300604,
        ["7300605"] = self.OnSubFinish7300605,
        ["7300614"] = self.OnSubFinish7300614,
        ["7300606"] = self.OnSubFinish7300606,
        ["7300612"] = self.OnSubFinish7300612,
        ["7300607"] = self.OnSubFinish7300607,
        ["7300608"] = self.OnSubFinish7300608,
        ["7300609"] = self.OnSubFinish7300609,
        ["7300610"] = self.OnSubFinish7300610,
        ["7300613"] = self.OnSubFinish7300613,
        ["7300611"] = self.OnSubFinish7300611
    }
end

function Quest73006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73006:Start()
    print("Start")
end

function Quest73006:OnDestroy()
    print("OnDestroy")
end

function Quest73006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73006:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73006:CustmiseFunction()
    actorUtils.FinishQuestID(false, 0)
end

function Quest73006:OnSubStart7300601(arg1)
    print("OnSubStart7300601")
end

function Quest73006:OnSubFinish7300601(arg1)
    print("OnSubFinish7300601")
end

function Quest73006:OnSubStart7300602(arg1)
    print("OnSubStart7300602")
end

function Quest73006:OnSubFinish7300602(arg1)
    print("OnSubFinish7300602")
end

function Quest73006:OnSubStart7300603(arg1)
    print("OnSubStart7300603")
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 1)
end

function Quest73006:OnSubFinish7300603(arg1)
    print("OnSubFinish7300603")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
    actorUtils.FinishQuestID(false, 7300604)
end

function Quest73006:OnSubStart7300604(arg1)
    print("OnSubStart7300604")
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 1)
end

function Quest73006:OnSubFinish7300604(arg1)
    print("OnSubFinish7300604")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
    actorUtils.FinishQuestID(false, 7300603)
end

function Quest73006:OnSubStart7300605(arg1)
    print("OnSubStart7300605")
end

function Quest73006:OnSubFinish7300605(arg1)
    print("OnSubFinish7300605")
end

function Quest73006:OnSubStart7300614(arg1)
    print("OnSubStart7300614")
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 1)
end

function Quest73006:OnSubFinish7300614(arg1)
    print("OnSubFinish7300614")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
end

function Quest73006:OnSubStart7300606(arg1)
    print("OnSubStart7300606")
end

function Quest73006:OnSubFinish7300606(arg1)
    print("OnSubFinish7300606")
end

function Quest73006:OnSubStart7300612(arg1)
    print("OnSubStart7300612")
end

function Quest73006:OnSubFinish7300612(arg1)
    print("OnSubFinish7300612")
end

function Quest73006:OnSubStart7300607(arg1)
    print("OnSubStart7300607")
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 1)
end

function Quest73006:OnSubFinish7300607(arg1)
    print("OnSubFinish7300607")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
end

function Quest73006:OnSubStart7300608(arg1)
    print("OnSubStart7300608")
end

function Quest73006:OnSubFinish7300608(arg1)
    print("OnSubFinish7300608")
end

function Quest73006:OnSubStart7300609(arg1)
    print("OnSubStart7300609")
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 1)
end

function Quest73006:OnSubFinish7300609(arg1)
    print("OnSubFinish7300609")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
end

function Quest73006:OnSubStart7300610(arg1)
    print("OnSubStart7300610")
end

function Quest73006:OnSubFinish7300610(arg1)
    print("OnSubFinish7300610")
end

function Quest73006:OnSubStart7300613(arg1)
    print("OnSubStart7300613")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, function(arg1)
        actorUtils.FinishQuestID(false, 7300613)
    end, nil, "", false, true)
end

function Quest73006:OnSubFinish7300613(arg1)
    print("OnSubFinish7300613")
end

function Quest73006:OnSubStart7300611(arg1)
    print("OnSubStart7300611")
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 1)
end

function Quest73006:OnSubFinish7300611(arg1)
    print("OnSubFinish7300611")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
end

return Quest73006
