require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70802 = class("Quest70802", QuestActorProxy)
Quest70802.defaultAlias = "Quest70802"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70802:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70802:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7080201"] = self.OnSubStart7080201,
        ["7080202"] = self.OnSubStart7080202,
        ["7080203"] = self.OnSubStart7080203,
        ["7080204"] = self.OnSubStart7080204,
        ["7080205"] = self.OnSubStart7080205,
        ["7080206"] = self.OnSubStart7080206,
        ["7080207"] = self.OnSubStart7080207,
        ["7080208"] = self.OnSubStart7080208
    }
end

function Quest70802:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7080201"] = self.OnSubFinish7080201,
        ["7080202"] = self.OnSubFinish7080202,
        ["7080203"] = self.OnSubFinish7080203,
        ["7080204"] = self.OnSubFinish7080204,
        ["7080205"] = self.OnSubFinish7080205,
        ["7080206"] = self.OnSubFinish7080206,
        ["7080207"] = self.OnSubFinish7080207,
        ["7080208"] = self.OnSubFinish7080208
    }
end

function Quest70802:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70802:Start()
    print("Start")
end

function Quest70802:OnDestroy()
    print("OnDestroy")
end

function Quest70802:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70802:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70802:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70802:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest70802:OnSubStart7080201(arg1)
    print("OnSubStart7080201")
end

function Quest70802:OnSubFinish7080201(arg1)
    print("OnSubFinish7080201")
end

function Quest70802:OnSubStart7080202(arg1)
    print("OnSubStart7080202")
    self:CreateQuestNpc(arg1, npcs.Npc1668Data.id, 1)
end

function Quest70802:OnSubFinish7080202(arg1)
    print("OnSubFinish7080202")
end

function Quest70802:OnSubStart7080203(arg1)
    print("OnSubStart7080203")
    self:CreateQuestNpc(arg1, npcs.Npc1409Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1577Data.id, 2)
    actorMgr:CreateActorWithPos("Q7080203Trigger", "Actor/Gadget/Q7080203Trigger", 70900002, 0, {x = 2186.281, y = 224.0831, z = -835.551}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest70802:OnSubFinish7080203(arg1)
    print("OnSubFinish7080203")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.3, 1, 0.3, function(arg1)
            arg1:SafeDestroyQuestNpc(npcs.Npc1577Data.alias, 3)
        end, nil, nil, "", false, true)
    end)
end

function Quest70802:OnSubStart7080204(arg1)
    print("OnSubStart7080204")
    self:DailyNpcSafeHideSelf(npcs.Npc1577Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7080204Trigger", "Actor/Gadget/Q7080204Trigger", 70900002, 0, {x = 1085.211, y = 345.8581, z = -1074.588}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest70802:OnSubFinish7080204(arg1)
    print("OnSubFinish7080204")
    self:NarratorOnlyTask({
        {dialogID = 708029901, duration = 3},
        {dialogID = 708029902, duration = 3},
        {dialogID = 708029903, duration = 3}
    })
end

function Quest70802:OnSubStart7080205(arg1)
    print("OnSubStart7080205")
    self:DailyNpcSafeHideSelf(npcs.Npc1577Data.alias, 1, true)
end

function Quest70802:OnSubFinish7080205(arg1)
    print("OnSubFinish7080205")
end

function Quest70802:OnSubStart7080206(arg1)
    print("OnSubStart7080206")
    self:CreateQuestNpc(arg1, npcs.Npc1577Data.id, 1)
    self:CallDelay(2, function(arg1)
        arg1:RequestInteraction(npcs.Npc1577Data.alias)
    end)
end

function Quest70802:OnSubFinish7080206(arg1)
    print("OnSubFinish7080206")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.3, 1, 0.3, function(arg1)
            arg1:SafeDestroyQuestNpc(npcs.Npc1577Data.alias, 3)
        end, nil, nil, "", false, true)
    end)
end

function Quest70802:OnSubStart7080207(arg1)
    print("OnSubStart7080207")
end

function Quest70802:OnSubFinish7080207(arg1)
    print("OnSubFinish7080207")
end

function Quest70802:OnSubStart7080208(arg1)
    print("OnSubStart7080208")
end

function Quest70802:OnSubFinish7080208(arg1)
    print("OnSubFinish7080208")
    self:SafeDestroyQuestNpc(npcs.Npc1409Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "", false, true)
        arg1:CallDelay(0.6, function(arg1)
            arg1:SafeDestroyQuestNpc(npcs.Npc1668Data.alias, 3)
        end)
    end)
end

return Quest70802
