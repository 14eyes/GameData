require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73080 = class("Quest73080", QuestActorProxy)
Quest73080.defaultAlias = "Quest73080"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73080:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73080:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7308001"] = self.OnSubStart7308001,
        ["7308002"] = self.OnSubStart7308002,
        ["7308003"] = self.OnSubStart7308003,
        ["7308004"] = self.OnSubStart7308004,
        ["7308005"] = self.OnSubStart7308005,
        ["7308006"] = self.OnSubStart7308006
    }
end

function Quest73080:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7308001"] = self.OnSubFinish7308001,
        ["7308002"] = self.OnSubFinish7308002,
        ["7308003"] = self.OnSubFinish7308003,
        ["7308004"] = self.OnSubFinish7308004,
        ["7308005"] = self.OnSubFinish7308005,
        ["7308006"] = self.OnSubFinish7308006
    }
end

function Quest73080:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73080:Start()
    print("Start")
end

function Quest73080:OnDestroy()
    print("OnDestroy")
end

function Quest73080:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73080:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73080:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73080:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73080:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73080:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73080:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73080:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7308003)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7308004)
    end
end

function Quest73080:OnSubStart7308001(arg1)
    print("OnSubStart7308001")
    self:CreateQuestNpc(arg1, npcs.Npc20593Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
end

function Quest73080:OnSubFinish7308001(arg1)
    print("OnSubFinish7308001")
    self:TransmitPlayerByQuestId(7308001, 1)
end

function Quest73080:OnSubStart7308002(arg1)
    print("OnSubStart7308002")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20593Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q73080Trigger", "Actor/Gadget/Q73080Trigger", 70900002, 0, {x = -1187.611, y = 316.608, z = 2789.834}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73080:OnSubFinish7308002(arg1)
    print("OnSubFinish7308002")
    self:ActorDestroy("Q73080Trigger")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20593Data.alias)
end

function Quest73080:OnSubStart7308003(arg1)
    print("OnSubStart7308003")
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
end

function Quest73080:OnSubFinish7308003(arg1)
    print("OnSubFinish7308003")
end

function Quest73080:OnSubStart7308004(arg1)
    print("OnSubStart7308004")
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
end

function Quest73080:OnSubFinish7308004(arg1)
    print("OnSubFinish7308004")
end

function Quest73080:OnSubStart7308005(arg1)
    print("OnSubStart7308005")
    self:DailyNpcSafeHideSelf(npcs.Npc4327Data.alias, 1, true)
end

function Quest73080:OnSubFinish7308005(arg1)
    print("OnSubFinish7308005")
end

function Quest73080:OnSubStart7308006(arg1)
    print("OnSubStart7308006")
end

function Quest73080:OnSubFinish7308006(arg1)
    print("OnSubFinish7308006")
end

return Quest73080
